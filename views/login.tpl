<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login form</title>
 
      <link rel="stylesheet" href="./assets/css/register.css">

  
</head>

<body>
<form id="msform" action='./processes/login-process.php' method='post'>
  <fieldset>
    <h2 class="fs-title">Login</h2>
    <h3 class="fs-subtitle">Pease login</h3>
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="password" placeholder="Password">
    <input type="submit" name="submit" class="submit action-button" value="Submit" />
    <p class="fs-subtitle">Need a account? <a href="./register.php">Register</a></p>
    <p class="fs-subtitle"><a href="./index.php">Back home</a></p>
  </fieldset>
</form>
</body>
</html>
