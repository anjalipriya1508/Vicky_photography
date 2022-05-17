<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="style3.css">

</head>
<body>

<nav class="navbar  h-nav-res">
<ul class="nav-list another v-class-res">
<div class="logo"><img src="images/logo1.png" alt="logo"></a></div>

<li><a href="<?php echo SITEURL; ?>">Home</a></li>
<li><a href="<?php echo SITEURL; ?>categories.php">Gallery</a></li>

<li><a href="<?php echo SITEURL; ?>foods.php">Services</a></li>
<li><a href="<?php echo SITEURL; ?>contact1.php">Contact</a></li>

<li>
                        <a href="about.php">About</a>
                    </li>
</ul>
<div class="burger">
<div class="line"></div>
<div class="line"></div>
<div class="line"></div>
</div>

</nav>
<script src="resp.js"></script>
</body>
</html>