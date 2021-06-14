
<?php
require_once "vendor/autoload.php";
require_once "src/php/Tournament.php";
require_once "src/php/GameRound.php";

$connectionParams = array(
    'dbname' => 'usrps',
    'user' => 'root',
    'password' => '',
    'host' => 'localhost',
    'driver' => 'pdo_mysql',
);
$conn = \Doctrine\DBAL\DriverManager::getConnection($connectionParams);
$selectChampionships = $conn->createQueryBuilder();
$selectGames = $conn->createQueryBuilder();
$selectPlayers = $conn->createQueryBuilder();

$loader = new \Twig\Loader\FilesystemLoader('./templates');
$twig = new \Twig\Environment($loader);

$tournaments = [];

$selectChampionships
    ->select('pk_champNr', 'name', 'date')
    ->from('championship')
;

$selectGames
    ->select('pk_gameNr', 'fk_champNr', 'fk_player1', 'fk_player2', 'signP1', 'signP2', 'time')
    ->from('game')
;

foreach($conn->query($selectChampionships)->fetchAllAssociative() as $item) {
$tournament = new Tournament($item["name"], $item["date"], $item["pk_champNr"]);
    foreach($conn->query($selectGames->where('fk_champNr = ' . $item["pk_champNr"]))->fetchAllAssociative() as $gameItem){
        $game = new GameRound($gameItem["pk_gameNr"], $item["date"], $gameItem["time"]);
        $game->addPlayerOne($gameItem["fk_player1"], $gameItem["signP1"]);
        $game->addPlayerTwo($gameItem["fk_player2"], $gameItem["signP2"]);
        $tournament->addGameRound($game);
    }
array_push($tournaments, $tournament);
}


//while (($row = $conn->query($selectChampionships)->fetchAssociative()) !== false) {
  //  echo $row['name'];
//}

echo $twig->render(
    'template.html',
    ['tournaments' => $tournaments]
);





