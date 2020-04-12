<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Survey</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />

</head>
<body>
	<main class="container">
		<c:if test="${msg ne null}">
			<div class="alert alert-${msgType}">
				<strong>${msg}</strong>
			</div>
		</c:if>
		<section class="jumbotron">
			<center>
				<h1>Survey</h1>
			</center>
			<br>
			<center>
				<form action="/survey" method="post" name="RegForm"
					onsubmit="return FullName()">
					*Name: <input type="text" name="name" id="name" required> <br>
					<br> *Email: <input type="email" name="email" required>

					<br> <br> Sex: <label><div>
							<input type="radio" name="sex" value="female">Female
						</div></label> <label><div>
							<input type="radio" name="sex" value="male">Male
						</div></label> <label><div>
							<input type="radio" name="sex" value="other">Other
						</div></label> <br> <br> Age: <select name="age">
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

					</select> <br> <br> Which option best describes your current role?
					<select name="role">
						<option value="student">Student</option>
						<option value="employed">Employed</option>
						<option value="unemployed">UnEmployed</option>
						<option value="retired">Retired</option>

					</select> <br> <br> How likely is that you would recommend coding
					bootcamp to a friend? <label><div>
							<input type="radio" name="recommend" value="definitely" required>Definitely
						</div></label> <label><div>
							<input type="radio" name="recommend" value="maybe" required>Maybe
						</div></label> <label><div>
							<input type="radio" name="recommend" value="not sure" required>Not
							sure
						</div></label> <br> <br> Things that you should be improve in future:
					<label><div>
							<input type="checkbox" name="skills" value="Front-end Projects">
							Front-end Projects
						</div></label> <br> <label><div id="skills2">
							<input type="checkbox" name="skills" value="Back-end Projects">
							Back-end Projects
						</div></label> <br> <label><div id="skills2">
							<input type="checkbox" name="skills" value="Data Visualization">
							Data Visualization
						</div></label> <br> <label><div id="skills3">
							<input type="checkbox" name="skills" value="C# Projects">
							C# Projects
						</div></label> <br> <label><div id="skills4">
							<input type="checkbox" name="skills" value="Python Projects">
							Python Projects
						</div></label> <br> <br> Please write your comment: <br> <br>
					<textarea name="cm" rows="15" cols="80" name="cm"
						onKeyDown="limitText(this.form.cm,this.form.countdown,400);"
						onKeyUp="limitText(this.form.cm,this.form.countdown,400);">
</textarea>
					<br> <font size="1">(Maximum characters: 400)<br>
						You have <input readonly type="text" name="countdown" size="3"
						value="400"> characters left.
					</font> <br> <br> <br> <input type="submit" name="submit"
						value="submit"> <br> <br>

				</form>
			</center>

		</section>
		<script>
			var input = document.getElementById('name');
			input.oninvalid = function(event) {
				event.target
						.setCustomValidity('Username should only contain lowercase letters. e.g. Rana');
			}

			function limitText(limitField, limitCount, limitNum) {
				if (limitField.value.length > limitNum) {
					limitField.value = limitField.value.substring(0, limitNum);
				} else {
					limitCount.value = limitNum - limitField.value.length;
				}
			}
		</script>
	</main>

</body>
</html>