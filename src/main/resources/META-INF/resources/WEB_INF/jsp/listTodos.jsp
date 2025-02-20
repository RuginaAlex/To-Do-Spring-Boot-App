<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>List Todos Page</title>
    <link href="webjars/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet" >

</head>
<body>
    <div class = "container">
        <div>Welcome ${name}</div>
        <hr>
        <h1>Your Todos: </h1>
        <table class = "table table-bordered border-black">
            <thead>
                <tr>
                    <th>id</th>
                    <th>Description</th>
                    <th>Target Date</th>
                    <th>Is Done?</th>
                    <th style="width: 9%;">Update ToDo</th>
                    <th style="width: 9%;">Delete ToDo</th>
                </tr>
            </thead>
            <c:forEach items = "${todos}" var = "todo">
                <tr>
                    <td>${todo.id}</td>
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



    <script src="webjars/bootstrap/5.3.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.7.1/jquery.min.js"></script>
</body>
</html>