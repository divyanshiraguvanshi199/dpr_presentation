<?php

	include('index__trial.php');

	if($_SERVER["REQUEST_METHOD"] == "POST")
	{
		$db_conn=mysqli_connect('localhost','root','','performance_indicator');
		if(!$db_conn)
		{
			echo "Connection Unsuccessful";
		}

		 $date=$_POST['Date'];
		  $obtained=$_POST['obtained'];
		  $target=$_POST['target'];
		  $deptid=$_POST['applicable_dept'];
		  $desc_id=$_POST['Description'];
		  $remarks=$_POST['remarks'];
		  $grade_name=$_POST['grade'];

		$sql="INSERT into transition_table (Entry_date,Obtained_Value,Target_Value,Dept_id,Desc_id,Remarks,GradeName) VALUES (?,?,?,?,?,?,?)";
		if($query = $db_conn->prepare($sql))
		{
			$query->bind_param("siiiiss", $date, $obtained, $target, $deptid, $desc_id, $remarks, $grade_name);
			if($query->execute())
			{
			?>	<script>
					window.alert("Value successfully inserted");
				</script>
		<br>
		<?php
				return('index__trial.php');
			}
			else
			{
				echo $db_conn->error;
			}
		}
				
    }

?>



