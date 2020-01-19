<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <a href="index.html" > home </a>

        <br/><br/>
        <a href="add-emp-form.html" >Add Employee</a>

        <h1>Employee List</h1>



        <table border="2" width="4" cellspacing="4" cellpadding="4">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>ADDRESS</th>
                    <th>AGE</th>
                </tr>
            </thead>
            <tbody>

                <c:forEach var="emp" items="${empList}">
                    <tr>
                        <td><c:out value="${emp.id}"/></td>
                        <td><c:out value="${emp.name}"/></td>

                        <td>
                            <c:if test="${emp.address == 'Dhaka'}">
                                <div style="color: goldenrod">
                                    <c:out value="${emp.address}"/>
                                </div>
                            </c:if>
                            <c:if test="${emp.address != 'Dhaka'}">
                                <div style="color: aquamarine; font-family: Lucida Handwriting; font-size: 200%">
                                    <c:out value="${emp.address}"/>
                                </div>
                            </c:if>
                        </td>
                        <td>
                            <c:if test="${emp.age > 200}">
                                <p style="color: red">
                                    <c:out value="${emp.age}"/>
                                </p>                               
                            </c:if>

                            <c:if test="${emp.age <= 200}">
                                <p style="color: brown">
                                    <c:out value="${emp.age}"/>
                                </p>                               
                            </c:if> 
                            <c:if test="${emp.age == 33}">
                                <p style="color: black">
                                    <c:out value="${emp.age}"/>
                                </p>                               
                            </c:if>     

                        </td>

                    </tr>

                </c:forEach>                  




                <%
                    //                    List<Employee> empList = (List<Employee>) request.getAttribute("empList");
                    //                    for (Employee emp : empList) {
                    //                        out.println("   <tr>"
                    //                                + "<td>" + emp.getId() + "</td>"
                    //                                + "<td>" + emp.getName() + "</td>"
                    //                                + "<td>" + emp.getAddress() + "</td>"
                    //                                + "<td>" + emp.getAge() + "</td>"
                    //                                + "</tr>");
                    //
                    //                    }
%>

            </tbody>
        </table>


    </body>
</html>
