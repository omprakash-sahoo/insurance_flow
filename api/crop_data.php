<?php 
    /***
    @author: Om prakash Sahoo
    @date: 23th, Dec 2020
    @project : insurance-flow
    ***/
header('Content-Type:application/json');
header('Access-Control-Allow_origin: * ');
header('Access-Control-Allow_methods: GET');
header('Access-Control-Allow-Header:Access-Control-Allow-Header,Content-Type,Access-Control-Allow_methods,Auhtorization');
require "../config/database.php";
$responseArray = array('status'=>0,'message'=>'Something went wrong',"resultData"=>[]);
if($_SERVER['REQUEST_METHOD']==='GET'){
if((isset($_REQUEST['crop']) && !empty($_REQUEST['crop']))){
    $cropInput = $_REQUEST['crop'];
    $query = "SELECT crop_id,crop,group_name,botanical_name,family,climatic_feature,nutritional_value,area,production_mt,perils,nutrient,profile_image FROM crop_details WHERE crop = '$cropInput'";
    $queryResult = mysqli_query($conn,$query);
    if((mysqli_num_rows($queryResult)>0)){
        while($row = mysqli_fetch_object($queryResult)){
            $responseArray['message']= 'Data Found';
            $responseArray['status']= 1;
            $responseArray['resultData'] = $row;
        }
    }else{
        $responseArray['message']='No record found';
    }
}else{
    $responseArray['message']='Invalid params';
}
}else{
    $responseArray['message']='Bad request';
}
echo json_encode($responseArray);exit();
?>