<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>장수 상세</title>
    <style>
    * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: Arial, sans-serif;
  font-size: 16px;
}

.container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}

.image {
  flex: 1 1 60%;
  height: 500px;
  background-image: url('https://picsum.photos/id/1015/800/600');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  margin-right: 20px;
}

.text-box {
  flex: 1 1 35%;
  display: flex;
  flex-direction: column;
  margin-bottom: 20px;
}

.text-box input,
.text-box textarea {
  margin-bottom: 10px;
  padding: 10px;
  font-size: 16px;
  border: none;
  border-bottom: 1px solid #ddd;
  border-radius: 0;
  box-shadow: none;
  outline: none;
  background-color: transparent;
  transition: border-bottom-color 0.2s ease-in-out;
}

.text-box input:focus,
.text-box textarea:focus {
  border-bottom-color: #0077ff;
}

.text-box input::placeholder,
.text-box textarea::placeholder {
  color: #999;
}

.text-box input[type='text'] {
  width: 100%;
}

.text-box input[type='text']:first-child {
  margin-top: 20px;
}

.text-box input[type='text']:last-child {
  margin-bottom: 40px;
}

.text-box textarea {
  height: 200px;
  resize: none;
}

.text-box .large-text-box {
  width: 100%;
  margin-top: 20px;
}

.text-box h2 {
  margin-top: 0;
  font-size: 24px;
  font-weight: bold;
  line-height: 1.5;
  text-transform: uppercase;
  color: #333;
}

.text-box p {
  margin-top: 0;
  font-size: 16px;
  line-height: 1.5;
  color: #666;
  margin-bottom: 10px;
}

.text-box input[type='text']:nth-of-type(1) {
  margin-top: 20px;
}

.text-box input[type='text']:last-of-type {
  margin-bottom: 40px;
}
</style>
  </head>
  <body>
    <div class="container">
      <div class="image"></div>
      <div class="text-box">
        <input type="text" placeholder="${generalDetail.kingdoms }" />
        <input type="text" placeholder="${generalDetail.belongs }" />
        <input type="text" placeholder="${generalDetail.name }" />
        <input type="text" placeholder="${generalDetail.nickname }" />
      </div>
      <div class="text-box large-text-box">
        <textarea placeholder="${generalDetail.story }"></textarea>
      </div>
    </div>
  </body>
</html>