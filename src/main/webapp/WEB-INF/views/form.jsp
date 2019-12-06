<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    </head>
    <body>
        <% if (request.getParameter("error") == null) { %>
            <h1>Please Login..</h1> 
        <% } else { %>
            <h1><%= request.getParameter("error") %></h1>
        <% } %>
        <form action="authentication" method="post">
            <label>ID: </label>
            <input name="id" type="text" placeholder="아이디를 입력해주세요."><br>
            <label>PW: </label>
            <input name="password" type="password" placeholder="비밀번호를 입력해주세요."><br>
            <input type="submit" value="로그인">
        </form>
    </body>
</html>