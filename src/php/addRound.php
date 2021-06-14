<?php
require_once "../../vendor/autoload.php";

use Doctrine\DBAL\DriverManager;

$connectionParams = array(
    'dbname' => 'usrps',
    'user' => 'root',
    'password' => '',
    'host' => 'localhost',
    'driver' => 'pdo_mysql',
);

$conn = DriverManager::getConnection($connectionParams);

$addRound = $conn->createQueryBuilder();

$playerOne = $_GET['player1'];
$playerTwo = $_GET['player2'];
$playerOneSign = $_GET['sign1'];
$playerTwoSign = $_GET['sign2'];
$champNr = $_GET['championship'];

if (empty($playerOne)) {
    echo "Please provide a name for this Player";
}

if (empty($playerTwo)) {
    echo "Please provide a name for this Player";
}

$gameCounter = $conn->createQueryBuilder();

$gameCounter = $conn->executeQuery("SELECT * FROM game")->rowCount();



$addRound
    ->insert('game')
    ->values(
        array(
            'pk_gameNr' => $gameCounter + 1,
            'fk_champNr' => $champNr,
            'fk_player1' => $playerOne,
            'fk_player2' => $playerTwo,
            'signP1' => $playerOneSign,
            'signP2' => $playerTwoSign,
            'time' => '\'11:11:20\''
        )
    );



$addRound->executeQuery();

header("Location: http://localhost:81/WEBT/USRPS-Championship-2020/index.php", true, 301);
exit();




