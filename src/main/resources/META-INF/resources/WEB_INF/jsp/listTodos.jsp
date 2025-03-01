<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="common/header.jspf"%>


<body>
    <%@include file ="common/navigation.jspf" %>

    <div class = "container">
        <h1 style="text-align: center" class="mb-3"><b>Your Todos:</b></h1>
        <table class = "table table-bordered border-black">
            <thead>
                <tr>
                    <th>Description</th>
                    <th>Target Date</th>
                    <th>Is Done?</th>
                    <th style="width: 9%;">Update ToDo</th>
                    <th style="width: 9%;">Delete ToDo</th>
                </tr>
            </thead>
            <c:forEach items = "${todos}" var = "todo">
                <tr>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.done}</td>
                    <td class="text-center" style="width: 9%;">
                        <a href="update-todo?id=${todo.id}" class="btn btn-warning  ">Update</a>
                    </td>
                    <td class="text-center" style="width: 9%;">
                        <a href="delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a>
                    </td>


                </tr>
            </c:forEach>
            </span>
        </table>

        <a href="add-todo" class="btn btn-success">Add Todo</a>
    </div>

    <%@include file="common/footer.jspf"%>