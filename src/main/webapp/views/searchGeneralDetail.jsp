<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>검색 및 목록 예제</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
      }

      form {
        display: flex;
        align-items: center;
        margin: 20px;
      }

      label {
        margin-right: 10px;
      }

      input[type="text"] {
        padding: 10px;
        border: 2px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        width: 300px;
      }

      button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        padding: 10px 20px;
        font-size: 16px;
      }

      button[type="submit"]:hover {
        background-color: #45a049;
      }

      ul {
        list-style: none;
        margin: 0;
        padding: 0;
      }

      li {
        padding: 10px;
        border-bottom: 1px solid #ccc;
        font-size: 16px;
      }

      li:last-child {
        border-bottom: none;
      }
    </style>
  </head>
  <body>
    <form action="searchGeneral.do">
      <label for="search">검색어 입력:</label>
      <input type="text" id="search" name="search">
      <button type="submit">검색</button>
    </form>
    <ul>
      <li>목록 항목 1</li>
      <li>목록 항목 2</li>
      <li>목록 항목 3</li>
      <li>목록 항목 4</li>
    </ul>
  </body>
</html>