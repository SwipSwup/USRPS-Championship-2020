<?php
require_once "../../vendor/autoload.php";
use Doctrine\DBAL\DriverManager;

$gameID = $_GET["id"];



$connectionParams = array(
    'dbname' => 'usrps',
    'user' => 'root',
    'password' => '',
    'host' => 'localhost',
    'driver' => 'pdo_mysql',
);

$conn = DriverManager::getConnection($connectionParams);

$deleteRound = $conn->createQueryBuilder();
$deleteRound
    ->delete('game')
    ->where("pk_gameNr = " . $gameID);

$deleteRound->executeQuery();

echo $gameID;
