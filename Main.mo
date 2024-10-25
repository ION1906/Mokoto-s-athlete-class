actor {
  public query func athleteRating() : async Float {
    //Determining an atheletes rating from 1st to 4th level on the amount of time taken to run a 100m race
    let time = [12.3, 10.9, 11.0, 10.8, 12.0];
    let position = [1.0, 2.0, 3.0, 4.0, 5.0];
    var i = 0;
    var athleteClass = 0.0;
    var athletePoints = 0.0;
    var totalPoints = 0.0;
    var tPosition = 0.0;
    while (i < time.size()) {
      if(time[i] >= 0 and time[i] <= 8) {
        athleteClass := 1;
      }
      else if (time[i] >= 8.1 and time[i] <= 10) {
        athleteClass := 2;
      }
      else if (time[i] >= 10.1 and time[i] <= 12) {
        athleteClass := 3;
      }
      else {
        athleteClass := 4;
      };
      tPosition := tPosition + position[i];
      athletePoints := athleteClass * position[i];
      totalPoints := athletePoints + totalPoints;
      i := i + 1;
    };
    var point = totalPoints / tPosition;
    return point;
  };
}
