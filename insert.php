<?php
		// step 1 : Add your DataBase name instead of "Collge"
		$conn = mysqli_connect("localhost", "root", "", "registration form");	
		

		//Step2 : 
		$Name = $_REQUEST['Name'];
		$Email = $_REQUEST['Email'];
		$Phone = $_REQUEST['Phone'];
		

		// Step3: Add Table Name instead 'alldata'
		$query = 'INSERT INTO `login form` (`name`, `Email`, `Phone`) VALUES ("'.$Name.'", "'.$Email.'", "'.$Phone.'");';
		


		$run = mysqli_query($conn, $query);

		if($run){
			echo 'Your Data is Updated, Check your SQL';
		}
		
		// Close connection
		// mysqli_close($conn);
		?>
