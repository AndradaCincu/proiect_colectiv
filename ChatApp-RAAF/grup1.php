<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: login.php");
  }
?>
<?php include_once "header2.php"; ?>
<body>
  <div class="wrapper">
    <section class="users">
      <header>
    <a href="gr.php" class="logout" target="chat" >Add</a>
      </header>
     
  
    </section>
  </div>
  


  

  <script src="javascript/users.js"></script>

</body>
</html>
