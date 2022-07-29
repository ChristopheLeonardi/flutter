import '../globals.dart' as globals;

class Rules {
  arraySelected(valeur, couleur, id, cardkey) {
    globals.selectedCards = [
      ...globals.selectedCards,
      [valeur + couleur, id, cardkey]
    ];
    if (globals.selectedCards.length >= 2) {
      if (globals.selectedCards[0][0] != globals.selectedCards[1][0]) {
        globals.life--;
        if (globals.life == 0) {
          return "gameover";
        }
        var failIds = globals.selectedCards;
        globals.selectedCards = [];
        print("loose");
        return failIds;
      } else {
        globals.cardsFound.add(globals.selectedCards[0]);
        globals.cardsFound.add(globals.selectedCards[1]);

        if (globals.cardsFound.length == globals.difficulte * 2) {
          return "winner";
        }
      }
    }
  }
}
