<?php
define('SERVER', 'localhost');
define('USERNAME', 'root');
define('PASSWORD', 'root');
define('DATABASE', 'insurance_flow');

$conn = mysqli_connect(SERVER,USERNAME,PASSWORD,DATABASE);
if (!$conn) {
	die('could not connect'.mysqli_error());
}
?>