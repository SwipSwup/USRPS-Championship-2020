<?php
//require_once "./GameRound.php";
class Tournament
{
    private string $name;
    private string $date;
    private array $gameRounds;
    private int $champNr;

    public function __construct(string $name, string $date, int $champNr, $gameRounds = []) {
        $this->name = $name;
        $this->date = $date;
        $this->gameRounds = $gameRounds;
        $this->champNr = $champNr;
    }

    public function addGameRound(GameRound $gameRound) {
        array_push($this->gameRounds, $gameRound);
    }

    public function getChampNr() : int {
        return $this->champNr;
    }

    public function getGameRounds() : array {
        return $this->gameRounds;
    }

    public function getTournamentName() : string {
        return $this->name;
    }

    public function getTournamentDate() : string {
        return $this->date;
    }
}