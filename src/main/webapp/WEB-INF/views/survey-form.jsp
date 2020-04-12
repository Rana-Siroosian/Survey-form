<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Survey</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />

</head>
<body>
<main class="container">
<section class="jumbotron">
<center><h1>Survey</h1></center>
<br>
<center><form action="/survey" method="post" >
*Name: <input type="text" name="name" required>
<br>
<br>
*Email: <input type="text" name="email" required>
<br>
<br>
Sex: <input type="radio" name="sex" value="female">Female
 <input type="radio" name="sex" value="male">Male
 <input type="radio" name="sex" value="other">Other
<br>
<br>
Age: <select name="age">
<option value="under 10">under 10</option>
<option value="11-15">11-15</option>
<option value="16-20">16-20</option>
<option value="21-25">21-25</option>
<option value="26-30">26-30</option>
<option value="31-35">31-35</option>
<option value="36-40">36-40</option>
<option value="41-45">41-45</option>
<option value="46-50">46-50</option>
<option value="51-55">51-55</option>
<option value="56-60">56-60</option>
<option value="over 60">over 60</option>

</select>
<br>
<br>
Which option best describes your current role? <select name="role">
<option value="student">Student</option>
<option value="employed">Employed</option>
<option value="unemployed">UnEmployed</option>
<option value="retired">Retired</option>

</select>
<br>
<br>
How likely is that you would recommend 
coding bootcamp to a friend?
<input type="radio" name="recommend" value="definitely">Definitely
<input type="radio" name="recommend" value="maybe">Maybe
<input type="radio" name="recommend" value="not sure">Not sure
<br>
<br>
Things that you should be improve in future:  
<input type="checkbox" name="skills" value="Front-end Projects"> Front-end Projects

<br>
<input type="checkbox" name="skills" value="Back-end Projects"> Back-end Projects
<br>
<input type="checkbox" name="skills" value="Data Visualization"> Data Visualization
<br>
<input type="checkbox" name="skills" value="C# Projects"> C# Projects
<br>
<input type="checkbox" name="skills" value="Python Projects"> Python Projects
<br>
<br>
Please write your comment:
<br>
<textarea rows="15" cols="80" name="cm" >
</textarea>
<br>
<br>

<button type="submit">Submit</button>
<br>
<br>
</form></center>
</section>
</main>

</body>
</html>