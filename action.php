<?php
    $search_val=$_POST["search"];
    include("config.php");
    if(!empty($search_val))
    {
        $qry = "SELECT distinct(faculty.faculty_name),faculty.block_name,faculty.dept_name,faculty.floor_number FROM faculty,floor where faculty.block_name=floor.block_name and faculty.faculty_name like '%{$search_val}%'";

       /* $qry = "SELECT * FROM block,contains,department,faculty,floor 
        where block.block_name = contains.block_name and block.block_name = faculty.block_name and block.block_name = floor.block_name and contains.dept_name = department.dept_name
        and faculty_name like '%{$search_val}%'"; */   //INCORRECT QUERY
        $result = $conn->query($qry);
        $output="";
        if(mysqli_num_rows($result)>0)
        {
           
            $output.='<table border="1" width="75%" cellspacing="0" cellpadding="10px">
                        <tr>
                        <th width="60px"> Faculty name </th>
                        <th width="60px"> Block name </th>
                        <th width="60px"> Department </th>
                        <th width="60px"> Floor </th>
                        <tr>
                     ';
            while ($row = mysqli_fetch_assoc($result))
            {
                $output.="<tr>";
                $output.="<td align='left'>".$row['faculty_name']."</td>";
                $output.="<td align='left'>".$row['block_name']."</td>";
                $output.="<td align='left'>".$row['dept_name']."</td>";
                $output.="<td align='left'>".$row['floor_number']."</td>";
        
               $output.="</tr>";
            }
        
           $output.="</table>";

           echo $output;
        }
        else
        {
            echo "NO RESULTS FOUND!";
        }
    }
    
    
    

?>