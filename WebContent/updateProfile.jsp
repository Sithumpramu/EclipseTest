<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/Myprofile.css">
        <link rel="stylesheet" href="css/stylesJAVA.css">
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/login.css">
        <title>Update profile</title>
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
            <div class="sidenavbar">
                <ul>
                    <li><a href="newHOME.html"><input type="submit1" value="Home"></a></li>
                    <li><a href="profile.html"><input type="submit1" value="Shopping cart"></a></li>
                    <li><a href="profile.html"><input type="submit1" value="Wish list"></a></li>
                    <li><a href="profile.html"><input type="submit1" value="Delete account"></a></li>
                    <li><a href="profile.html"><input type="submit1" value="Log out"></a></li> 
                </ul>
            </div>
            <div class="edit-profile">
                <form action="update" method="post" >
                    <h2><b>Change personal details</b></h2>
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
                            <td><input type="text" id="text2" name="fname" placeholder="First Name" value="<%=fname %>" ></td>
                            <td><input type="text" id="text2" name="lname" placeholder="Last Name" value="<%=lname %>" ></td>
                        </tr>
                        <tr id="space">
                            <td colspan="2"><label>Email </label> <br></td>
                        </tr>
                        <tr id="box">
                            <td colspan="2"><input type="Email" name="Email" id="text2" placeholder="example@gmail.com" value="<%=Email %>" ></td>
                        </tr>
                        <tr>
                            <td colspan="2"><label>Mobile number</label></td>
                        </tr>
                        <tr id="box">
                            <td colspan="2"><input type="text" name="mobile" id="text2" maxlength="10" placeholder="+94-- -------" value="<%=mobile %>" ></td>
                        </tr>
                   
                        <tr>
                            <td colspan="2"><label> Password</label></td>
                        </tr>
                        <tr id="box1">
                            <td colspan="2"><input type="password" name="password"  id="text2" maxlength="8" placeholder="---------" value="<%=password %>"></td>
                        </tr>
             
                    </table>
                    
                        <input type="submit" name="send" value="Save Changes">
                    
                </form>
                
            </div>
        </div>
    </body> 
</html>