void setup(){
  size(1000,500);
  sub_menu_1 = new Menu("Exit");
  sub_menu_2 = new Menu("View High Score");
  sub_menu_3 = new Menu("Start Game");
  
}// end setup

// The class name always starts with uppercase!!
//ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

Menu sub_menu_1;
Menu sub_menu_2;
Menu sub_menu_3;
float menu_pos;

Boolean start_game;



void draw(){
  
  background(240,240,240);

  sub_menu_1.render();
  sub_menu_2.render();
  sub_menu_3.render();
  
 // println("mouse x = "+ mouseX + "mouse y = "+mouseY);
  
}// end draw