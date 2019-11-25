<?php 

$con= mysqli_connect("localhost","root","","social_network");

	if(isset($_GET['post_id'])){
		$post_id=$_GET['post_id'];

		$delete_post= "DELETE FROM post where post_id='$post_id' ";
		$run_delete = mysqli_query($con, $delete_post);

		if($run_delete){
			echo " <script>alert('A post have been deleted!')</script>";
			echo "<script>window.open('../home.php','_self')</script>";

	}
}

 ?>