<!DOCTYPE html>
<html>
    <body>
<?php

        $user = $_POST["username"];
        $pass = $_POST["password"];

        $conn = new mysqli("localhost","root","","college3") or die("Unable to connect");
        echo"Connected! <br>";
        $qry="select password from student where user_name='".$user."'";
        $result = $conn->query($qry);
        $row = mysqli_fetch_assoc($result);
        if(empty($row))
        {
            $qry="insert into student values('".$user."','".$pass."')";
            $conn->query($qry);
            exit("Created a new account with the username : ".$user);
        }
        else
        if(!empty($row))
        {
            if($row["password"] == $pass)
            {
                header("location: index.php");
                //include("index.php");
                exit();
            }
            else
                exit("The username is already taken or Incorrect password!<br>");
        }
        
?>
    </body>
</html>
