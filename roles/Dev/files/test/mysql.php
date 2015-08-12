<?php
$conn = new mysqli('localhost', 'root', '');
if($conn->connect_error) {
	if($conn->connect_errno === 2002) {
		echo 'Check MySQL socket path is correct.<br />';
	}
    die('Connect Error (' . $conn->connect_errno . ') ' . $conn->connect_error);
}
if($dbs = $conn->query('SHOW DATABASES')) {
	echo 'Found ' . $dbs->num_rows . ' databases.<br /><br />';
	while($db = $dbs->fetch_object()) {
		echo $db->Database . '<br />';
	}
} else {
	die('Unable to SHOW DATABASES.');
}
