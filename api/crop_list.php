<?php 
header('Content-Type:application/json');
header('Access-Control-Allow_origin: * ');
header('Access-Control-Allow_methods: GET');
header('Access-Control-Allow-Header:Access-Control-Allow-Header,Content-Type,Access-Control-Allow_methods,Auhtorization');
require_once "../config/database.php";
define('ERROR','404');
$responseArray = array('status'=>0,'message'=>'Something went wrong','group_name'=>null,'resultData'=>[]);
if($_SERVER['REQUEST_METHOD']==='GET'){
if((isset($_REQUEST['group_name']) && !empty($_REQUEST['group_name']))){
    $groupInput = $_REQUEST['group_name'];
    $query = 'SELECT crop,menu_image FROM crop_details WHERE group_name LIKE "%'.$groupInput.'%"';
    $queryResult = mysqli_query($conn,$query);
    if((mysqli_num_rows($queryResult)>0)){
        $resultData = mysqli_fetch_all($queryResult , MYSQLI_ASSOC);
        $responseArray['message']= 'Data Found';
        $responseArray['status']= 1;
        $responseArray['group_name'] = $groupInput;
        $responseArray['resultData'] = $resultData;
    }else{
        $responseArray['message']='No record found';
    }
}else{
    $responseArray['message']='Invalid params';
}
}else{
    //array_push($responseArray['statusCode'] = http_response_code());
    $responseArray['message']='Bad request';
}
echo json_encode($responseArray);exit();
?>