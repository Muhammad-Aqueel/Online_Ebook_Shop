<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    body{
    background-color:#efefef;
    font-family:'Times New Roman', Times, serif;
}
form{
    background: #bcbaba;
    width: 12cm;
    margin-left: 460px;
    padding: 10px 20px;
    border-radius: 10px;
    box-shadow: 0 0 20px 0 #999;
}

input{
    padding: 4px;
    margin: 5px;
   
    font-size: 16px;
    border-radius: 7px;
    border: 1px solid white;
    width: 6cm;

}
.btn{
    width:90px;
    height:30px;
    margin-left:3%;
    background-color:darkslategray;
    color:white;
    border-color:none:
} 
    </style>
</head>
<body>
    <h1 style=" text-align: center;padding: 20px;">Update In Employe Data</h1>
    <?php

    $id =  $_GET['id'];
    $name =  $_GET['name'];
    $age =  $_GET['age'];
    $designation =  $_GET['designation'];
    $city =  $_GET['city'];


   ?>
      <form method= "post" >
          <input type="number" readonly name="txtid" value="<?php echo $id ?>"><br><br>
          <input type="text" name="txtname" value="<?php echo $name ?>"><br><br>
          <input type="number" name="txtage"  value="<?php echo $age ?>"><br><br>
          <input type="text" name="txtdesig"  value="<?php echo $designation ?>"><br><br>
          <input type="text" name="txtcity"  value="<?php echo $city ?>"><br><br>
          <button type="submit" name="btnupload" class="btn">Update</button>
    
    </form>

    <?php
    if(isset($_POST['btnupload']))
    {
        $id = $_POST['txtid'];
        $name = $_POST['txtname'];
        $age = $_POST['txtage'];
        $designation = $_POST['txtdesig'];
        $city = $_POST['txtcity'];
        
        include("connectivity.php");
        
        $query = "UPDATE tbl_office SET emp_name='$name',emp_age=$age,emp_designation='$designation'
    ,emp_city='$city' WHERE emp_id=$id ";

    mysqli_query($connection,$query);

}


  ?>

</body>
</html>