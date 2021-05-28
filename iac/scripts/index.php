<!DOCTYPE html>
<html>
<head>
<title>Lista de times de Futebol do Brasil</title>
</head>
<body>
<?php
$times = array("Botafogo", "Corinthians", "Flamengo", "Palmeiras", "Santos");
?>
<h1>Lista de Times</h1>
<ul>
<?php foreach ($times as $time) { ?>
<li><?php echo $time ?></li>
<?php }  ?>
</ul>
</body>
</html>
