<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Show all data</title>
    <style>
       @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
        *{
            padding: 0;
            margin: 0;
            /* box-sizing: border-box; */
            font-family: 'Poppins', sans-serif;
            
        }
        table{
            width: 70%;
            margin: 45px 160px;
            box-shadow: 10px 5px 10px 5px #c9d1ce;
            border-collapse: collapse;
            border-radius: 10px;
            

        }
        
th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  
}

tr:hover {background-color: lightgrey;
color:#2b614c;
font-weight:800 ;
}
        table tr th{
            background-color: #88f7cd;
            color : black;
            text-transform: uppercase;
        }
        td{       
           font-size: 18px;
        }
         
         a{
            text-decoration: none;
            color: black;
            cursor: pointer;
            padding: 5px;
        } 
   
    </style>
</head>
<body>
     <h1 style=" text-align: center;padding: 20px;"> Show All Data In Table Form</h1>
    <table >
        <thead>
            <tr>
                <th>Emp id</th>
                <th>Emp Name</th>
                <th>Emp Age</th>
                <th>Emp Designation</th>
                <th>Emp city</th>
                <th>Others</th>
            </tr>
        </thead>
    <tbody> 
<?php
    include("connectivity.php");

   $query = "SELECT * FROM tbl_office";

 $result = mysqli_query($connection,$query);

   foreach($result as $row)
   {

        echo "<tr>";
        echo "<td>$row[id]</td>";
        echo "<td>$row[name]</td>";
        echo "<td>$row[age]</td>";
        echo "<td>$row[designation]</td>";
        echo "<td>$row[city]</td>";
        echo "<td>
        <a href ='delete.php?id=$row[id]'>Delete</a>
        <a href = 'Update.php?id=$row[id]&name=$row[name]&age=$row[age]&designation=$row[designation]&city=$row[city]'>Update</a>
        </td>";
        echo "</tr>";

   }

 ?>
 </tbody>
 </table> 
</body>
</html>
