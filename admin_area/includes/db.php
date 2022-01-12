 <!-- kết nối với mysql -->
<?php
    $con = mysqli_connect("localhost","root","","fastfood");
    
    if(mysqli_connect_error()){
        echo("failed to connect to mysql." . mysqli_connect_error());
    }else{
        
    }
    
?>
