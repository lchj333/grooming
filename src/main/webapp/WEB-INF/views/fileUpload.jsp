<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="file-upload" method="POST" enctype="multipart/form-data">
            라이센스 넘버 : <input type="text" name="licenceNum" /><br/>
            <!--업로드할 파일 선택-->
            리포트 파일 : <input type="file" name="file" /><br/>
        <input type="submit" />
    </form>
</body>
</html>
