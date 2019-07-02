<html>
	<head>
		<style>
			table{
				font-family: Helvetica;
			}
		</style>
	<meta charset="UTF-8">
        <title>DPR DATA ENTRY SYSTEM INDEX</title>
    </head>
    <body>
    <center>
    <?php 

        session_start();

        $conn = mysqli_connect('localhost', 'root','', 'performance_indicator');
        $sql = "SELECT * FROM department_table";
        $result = $conn->query($sql);
        $dept_count=$result->num_rows;
        $dept_id=array();
        $dept_name=array();

        while($row=mysqli_fetch_array($result))
        {
            $dept_id[]=$row['Dept_id'];
            $dept_name[]=$row['Department_Name'];
        }

    ?>
    <table cellspacing="5" cellpadding="2" bgcolor="silver" border="black">
    <form action="insert.php" method="POST">
    
    <tr>
         <td colspan="2">
            <select name="Dept" id="Dept" required>
                <option value="NULL">No department</option>  
                <?php 
                for($i=0;$i<$dept_count;$i++)
                {
                ?>
                		<option value="<?php echo $dept_id[$i]?>"><?php echo $dept_name[$i]?></option selected>
                <?php 
            	}
                ?>      
            </select>
        </td>
    </tr>
    <tr>	
        <td>
        	<button type="SUBMIT">Insert Data</button>
        </td>
    
	</form>
    <td><button type="SUBMIT">Display Data</button></td></tr>
    </table>

				
	<?php
		session_unset();
	?>
	</center>
	</body>
</html>