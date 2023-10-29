<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="css/Myprofile.css">
        <link rel="stylesheet" href="css/stylesJAVA.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/login.css">
		<title>Delete account</title>
</head>
<body>
	<%
    		String id  = request.getParameter("id");
    		String fname = request.getParameter("fname");
    		String lname = request.getParameter("lname");
    		String Email = request.getParameter("Email");
    		String mobile = request.getParameter("mobile");
    		String password = request.getParameter("password");
    	
    %>

<div class="wrapper">
        
            <div class="edit-profile">
                <form action="delete" method="post" >
                    <h2><b>Customer Account Delete</b></h2>
                    <table>
                    	<tr id="space">
                            <td colspan="2"><label>User ID </label> <br></td>
                        </tr>
                        <tr id="box">
                            <td colspan="2"><input type="text" name="id" id="text2" placeholder="User ID" value="<%=id %>" readonly ></td>
                        </tr>
                        <tr>
                            <td><label>First Name</label></td>
                            <td><label>Last Name</label></td>
                        </tr>
                        <tr id="box">
                            <td><input type="text" id="text2" name="fname" placeholder="First Name" value="<%=fname %>" readonly></td>
                            <td><input type="text" id="text2" name="lname" placeholder="Last Name" value="<%=lname %>" readonly></td>
                        </tr>
                        <tr id="space">
                            <td colspan="2"><label>Email </label> <br></td>
                        </tr>
                        <tr id="box">
                            <td colspan="2"><input type="Email" name="Email" id="text2" placeholder="example@gmail.com" value="<%=Email %>" readonly ></td>
                        </tr>
                        <tr>
                            <td colspan="2"><label>Mobile number</label></td>
                        </tr>
                        <tr id="box">
                            <td colspan="2"><input type="text" name="mobile" id="text2" maxlength="10" placeholder="+94-- -------" value="<%=mobile %>" readonly ></td>
                        </tr>
                   
  
                    </table>
                    
                        <input type="submit" name="send" value="Delete account">
                    
                </form>
                
            </div>
        </div>
</body>
</html>