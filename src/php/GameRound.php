<?php


class GameRound
{
    private string $date;
    private string $time;
    private array $playerOne;
    private array $playerTwo;
    private int $gameID;

    public function __construct(int $gameID, string $date, string $time) {
        $this->date = $date;
        $this->time = $time;
        $this->gameID = $gameID;
    }

    public function addPlayerOne(string $name, int $pick){
        $this->playerOne = ['name' => $name, 'pick' => $pick];
    }

    public function addPlayerTwo(string $name, int $pick){
        $this->playerTwo = ['name' => $name, 'pick' => $pick];
    }

    public function getGameDate() : string {
        return $this->date;
    }

    public function getGameTime() : string {
        return $this->time;
    }

    public function getPlayerOne() : array {
        return $this->playerOne;
    }

    public function getPlayerTwo() : array {
        return $this->playerTwo;
    }

    public function getGameID() : int {
        return $this->gameID;
    }
}