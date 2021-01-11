<?php
header('Content-Type:application/json');
header('Access-Control-Allow_origin: * ');
header('Access-Control-Allow_methods: GET');
header('Access-Control-Allow-Header:Access-Control-Allow-Header,Content-Type,Access-Control-Allow_methods,Auhtorization');
require_once "../config/database.php";
$responseArray = array("status"=>0,"message"=>"Something went wrong","resultData"=>[]);
if($_SERVER['REQUEST_METHOD']=='GET'){
    $query = 'SELECT group_name from crop_details';        
    $queryResult = mysqli_query($conn,$query);
    if(mysqli_num_rows($queryResult)>0){
        $resultData = mysqli_fetch_all($queryResult,MYSQLI_ASSOC);
        $uniqueResultData = array_values(array_unique($resultData, SORT_REGULAR));
        $responseArray["status"] = 1;
        $responseArray["message"] = "Data found";
        $responseArray['resultData'] = $uniqueResultData;
    }else{
        $responseArray["message"] = "No record found";
    }    
}else{
    $responseArray['message']='Bad request';
}
echo json_encode($responseArray);exit();
?>