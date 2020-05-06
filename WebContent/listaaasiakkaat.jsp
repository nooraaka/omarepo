<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">
<title>Harjoitusteht�v� 4</title>
</head>
<body>

<h1>
	Hakusana: <input type="text" name="hakusana">
	<input type="submit" value="Hae">
</h1>

<table id="listaus">
	<thead>

		<tr>
			<th> Etunimi</th>
			<th> Sukunimi</th>
			<th> Puhelin</th>	
			<th> Sposti</th>
		</tr>
		</thead>
		<tbody>
		</tbody>	
</table>	

<script>

$(document).ready(function(){
	$.ajax({
		url:"asiakkaat", 
		type:"GET", 
		dataType:"json", 
		success:function(result) {
			$.each(result.asiakkaat, function(i, field) {
				var htmlStr;
				htmlStr+="<tr>";
				htmlStr+="<td>" + field.etunimi+"</td>";
				htmlStr+="<td>" + field.sukunimi+"</td>";
				htmlStr+="<td>" + field.puhelin+"</td>";
				htmlStr+="<td>" + field.sposti+"</td>";
				htmlStr+="</tr>";
				$("#listaus tbody").append(htmlStr);
			});	
	}});
});
</script>
</body>
</html>