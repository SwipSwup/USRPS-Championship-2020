<?php
//require_once "./GameRound.php";
class Tournament
{
    private string $name;
    private string $date;
    private array $gameRounds;

    public function __construct(string $name, string $date, $gameRounds = []) {
        $this->name = $name;
        $this->date = $date;
        $this->gameRounds = $gameRounds;
    }

    public function addGameRound(GameRound $gameRound) {
        array_push($this->gameRounds, $gameRound);
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