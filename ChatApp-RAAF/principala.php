<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: login.php");
  }
?>
<?php include_once "header1.php"; ?>
<html>
<body>
<frameset cols="30%,*"> 
     <frameset  > <iframe src="users.php" noresize="noresize" scrolling="no" style="width: 600px; height:800px; padding: 10px;" frameborder="0"> </iframe>
    </frameset>
     <frameset  > <iframe src="pagina.php" noresize="noresize" scrolling="no" style="width: 1000px;
      height: 800px; padding: 10px;" name="chat" frameborder="0"> </iframe>
    </frameset>
</frameset>

</body>
</html>
