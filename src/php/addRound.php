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

$gameCounter = $conn->createQueryBuilder();

$gameCounter = $conn->executeQuery("SELECT * FROM game")->rowCount();

$pNames = $conn->createQueryBuilder()
    ->select("pk_gamertag")
    ->from("player")
    ->executeQuery()->fetchAllAssociative();

$tmp = array();
foreach ($pNames as $item) {
    array_push($tmp, $item["pk_gamertag"]);
}

if (!in_array($playerOne, $tmp)) {
    $conn->createQueryBuilder()
        ->insert("player")
        ->values(
            array(
                "pk_gamertag" => '?',
                "birthday" => '?'
            ))
        ->setParameter(0, $playerOne)
        ->setParameter(1, 'null')
        ->executeQuery();
}

if (!in_array($playerTwo, $tmp)) {
    $conn->createQueryBuilder()
        ->insert("player")
        ->values(
            array(
                "pk_gamertag" => '?',
                "birthday" => '?'
            ))
        ->setParameter(0, $playerTwo)
        ->setParameter(1, 'null')
        ->executeQuery();
}

$addRound
    ->insert('game')
    ->values(
        array(
            'pk_gameNr' => '?',
            'fk_champNr' => '?',
            'fk_player1' => '?',
            'fk_player2' => '?',
            'signP1' => '?',
            'signP2' => '?',
            'time' => '?'
        )
    )
    ->setParameter(0, $gameCounter + 1)
    ->setParameter(1, $champNr)
    ->setParameter(2, $playerOne)
    ->setParameter(3, $playerTwo)
    ->setParameter(4, $playerOneSign)
    ->setParameter(5, $playerTwoSign)
    ->setParameter(6, '\'11:11:20\'');


$addRound->executeQuery();

header("Location: http://localhost/USRPS-Championship-2020/index.php", true, 301);
exit();




