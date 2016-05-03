<?php

// Server: wiserairmlp-dev-sqlserver.database.windows.net,1433 \r\n
// SQL Database: wiserairmlp-dev\r\n
// User Name: WiserTeam\r\n\r\n
// PHP Data Objects(PDO) 
// Sample Code:\r\n\r\ntry {\r\n  

try {
$conn = new PDO ( "sqlsrv:server = tcp:wiserairmlp-dev-sqlserver.database.windows.net,1433; Database = wiserairmlp-dev", "WiserTeam", "SEDevelopment1");
$conn->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}

catch ( PDOException $e ) {
  print( "Error connecting to SQL Server." );
  die(print_r($e));
}

// $connectionInfo = array("UID" => "WiserTeam@wiserairmlp-dev-sqlserver\", \"pwd\" => \"{your_password_here}\", \"Database\" => \"wiserairmlp-dev\", \"LoginTimeout\" => 30, \"Encrypt\" => 1, \"TrustServerCertificate\" => 0);\r\n$serverName = \"tcp:wiserairmlp-dev-sqlserver.database.windows.net,1433\";\r\n$conn = sqlsrv_connect($serverName, $connectionInfo); 
?>
