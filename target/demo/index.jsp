<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<!-- component -->
<!-- Create By Joker Banny -->
<div class="min-h-screen bg-no-repeat bg-cover bg-center"
     style="background-image: url('https://images.unsplash.com/photo-1486520299386-6d106b22014b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80')">
    <div class="flex justify-end">
        <div class="bg-white min-h-screen w-1/2 flex justify-center items-center">
            <div>

                <form action="${pageContext.request.contextPath}/user/login" method="post">
                    <div>
                        <span class="text-sm text-gray-900">Welcome back</span>
                        <h1 class="text-2xl font-bold">Login to your account</h1>
                    </div>
                    <div class="mt-5">
                        <%--@declare id="username"--%><label class="block text-md mb-2" for="username">Username</label>
                        <input class="px-4 w-full border-2 py-2 rounded-md text-sm outline-none" type="text" name="username" placeholder="username">
                    </div>
                    <div class="my-3">
                        <%--@declare id="password"--%><label class="block text-md mb-2" for="password">Password</label>
                        <input class="px-4 w-full border-2 py-2 rounded-md text-sm outline-none" type="password" name="pwd" placeholder="password">
                    </div>
                    <div class="flex justify-between">
                        <div>
                            <input class="cursor-pointer"  type="radio" name="rememberme">
                            <span class="text-sm">Remember Me</span>
                        </div>
                        <span class="text-sm text-blue-700 hover:underline cursor-pointer">Forgot password?</span>
                    </div>
                    <div class="">
                        <button class="mt-4 mb-3 w-full bg-green-500 hover:bg-green-400 text-white py-2 rounded-md transition duration-100" type="submit">Login now</button>

                    </div>
            </form>
            <p class="mt-8"> Dont have an account? <span class="cursor-pointer text-sm text-blue-600"> <a href="${pageContext.request.contextPath}/register.jsp">Join free today</a></span></p>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>
