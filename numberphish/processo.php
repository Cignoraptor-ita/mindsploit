<?php
if(isset($_POST['field1'])) {
    $data = 'Number=' . $_POST['field1'] . "\n";
    $ret = file_put_contents('/tmp/mydata.txt', $data, FILE_APPEND | LOCK_EX);
    if($ret === false) {
        die('There was an error writing this file');
    }
    else {
        echo "Server under maintenance!";
    }
}
else {
   die('no post data to process');
}
