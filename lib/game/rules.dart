import '../globals.dart' as globals;

class Rules {
  arraySelected(valeur, couleur, id) {
    globals.selectedCards = [
      ...globals.selectedCards,
      [valeur + couleur, id]
    ];
    print(globals.selectedCards);
    if (globals.selectedCards.length >= 2) {
      if (globals.selectedCards[0] != globals.selectedCards[1]) {
        globals.life--;
        if (globals.life == 0) {
          var failIds = "all";
          print("gameover");
          return failIds;
        }
        var failIds = globals.selectedCards;
        globals.selectedCards = [];
        print("loose");
        return failIds;
      } else {
        globals.cardsFound.add(globals.selectedCards[0]);
        globals.cardsFound.add(globals.selectedCards[1]);

        if (globals.cardsFound.length == globals.difficulte * 2) {
          print("you win");
          return;
        }
      }
    }
  }
}
