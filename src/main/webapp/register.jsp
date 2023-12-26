<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Student Activities</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <style>
  .error {
    color: red;
  }
</style>
</head>

<body style="background-image: url('Images/a.jpg');max-width: 100%; max-height: 100%;">
  <div class="container">
    <div class="row justify-content-center align-items-center mt-4">
      <div class="col-md-10 mt-5">
        <div class="card mt-5">
          <div class="card-body">
            <div class="row">
              <div class="col-md-6 d-flex justify-content-center align-items-center">
                <img src="Images/login_grds.jpg" style="width: 480px;" alt="Your Photo" class="img-fluid">
              </div>
              <div class="col-md-6 text-center">
                <h4 class="card-title mb-4 mt-5 txt-login-signup">Sign Up</h4>
                <form action="Register" method="post" onsubmit="return formValidation(event)">
                  <div class="mb-3">
                    <input type="text" name="firstName" class="form-control" id="firstName" aria-describedby="firstNameError" placeholder="Enter First Name">
                    <span id="firstNameError" class="error"></span><!-- Error message for First Name -->
                  </div>
                  <div class="mb-3">
                    <input type="text" name="lastName" class="form-control" id="lastName" aria-describedby="lastNameError" placeholder="Enter Last name">
                    <span id="lastNameError" class="error"></span><!-- Error message for Last Name -->
                  </div>
                  <div class="mb-3">
                    <input type="email" name="email" class="form-control" id="email" aria-describedby="emailError" placeholder="Enter email">
                    <span id="emailError" class="error"></span><!-- Error message for Email -->
                  </div>
                  <div class="mb-3">
                    <input type="email" name="reEmail" class="form-control" id="reEmail" aria-describedby="reEmailError" placeholder="Re-Enter email">
                    <span id="reEmailError" class="error"></span><!-- Error message for Re-entered Email -->
                  </div>
                  <div class="mb-3">
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                    <span id="passwordError" class="error"></span><!-- Error message for Password -->
                  </div>
					<div class="mb-3">
					    <input type="password" name="confirmPassword" class="form-control" id="confirmPassword" placeholder="Confirm Password">
					    <span id="confirmPasswordError" class="error"></span><!-- Error message for Confirm Password -->
					</div>	
					<div class="mb-3">
					    <select name="course" class="form-select" id="course">
					        <option value="">Select Course</option>
					        <option value="FSDM">Full Stack Software Development</option>
					        <option value="QEMT">Quality Engineering Management</option>
					        <option value="CPMT">Construction Project Management</option>
					    </select>
					    <span id="courseError" class="error"></span><!-- Error message for Course -->
					</div>
					
					<div class="mb-3">
					    <select name="term" class="form-select" id="term">
					        <option value="">Select Term</option>
					        <option value="1"> 1</option>
					        <option value="2"> 2</option>
					        <option value="3"> 3</option>
					        <option value="4"> 4</option>
					    </select>
					    <span id="termError" class="error"></span><!-- Error message for Term -->
					</div>
					<div class="mb-3">
					    <label for="gender" class="me-2">Gender</label>
					    <div class="form-check form-check-inline">
					        <input class="form-check-input" type="radio" name="gender" id="male" value="male">
					        <label class="form-check-label" for="male">Male</label>
					    </div>
					    <div class="form-check form-check-inline">
					        <input class="form-check-input" type="radio" name="gender" id="female" value="female">
					        <label class="form-check-label" for="female">Female</label>
					    </div>
					    <span id="genderError" class="error"></span><!-- Error message for Gender -->
					</div>
                  <button type="submit" class="btn btn-submit btn-primary">Sign Up</button>
                </form>
                <div class="mt-3 txt-register">
                  <span>Already have an account?</span>
                  <a href="index.jsp" class="ms-2 btn-register">Login</a>
                  <br><br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    function formValidation(event) {
      var firstName = document.getElementById("firstName").value.trim();
      var lastName = document.getElementById("lastName").value.trim();
      var email = document.getElementById("email").value.trim();
      var reEmail = document.getElementById("reEmail").value.trim();
      var password = document.getElementById("password").value.trim();
      var confirmPassword = document.getElementById("confirmPassword").value.trim();
      var course = document.getElementById("course").value.trim();
      var term = document.getElementById("term").value.trim();
     
      var isValid = true;
      var genderInputs = document.querySelectorAll('input[name="gender"]');
      var genderSelected = false;

      genderInputs.forEach(function (input) {
          if (input.checked) {
              genderSelected = true;
          }
      });

      if (!genderSelected) {
          document.getElementById("genderError").innerText = "Please select Gender";
          isValid = false;
      } else {
          document.getElementById("genderError").innerText = "";
      }

      if (firstName === "") {
        document.getElementById("firstNameError").innerText = "Please enter First Name";
        isValid = false;
      } else {
        document.getElementById("firstNameError").innerText = "";
      }

      if (lastName === "") {
        document.getElementById("lastNameError").innerText = "Please enter Last Name";
        isValid = false;
      } else {
        document.getElementById("lastNameError").innerText = "";
      }

      if (email === "") {
        document.getElementById("emailError").innerText = "Please enter Email";
        isValid = false;
      } else {
        document.getElementById("emailError").innerText = "";
      }

   

      if (reEmail === "") {
        document.getElementById("reEmailError").innerText = "Please re-enter Email";
        isValid = false;
      } else if (reEmail !== email) {
        document.getElementById("reEmailError").innerText = "Emails do not match";
        isValid = false;
      } else {
        document.getElementById("reEmailError").innerText = "";
      }

      if (password === "") {
        document.getElementById("passwordError").innerText = "Please enter Password";
        isValid = false;
      } else {
        document.getElementById("passwordError").innerText = "";
      }
      if (confirmPassword === "") {
          document.getElementById("confirmPasswordError").innerText = "Please confirm Password";
          isValid = false;
      } else if (confirmPassword !== password) {
          document.getElementById("confirmPasswordError").innerText = "Passwords do not match";
          isValid = false;
      } else {
          document.getElementById("confirmPasswordError").innerText = "";
      }

      if (course === "") {
          document.getElementById("courseError").innerText = "Please select Course";
          isValid = false;
      } else {
          document.getElementById("courseError").innerText = "";
      }

      if (term === "") {
          document.getElementById("termError").innerText = "Please select Term";
          isValid = false;
      } else {
          document.getElementById("termError").innerText = "";
      }


      return isValid;
    }
  </script>
</body>
</html>