<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/11/30
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <head>
        <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    </head>
</head>
<body>
<!-- component -->
<!-- Create by joker banny -->
<div class="h-screen bg-indigo-100 flex justify-center items-center">
    <div class="lg:w-2/5 md:w-1/2 w-2/3">
        <form class="bg-white p-10 rounded-lg shadow-lg min-w-full" action="/register" method="post">
            <h1 class="text-center text-2xl mb-6 text-gray-600 font-bold font-sans">Formregister</h1>
            <div>
                <label class="text-gray-800 font-semibold block my-3 text-md" for="phone">Username</label>
                <input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="phone" id="phone" placeholder="phone" />
            </div>
            <div>
                <label class="text-gray-800 font-semibold block my-3 text-md" for="pwd">Password</label>
                <input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="pwd" id="pwd" placeholder="pwd" />
            </div>
            <div>
                <label class="text-gray-800 font-semibold block my-3 text-md" for="sex">Sex</label>
                <input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="sex" id="sex" placeholder="1 or 0" />
            </div>
            <div>
                <label class="text-gray-800 font-semibold block my-3 text-md" for="username">Username</label>
                <input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="username" id="username" placeholder="username" />
            </div>
            <div>
                <label class="text-gray-800 font-semibold block my-3 text-md" for="wechat">Wechat</label>
                <input class="w-full bg-gray-100 px-4 py-2 rounded-lg focus:outline-none" type="text" name="wechat" id="wechat" placeholder="wechat" />
            </div>
            <button type="submit" class="w-full mt-6 bg-indigo-600 rounded-lg px-4 py-2 text-lg text-white tracking-wide font-semibold font-sans" >Register</button>
            <div class="w-full mt-6 mb-3 bg-indigo-100 rounded-lg px-4 py-2 text-lg text-gray-800 tracking-wide font-semibold font-sans text-center"><a href="/">Login</a></div>
        </form>
    </div>
</div>
</body>
</html>
