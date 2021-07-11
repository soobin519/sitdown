<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="${ pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
    <title>SIT DOWN</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: #ffc107;
        }

        .box {
            width: 500px;
            padding: 50px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #fffde8;
            text-align: center;
        }

            .box h1 {
                color: black;
                text-transform: uppercase;
                font-weight: 500;
            }

            .box input[type="text"], .box input[type="password"] {
                border: 0;
                background: none;
                display: block;
                margin: 20px auto;
                text-align: center;
                border: 2px solid #808080;
                padding: 14px 10px;
                width: 200px;
                outline: none;
                color: black;
                border-radius: 24px;
                transition: 0.25s;
            }

                .box input[type="text"]:focus, .box input[type="password"]:focus {
                    width: 280px;
                    border-color: #808080;
                }

            .box input[type="submit"] {
                border: 0;
                background: none;
                display: block;
                margin: 15px auto;
                text-align: center;
                border: 2px solid #ffe597;
                padding: 10px 30px;
                outline: none;
                color: #808080;
                border-radius: 24px;
                transition: 0.25s;
                cursor: pointer;
            }

                .box input[type = "submit"]:hover {
                    background: #ffe597;
                }
                
               .form-control{
               		width:60%;
               		margin-bottom:18px;
               		text-align-last:center;
               		margin-inline:auto;
             
               }
          
    </style>
</head>
<body>
    <form class="box" action="index.html" method="post">
        <p style="font-size:30px; color:black; font-family:'210 맨발의청춘'";>하차정보 등록</p>
        <select name="select" id="selectLine" class="form-control">
        	<option>노선을 선택해주세요</option>
        	<option value="분당선">분당선</option>
        	<option value="8호선">8호선</option>
        	<option value="2호선">2호선</option>
        	<option value="3호선">3호선</option>
        </select>
        <select name="select" id="selectTrain" class="form-control">
        	<option>열차를 선택해주세요 </option>
        </select>
        <select name="select" id="selectStation" class="form-control">
        	<option>하차역을 선택해주세요 </option>
        	<option>2</option>
        	<option>3</option>
        	<option>4</option>
        </select>
        <select name="select" id="selectNum" class="form-control">
        	<option>1량</option>
        	<option>2</option>
        	<option>3</option>
        	<option>4</option>
        </select>
        <input type="submit" name="" value="다음">
    </form>
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/main.js"/></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
 
$(function(){
	alert('hi');
	$("#selectLine").on('change',function(){
		var line = $('#selectLine option:selected').val();
		console.log(line);
		$.ajax({
			url: 'trainList',
			type: 'post',
			data: { line : line },
			success: function(res){
				$('#selectTrain').empty();
				$('#selectTrain').html(res);
				
			},
			error: function(error) {
				console.log(error.status);
			}
		}); // Ajax
		
		
	})
	
	
})

    	
    
    
</script>
    
</body>
</html>