<?php
$ac = isset($_REQUEST['ac']);
if($ac == 'info'){
    phpinfo();
}
echo "welcome!";