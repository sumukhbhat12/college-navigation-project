<?php
    include("config.php");
    $block=$_POST["key"];
    echo $block;
    $qry = "SELECT floor.room_name,floor.floor_number from floor where floor.block_name='".$block."'";
    $result = $conn->query($qry);
    if(mysqli_num_rows($result)>0)
    {
        $output="";
        $output.='<table border="1" width="75%" cellspacing="0" cellpadding="10px">
                        <tr>
                        <th> Room Name </th>
                        <th> Floor </th>
                        <tr>
                     ';
            while ($row = mysqli_fetch_assoc($result))
            {
                $output.="<tr>";
                
                $output.='<td align="center">'.$row['room_name'].'</td>';
                $output.='<td align="center">'.$row['floor_number'].'</td>';
        
               $output.='</tr>';
            }
        
           $output.='</table>';

           echo $output;
    }

?>