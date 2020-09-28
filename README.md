# LDS 21 Blackjack database crate script
 This solution contains MSSQL database create script.
 Database consists of 5 tables which are listed below;
 
 - Card: *Stores the cards in a standard type of playing cards.*
 - CardPoint: *Stores the scoring values of the cards by specific gagmes*
 - CardType: *Stores the card type.*
 - Game: *Stores playing card games, which is '21' by default*
 - GameToCard: *Stores the matching references between games and the cards*
 
 Tables are designed and constructed to handle any type of card game, by default it is configured for 21 game. THis database can be implemeneted to any type of card game.
