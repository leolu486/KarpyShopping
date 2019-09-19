<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Google Sign In</title>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="56544827833-d9qmm0ik4ukn3s8g8aplpco391bfjco0.apps.googleusercontent.com">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://apis.google.com/js/api:client.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>


<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet" type="text/css">




<style>
#customBtn {
	display: block;
	background: white;
	color: #444;
	box-shadow: 1px 1px 1px grey;
	white-space: nowrap;
	vertical-align: middle;
	padding-left: 42px;
	padding-right: 42px;
	font-size: 14px;
	font-weight: bold;
	border-radius: 5px;
	border: thin solid #888;
}

#customBtn:hover {
	cursor: pointer;
	-webkit-filter: brightness(0.8) contrast(2)
		drop-shadow(1px 1px 1px gray);
}

#customBtn:active {
	cursor: pointer;
	-webkit-filter: brightness(0.8) contrast(2)
		drop-shadow(1px 1px 1px green);
}
</style>


<script>
	// 	function onSuccess(googleUser) {

	// 	}

	// 	function onFailure(error) {
	// 		console.log(error);
	// 	}
	// 	function renderButton() {
	// 		gapi.signin2.render('my-signin2', {
	// 			'scope' : 'profile email',
	// 			'width' : 240,
	// 			'height' : 50,
	// 			'longtitle' : true,
	// 			'theme' : 'dark',
	// 			'onsuccess' : onSuccess,
	// 			'onfailure' : onFailure
	// 		});

	// 	}

	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function() {
			console.log('User signed out.');
			alert("You have been successfully signed out");
			$("#gSignInWrapper").css("display", "block");
			$("#out").css("display", "none");
			$(".data").css("display", "none");
		});
	}

	// 		function onSignIn(googleUser) {
	// 			var profile = googleUser.getBasicProfile();
	// 			console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	// 			console.log('Name: ' + profile.getName());
	// 			console.log('Image URL: ' + profile.getImageUrl());
	// 			console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
	// 			$(".g-signin2").css("display", "none");
	// 			$(".data").css("display", "block");
	// 			$("#pic").attr('src', profile.getImageUrl());
	// 			$("#email").text(profile.getEmail());
	// 		}
</script>

<style>
#out {
	display: none;
}

.data {
	display: none;
}
</style>

<!-- test -->

<script>
	var googleUser = {};
	var startApp = function() {
		gapi
				.load(
						'auth2',
						function() {
							// Retrieve the singleton for the GoogleAuth library and set up the client.
							auth2 = gapi.auth2
									.init({
										client_id : '56544827833-d9qmm0ik4ukn3s8g8aplpco391bfjco0.apps.googleusercontent.com',
										cookiepolicy : 'single_host_origin',
										// Request scopes in addition to 'profile' and 'email'
										scope : 'profile email'
									});
							attachSignin(document.getElementById('customBtn'));
						});
	};
	function attachSignin(element) {
		console.log(element.id);
		auth2.attachClickHandler(element, {}, function(googleUser) {
			var profile = googleUser.getBasicProfile();
			var id_token = googleUser.getAuthResponse().id_token;

			$.ajax({
				type : 'POST',
				url : "http://localhost:8080/KarpyShopping/googleVerify",
				data : "idtokenstr=" + id_token,
				dataType : "text",
				success : function(response) {
					console.log("Logging as: " + profile.getName());
					$("#gSignInWrapper").css("display", "none");
					$("#out").css("display", "inline-block");
					$(".data").css("display", "block");
					$("#name").text(profile.getName());
					$("#pic").attr('src', profile.getImageUrl());
					$("#email").text(profile.getEmail());
					console.log('${sessionScope.requestURI}');//取得攔截前的uri
					// 				location.href = 'http://localhost:8080/KarpyShopping';
				},
				error : function(jqXHR, textStatus, errorThrown) {
					console.log("jqXHR: " + jqXHR);
					console.log("textStatus: " + textStatus);
					console.log("errorThrown: " + errorThrown);

				},
			});
		}, function(error) {
			alert(JSON.stringify(error, undefined, 2));
		});
	}
</script>
<style type="text/css">
#customBtn {
	display: inline-block;
	background: white;
	color: #444;
	width: 100px;
	height: 3em;
	border-radius: 5px;
	border: thin solid #888;
	box-shadow: 1px 1px 1px grey;
	white-space: nowrap;
	border-radius: 5px;
}

#customBtn:hover {
	cursor: pointer;
}

span.label {
	font-family: serif;
	font-weight: normal;
}

span.icon {
	background: transparent 5px 50% no-repeat;
	display: inline-block;
	vertical-align: middle;
	width: 42px;
	height: 42px;
	display: inline-block;
}

img.pic {
	display: inline-block;
	vertical-align: middle;
	width: 21px;
	height: 21px;
	display: inline-block;
	margin-top: 10px;
}

span.buttonText {
	display: inline-block;
	vertical-align: middle;
	padding-left: 5px;
	padding-right: 20px;
	font-size: 14px;
	font-weight: bold;
	/* Use the Roboto font that is loaded in the <head> */
	font-family: 'Roboto', sans-serif;
}
</style>



</head>

<body>




	<div id="gSignInWrapper">
		<span class="label">Sign in with:</span>
		<div id="customBtn" class="customGPlusSignIn">
			<span class="icon"><img class="pic"
				src="<c:url value='/images/google/g-icon.png'/>" /> </span> <span
				class="buttonText">Google</span>
		</div>
	</div>

	<div class="data">
		<p>Profile Detail</p>
		Name:<span id="name"></span>
		<p>Image:</p>
		<p>
			<img id="pic" width="100px" />
		</p>

		Email Address: <span id="email"></span>
	</div>
	<br>
	<button id="out" onclick="signOut();">Sign out</button>

	<script>
		startApp();
	</script>
	<script
		src="https://apis.google.com/js/platform.js?onload=renderButton" async
		defer></script>
</body>
</html>
