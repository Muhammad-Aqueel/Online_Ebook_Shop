<?php


$id =  $_GET['id'];

$query = "DELETE FROM tbl_office where emp_id = $id";

include("connectivity.php");

 $result = mysqli_query($connection,$query);

if($result)
{
    echo "<script> alert( 'Record deleted') </script>";
}





?>