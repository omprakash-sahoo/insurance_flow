<?php
require_once "../config/database.php";
global $conn;
define('ERROR','404');//Define Your Error message HERE
define('REQADDR', '::1');//Define your REQUESTIN SERVER ADDR
 if($_SERVER['REMOTE_ADDR']=='::1'){
	//process it

	if(isset($_GET['crop'])){
		$cropInput=$_GET['crop'];//TO get rid of SQL Enjection
		$sql='SELECT * FROM crops WHERE crop LIKE "%' .$cropInput. '%"';
		$result=mysqli_query($conn,$sql);
		 if(mysqli_num_rows($result)>0){	
			while ($row = mysqli_fetch_array($result)) {
				// print_r($row);die;
				$title=$row['group_name'];
			}

			$returndata=$title;//Write YOur data here
		}else{//IF NO DATA FOUND return 404
			$returndata = ERROR;
		}

		
	}
	else{//IF PROPER PARAMETER NOT PASSED return 404
		$returndata = ERROR;
	}
}
else{//IF REQUEST NOT MADE FROM 127.0.0.1 return 404
		$returndata = ERROR;
}

/********Compose Your Json Data Here*************/
$arr = array(
		'content' => $returndata
	);
echo json_encode($arr);//Return YOur data Here