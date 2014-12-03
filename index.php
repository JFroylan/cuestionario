<script src="./js/jquery.min.js"></script>
<?php

require('helpers.php');
require('template/footer.php');
require('template/header.php');
require('./clases/Usuario.php');
require('./bd/bd.php');

if(empty($_GET['url']))
    $_GET['url']='login.asp';



controller($_GET['url']);



