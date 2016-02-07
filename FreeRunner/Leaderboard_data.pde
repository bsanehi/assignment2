class Leaderboard_data{
  
  String name;
  String score;
  
  Leaderboard_data(String line){
    
    String[] parts = line.split(",");
    name = parts[0];
    score = parts[1];
  }
  
}// end Leaderboard_data