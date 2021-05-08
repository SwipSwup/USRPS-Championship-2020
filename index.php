
<?php
require_once "vendor/autoload.php";
require_once "src/php/Tournament.php";
require_once "src/php/GameRound.php";

$loader = new \Twig\Loader\FilesystemLoader('./templates');
$twig = new \Twig\Environment($loader);

$testTournament = new Tournament("testTournament", "29-09-2021");
$testGame = new GameRound("29-09-2021", "11:11");
$testGame->addPlayerOne("Player 1", 1);
$testGame->addPlayerTwo("Player 2", 2);
$testTournament->addGameRound($testGame);
$testTournament->addGameRound($testGame);
$testTournament->addGameRound($testGame);
$testTournament->addGameRound($testGame);

$tournaments = [$testTournament, $testTournament];

echo $twig->render(
    'template.html',
    ['tournaments' => $tournaments]
);

