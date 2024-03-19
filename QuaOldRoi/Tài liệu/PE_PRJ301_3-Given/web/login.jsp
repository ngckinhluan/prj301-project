<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./css/loginstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>

<body>
    <header>
        <img class="header" src="./images/logo.png" alt="logo" ;>
    </header>
    <div class="container">
        <div class="content">
            <h1>Hello, Friend ! </h1>
            <h2>Welcome to Fire Airlines! 🔥🔥🔥</h2>
        </div>
        <div class="logreg-box">
            <div class="form-box signup">
                <form action="#">
                    <h2>Sign up</h2>
                    <div class="input-box">
                        <input type="email" name="email" class="range" placeholder="Enter Email" required>

                    </div>
                    <div class="input-box">
                        <input type="text" name="username" class="range" placeholder="Create Username" required>

                    </div>
                    <div class="input-box">
                        <input type="number" name="number" class="range" placeholder="Contact number" required>

                    </div>
                    <div class="input-box">
                        <input type="password" name="password" class="range" placeholder="Password" required>

                    </div>
                    <div class="input-box">
                        <input type="password" name="password" class="range" placeholder="Confirm Password">

                    </div>
                    <button type="submit" class="btn">Register</button>
                    <div class="login-signup">
                        <p id="a">Already have an Account ? <a href="#" class="signup-link"><b>Sign In</b> </a></p>
                        <p id="b">or continue with</p>
                        <div class="icon"><a href="#"><i class="fa-brands fa-facebook"></i></a>
                            <a href="#"><i class="fa-brands fa-apple"></i></a>
                            <a href="#"><i class="fa-brands fa-google"></i></a>
                        </div>
                    </div>

                </form>
            </div>

            <div class="form-box login">
                <form action="#">
                    <h2>Sign in</h2>
                    <div class="input-box">
                        <input type="email" name="email" class="range" placeholder="Enter Email" required>

                    </div>

                    <div class="input-box">
                        <input type="password" name="password" class="range" placeholder="Password" required>

                    </div>

                    <button type="submit" class="btn">Register</button>
                    <div class="login-signup">
                        <p id="a">Already have an Account ? <a href="#" class="login-link"><b>Sign Up</b> </a></p>
                        <p id="b">or continue with</p>
                        <div class="icon"><a href="#"><i class="fa-brands fa-facebook"></i></a>
                            <a href="#"><i class="fa-brands fa-apple"></i></a>
                            <a href="#"><i class="fa-brands fa-google"></i></a>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>


    <script src="./js/loginscript.js"></script>
</body>

</html>