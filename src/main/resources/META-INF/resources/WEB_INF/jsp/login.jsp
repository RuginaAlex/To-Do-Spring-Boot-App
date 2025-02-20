<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>

        .bg-body-tertiary {
            background-color: white!important;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column; /* Asigură alinierea verticală corectă */
            padding: 10px;!important;

        }

        .form-signin {
            max-width: 330px;
            padding: 2rem; !important;
            background: white;!important; /* Adaugă un fundal alb pentru vizibilitate */
            border-radius: 8px;!important;

        }



    </style>
</head>
<body>
<div class="container">
    <main class="form-signin bg-body-tertiary w-100 m-auto" >
        <pre>${errorMessage}</pre>
        <form method="post" >
            <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

            <div class="form-floating">
                <input type="text" class="form-control" id="floatingInput" name="name" required>
                <label for="floatingInput">Name</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" name="password" required>
                <label for="floatingPassword">Password</label>
            </div>

            <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>

        </form>
    </main>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
