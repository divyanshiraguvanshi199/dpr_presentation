<html>
	<head>
		<title>Display Database Values</title>
	</head>
	<body>
		<?php

		$db_conn=mysqli_connect('localhost','root','','performance_indicator');
		if(!$db_conn)
		{
			echo "Connection Unsuccessful";
		}

		$dept=$_POST['Dept'];


		


		$sql2 = "SELECT * FROM description_table where Dept_id=$dept";
		$result2 = $db_conn->query($sql2);
		$desc_count=$result2->num_rows;

		while($row=mysqli_fetch_array($result2))
	    {
	        $desc_id[]=$row['Desc_id'];
	        $unit[]=$row['Unit_of_measurement'];
	        $description[]=$row['Description'];
	    } ?>
	    <table>
	    <form action="display.php">
	    <tr>
			         <td colspan="2">
			            <select name="Description" id="Description" required>
			                <option value="NULL">Display values for:</option selected>  
			                <?php 
			                for($i=0;$i<$desc_count;$i++)
			                {?>
			                <option value="<?php echo $desc_id[$i]?>"><?php echo $description[$i]."  ( in ".$unit[$i]." )"?></option>
			           		   
			                <?php
			                }
			                ?>
			            </select>
			        </td>
		</tr>
		<tr>
			<td><button type="SUBMIT">SUBMIT</button></td>
		</tr>
		</form>
		</table>
<?php

		$sql = "SELECT * FROM transition_table where Dept_id=$dept";
        $result = $db_conn->query($sql);
        $count=$result->num_rows;

        echo $count;
        
        $dept_id=array();
        $dept_name=array();
        $obtained=array();
        $target=array();
        $entry_date=array();
        $insertion_date=array();
        $grade_name=array();
        
?>
	</body>
	</html>