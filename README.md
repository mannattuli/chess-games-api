# Chess-games-api

Rest API for random chess games.
The API returns the elo of both the player, the game url and the pgn of the game.

## Run it locally 
* Clone the repository -
``` git clone https://github.com/mannattuli/chess-games-api.git ```
* Run the migrations -
``` rake db:migrate ```
* Run the localhost server -
``` rails s```

## Documentation

### Parameters
- ``` white_elo ``` - The elo rating of the user playing with white on chess.com at the time of the game.
- ``` black_elo ``` - The elo rating of the user playing with black on chess.com at the time of the game.
- ``` url ``` - The url of the game on chess.com.
- ``` pgn ``` - The pgn of the game.

### URL
* For the json of all the games - ``` /games ```
* For the json of a specific game - ``` /games/{:id} ```

### Example
A request for the game with id 1 would look like: 
``` https://chess-games-api.herokuapp.com/games/1 ```

### Response Object
The response object would look like:
```json
{
  "id":1,
  "white_elo":1379,
  "black_elo":1343,
  "url":"https://www.chess.com/live/game/5659281634",
  "pgn":"1. d4 e6 2. c4 d5 3. Bf4 Nd7 4. e3 Ngf6 5. Nf3 h6 6. Nc3 g5 7. Bg3 Bb4 8. cxd5 Bxc3+ 9. bxc3 Nxd5 10. c4 N5b6 11. Ne5 Qe7 12. c5 Nd5 13. Qa4 c6 14. Bd3 b5 15. Qc2 Nb4 16. Qc3 Nxd3+ 17. Qxd3 Qf6 18. Nxc6 Bb7 19. Qxb5 Bxc6 20. Qxc6 Rd8 21. Bd6 e5 22. Bxe5 Qxc6 23. Bxh8 f6 24. O-O Kf7 25. Rac1 Rxh8 26. Rfd1 Qd5 27. c6 Nb6 28. c7 Rc8 29. Rc5 Qd6 30. Rdc1 Kg6 31. Rc6 Qd5 32. R1c5 Qxa2 33. h3 Qb1+ 34. Rc1 Qe4 35. R1c3 Nd5 36. f3 1-0",
  "created_at":"2022-01-18T09:49:35.689Z",
  "updated_at":"2022-01-18T09:49:35.689Z"
}
```
