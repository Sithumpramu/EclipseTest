package CustomerOrder;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");

		boolean isDeliveryDetailsInserted;
		boolean isOrderDetailsInserted;
		boolean isCartItemsDeleted = true;
		boolean isItemCountReduced;

		isDeliveryDetailsInserted = OrderDBUtil.insertDeliveryDetails(name, email, phone, address);

		if (isDeliveryDetailsInserted == true) {

			List<cart> Cartlist = shoppingCartDBUtil.getCartItems(1);
			String commaSeparatedIds = "";
			BigDecimal total = new BigDecimal("0");

			for (cart cartItem : Cartlist) {
				if (!commaSeparatedIds.isEmpty()) {
					commaSeparatedIds += ","; // Add a comma before each ID (except the first one)
				}
				commaSeparatedIds += cartItem.getItemId();
				total = total.add(cartItem.getPrice());
				isItemCountReduced = OrderDBUtil.updateStockLevel(cartItem.getItemId(), cartItem.getQuantity());
			}

			isOrderDetailsInserted = OrderDBUtil.insertOrderDetails(commaSeparatedIds, total, 1);

			if (isOrderDetailsInserted) {
				isCartItemsDeleted = OrderDBUtil.deleteCartDetails(1);
			}

			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		List<OrderDetails> Olist = OrderDBUtil.getOrderDetails();

		List<completeOrderDetails> completeOrderDetailsList = new ArrayList<>();

		for (OrderDetails orderDetails : Olist) {
			completeOrderDetails completeOrder = new completeOrderDetails(0, null, new BigDecimal("0"), 0);
			completeOrder.setOrderId(orderDetails.getOrderId());
			completeOrder.setTotalPrice(orderDetails.getTotalPrice());
			completeOrder.setDeliveryID(orderDetails.getDeliveryID());

			List<Item> items = new ArrayList<>();
			String[] itemIds = orderDetails.getItemIds().split(",");

			for (String itemIdStr : itemIds) {
				int itemId = Integer.parseInt(itemIdStr);
				Item item = OrderDBUtil.getItemById(itemId);
				if (item != null) {
					items.add(item);
				}
			}

			completeOrder.setItemIds(items);
			completeOrderDetailsList.add(completeOrder);
		}

		session.setAttribute("Orderlist", completeOrderDetailsList);
		RequestDispatcher dis = request.getRequestDispatcher("myorders.jsp");
		dis.forward(request, response);

	}
}
