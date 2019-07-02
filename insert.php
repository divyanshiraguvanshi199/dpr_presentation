<!DOCTYPE html>
<html>
<head>
	<title>Insert</title>
</head>
<body>
	
<center>

<form action="submit.php" method="POST"  name="registration">
	
<table cellspacing="5" cellpadding="2" bgcolor="silver" border="black">
<?php 

	session_start();
	

	if($_SERVER["REQUEST_METHOD"] == "POST")
	{
		$conn = mysqli_connect('localhost', 'root','', 'performance_indicator');
		if(!($conn))
		{
			echo "Connection Unuccessful";
		}

		$dept_id=array();
		$department_name=array();

		$dept=$_POST['Dept'];
		#$desc=$_POST['Description'];

		$sql1="SELECT * from department_table";
		$result1=$conn->query($sql1);
		$dept_count=$result1->num_rows;
		while($row=mysqli_fetch_array($result1))
        {
            $dept_id[]=$row['Dept_id'];
            $department_name[]=$row['Department_Name'];
            if($row['Dept_id']==$dept)
            {
            	$dept_name=$row['Department_Name'];
            }
        }
	}
?>
	<p id="demo"></p>
    <tr>
         <td colspan="3">
            <select name="Department" id="Department">
                <option value="<?php $dept ?>"><?php echo $dept_name?></option selected>       
            </select>
        </td>
    </tr>
<?php
	#$dept=$_POST['Dept'];
	$desc_id=array();
	$description=array();
	$grade_name=array();
	$grade_id=array();
	$unit=array();
	
	$sql2 = "SELECT * FROM description_table where Dept_id=$dept";
	$result2 = $conn->query($sql2);
	$desc_count=$result2->num_rows;

	while($row=mysqli_fetch_array($result2))
    {
        $desc_id[]=$row['Desc_id'];
        $unit[]=$row['Unit_of_measurement'];
        $description[]=$row['Description'];
    } 

    $sql3= "SELECT * FROM grade_info";
    $result3 = $conn->query($sql3);
    $grade_count=$result3->num_rows;

    while($row=mysqli_fetch_array($result3))
    {
        $grade_id[]=$row['Grade_ID'];
        $grade_name[]=$row['GradeName'];
    } 

?>
			    <tr>
			         <td colspan="2">
			            <select name="Description" id="Description" required>
			                <option value="NULL">Insert values for:</option selected>  
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
			    	<td>
			    		Entry Date
			    	</td>
			    	<td colspan="2">
			    		<input type="date" name="Date" id="Dt" required>
			    		<script type="text/javascript">
							var today= new Date();
							var dd = today.getDate();
							var mm = today.getMonth()+1;
							
							var yyyy=today.getFullYear();
							if(dd<10)
							{
								dd='0'+ dd;
							}
							if(mm<10)
							{
								mm='0'+mm;
							}
							
							today=yyyy+'-'+mm+'-'+dd;
							
							document.getElementById("Dt").max=today;
								
						</script>
						<script type="text/javascript">
							var today= new Date();
							var dd = today.getDate();
							var mm = today.getMonth();
							
							var yyyy=today.getFullYear();
							if(dd<10)
							{
								dd='0'+ dd;
							}
							if(mm<10)
							{
								mm='0'+mm;
							}
							
							today=yyyy+'-'+mm+'-'+dd;
							
							document.getElementById("Dt").min=today;
						</script>
			    	</td>
			    </tr>
			    <tr>
			    	<td>
			    		Value
			    	</td>
			    	<td colspan="2">
			    		<input type="number" name="obtained" required>
			    	</td>
			    </tr>
			    <tr>
			    	<td>
			    		Target
			    	</td>
			    	<td colspan="2">
			    		<input type="number" name="target" placeholder="Do not enter if field not applicable">
			    	</td>
			    </tr>
			    <tr>
			    	<td>
			    		Grade name
			    	</td>
			    	<td colspan="2">
			    		<select type="number" name="grade">
			    			<option value="NULL">Do not select if field not applicable</option>
			    			<?php 
			                for($i=0;$i<$grade_count;$i++)
			                {?>
			                <option value="<?php echo $grade_id[$i]?>"><?php echo $grade_name[$i]?></option>
			                <?php
			                }
			                ?>
			    	</td>
			    </tr>
			    <tr>
			    	<td>
			    		For Department specific entries
			    	</td>
			    	<td colspan="2">
			    		<select type="number" name="applicable_dept">
			    			<option value="NULL">Do not select if field not applicable</option>  
			                <?php 
			                for($i=0;$i<$dept_count;$i++)
			                {
			                ?>
			                	<option value="<?php echo $dept_id[$i]?>"><?php echo $department_name[$i]?></option selected>
			                <?php 
			            	}
			                ?> 
			    	</td>
			    </tr>
			    <tr>
			    	<td>
			    		Reason/Remarks
			    	</td>
			    	<td colspan="2">
			    		<input type="text" name="remarks" placeholder="Do not enter if field not applicable">
			    	</td>
			    </tr>
			    <tr>
			    	<td colspan="3" align="center">
			        	<button type="SUBMIT">SUBMIT</button>
			        </td>
			    </tr>
</table>
</form>
<?php session_unset(); ?>
</center>
</body>
</html>