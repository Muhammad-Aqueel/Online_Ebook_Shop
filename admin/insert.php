<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD</title>
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
label{
    width: 140px;
    display: inline-block;
    margin: 0.2cm;
    font-size: 20px;
    font-weight: bold;
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
    margin-left:37%;
    background-color:darkslategray;
    color:white;
    border-color:none:
} 
    </style>
</head>
<body>
    <h1 style=" text-align: center;padding: 20px;">Add users</h1>
    <div class="contact-box">
    <form method="post">
        <label for="">Employe id</label>
        <input type="number" name="emp_id" id="" placeholder="Enter your id" >
        <br><br>
        <label for="">Employe Name</label>
        <input type="text" name="emp_name" id="" placeholder="Enter your name" >
        <br><br>
        <label for="">Employe Age</label>
        <input type="number" name="emp_age" id="" placeholder="Enter your age" >
        <br><br>
        <label for="">Employe Designation</label>
        <input type="text" name="emp_designation" id="" placeholder="Enter your designation">
        <br><br>
        <label for="">Employe city</label>
        <input type="text" name="emp_city" id="" placeholder="Enter your city" >
        <br><br>
        <input type="submit" value="submit" name="submitbtn" class="btn">
    </form>
    </div>
    <?php

        $connection = mysqli_connect("localhost","root","","db_office");
//    if($connection == TRUE)
//    {
//        echo "Database connected";
//    }

if(isset($_POST['submitbtn']))
{

$id = $_POST['emp_id'];
$name = $_POST['emp_name'];
$age = $_POST['emp_age'];
$designation =$_POST['emp_designation'];
$city =$_POST['emp_city'];

$query = "INSERT INTO tbl_office VALUES($id,'$name',$age,'$designation','$city')";
mysqli_query($connection,$query);

}


    ?>
</body>
</html>