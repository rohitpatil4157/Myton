<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="generator" content="">
    <title>Shree.</title>

    <link rel="canonical" href="">

    

    <!-- Bootstrap core CSS -->
<link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
<link rel="manifest" href="https://getbootstrap.com/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.com/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css">



<meta name="theme-color" content="#7952b3">

  
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">

<style type="text/css">
    html{
  transition: 0.5s cubic-bezier(0.55, 0.055, 0.675, 0.19);
}
html a{
  text-decoration : none;
}
html::-webkit-scrollbar {
    width: 8px;
    border-radius: 5px;
}

html::-webkit-scrollbar-thumb {
    background: rgba(0, 0, 0, 0.839);
    border-radius: 5px;
}

html::-webkit-scrollbar-thumb:hover {
    transition: 2s cubic-bezier(0.55, 0.055, 0.675, 0.19);
    background: rgb(18, 252, 135);
    background: var(--theme-color);
}

::selection {
    background: var(--theme-color);
    color: white;
    cursor: pointer;
}

:root {
    --theme-color: #00095E;
    --txt-color: whitesmoke;
}
.navbar{
  border-bottom: 3.2px solid #7dffbf;
  margin: 0px;
}
.navbar .container-fluid{
  margin: 0px 50px;
}
.btn-primary {
  color: #fff;
  background-color: #0d6efd;
  border-color: #0d6efd;
  margin-top: -39rem;
  margin-left: -1rem;
}

</style>

  </head>
  <body>
    
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.php"><h1>Shree.</h1></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="domestic.html">Domestic Holidays</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="international.html">International Holidays</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
</header>

<main>

 <section class="topheader">
  <div class="container">
        <div class="row">
        
            <h3 class="mt-4 mb-4 theader">


<?php
      include("connect.php");
        $qs=$_SERVER['QUERY_STRING'];         
        $data=mysql_query("select * from tripinfo where pcode='$qs'");
        $file_path = "admin/header/";
                  
        while($rec=mysql_fetch_row($data))
        {
          $a=$rec[8];
          $src=$file_path.$a;
          $trip=$rec[1];
          $_SESSION['trip']=$trip;
          $trip=$_SESSION['trip'];
          echo "$trip";
          echo "<br>";
          echo "<span style='font-size:16px;'><i class='fa fa-clock-o'></i> Package Code #<td> $rec[0]&nbsp;&nbsp;&nbsp;&nbsp;<i class='fa fa-calendar'></i> $rec[4]&nbsp;&nbsp;&nbsp;&nbsp;<i class='fa fa-inr'></i> <b>$rec[3]</b></span></div>";
        }
          ?>
            </h3>
            
          </div>
        </div>

</section>


<div class="container">
<div class="row">

<div class="col-md-12">

 <?php
        $qs=$_SERVER['QUERY_STRING'];
        include("connect.php");
        $dataab=mysql_query("select pname from tripinfo where pcode='$qs'");
        while($recab=mysql_fetch_row($dataab))
        {
        echo "<h3 class=trheading><span><i class='fa fa-info'></i> About $recab[0]</h3>";  
        }
        
        ?></h3>
                  <?php
        $qs=$_SERVER['QUERY_STRING'];
        include("connect.php");
        $dataab=mysql_query("select about from tripinfo where pcode='$qs'");
        while($recab=mysql_fetch_row($dataab))
        {
        echo "<p style='padding:4px; text-align:justify; font-size:14px'>$recab[0]</p>";  
        }
        
        ?>
<br>
</div>
</div>
</div>


<div class="container">
<div class="row">
<div class="col-md-8">

<table id="example" class="table table-bordered">
    <thead>
      
     <tr>
     <td colspan='3px' style='background: #6c757d; padding: 8px; color: white; font-size:22px; font-weight:bold; text-align: center;'><?php echo "$trip"; ?> Itinerary</td>
     </tr>
    
    </thead>
    <tbody>
      <?php
        
        include("connect.php");
        $qs=$_SERVER['QUERY_STRING'];         
        $data=mysql_query("select * from itinerary where pcode='$qs' order by id ASC");
        $file_path = "admin/header/";
                
        while($rec=mysql_fetch_row($data))
        {
          
          
        echo '<tr><td><span><div class=number> '.$rec[2].'</div></td>';
        echo '<td><span style=color:#00293c><b>'.$rec[3].'</b></span><br>
                
         <span style="text-align:justify; margin-left:4px; color:black"> '.$rec[4].'</span></td></tr>
        ';
      
    }
    
      ?>
    
  <br><br>
    </tbody>
  </table>

</div>

<div class="col-md-4">

           

           <?php
if(isset($_POST['sub']))
{
$enqid=$_POST['enqid'];
$name=$_POST['name'];
$mobile=$_POST['mobile'];
$email=$_POST['email'];
$service=$_POST['service'];

$qs=$_SERVER['QUERY_STRING'];

 $sql = "insert into enquiry values('$enqid',
   '$name',
   '$mobile',
   '$email',
   '$service')";

if(mysql_query($sql) )
 {

//echo "<script>alert('Enquiry Add Successfully');</script>";
echo ("<script LANGUAGE='JavaScript'>
    window.alert('Enquiry Add Successfully');
    window.location.href='demestic-view.php?$qs';
    </script>");
}
else{
 mysql_error();
}
}
?>
                  

</div>




</div>
</div>



<div class="container">
  
<div class="row">

<div class="col-md-12">
<h4 style="text-align: right;"><span><i class="fa fa-picture-o"></i> Gallery
</span>
</h4><hr><br></div>
</div>
</div>


<div class="container">
  
<div class="row">

<div class="col-md-12" style="overflow-y: scroll;">
   <table>
         <?php
        $qs=$_SERVER['QUERY_STRING'];
        include("connect.php");
        $file_path1 = "admin/slider/";          
        $data=mysql_query("select * from gallery where pcode='$qs' order by id ASC");           
        echo "<div class='slideshow-container'>";   
        while($rec=mysql_fetch_row($data))
        {
        
        $aa=$rec[3];
          $src1=$file_path1.$aa;
        $id=$rec[0];  
      
echo '<td><div class="card-deck"><div class="card" style="width: 18rem;">
  <img class="card-img-top" src="'.$src1.'" style="height:188px; width:100%;">
</div></div></td>';

       
       }
        
        ?>
</table>
</div>
</div>
</div>


<p>&nbsp;</p>

  <!-- FOOTER -->
  <footer class="container">
    <p class="float-end"><a href="#">Back to top</a></p>
    <p>&#169; All right Reserved &#124; Shree Tours & Travels</p>

  </footer>
</main>


    <script src="https://getbootstrap.com/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

      <script src="js/slick.min.js"></script>
<!-- Wow Animation JS -->
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

  </body>
</html>