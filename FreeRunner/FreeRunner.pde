void setup(){
  size(1000,500);
  start_game = false;
  sub_menu_1 = new Menu("Settings",1);
  sub_menu_2 = new Menu("View High Score",2);
  sub_menu_3 = new Menu("Start Game",3);
  
  
  // player
  tRex = new T_rex(70 , height/2 , 0.3, 'w', 's', color(83,83,83) ); // x , y , scale, jump button, duck button , color
  gameObjects.add(tRex);
  
 
  cloud1 = new Cloud(100+ width,height/4, 0.4, 50, 1 );  // x , y, scale, alpha, cloud speed
  gameObjects.add(cloud1);
  
  cloud2 = new Cloud(300+ width,height/3, 0.3, 50 , 1);  // x , y, scale, alpha, cloud speed
  gameObjects.add(cloud2);
  
  cloud3 = new Cloud(480+ width,height/3, 0.4, 55, 1);  // x , y, scale, alpha, cloud speed
  gameObjects.add(cloud3);
  
  cloud4 = new Cloud(700+ width,height/4, 0.3, 55, 1);  // x , y, scale, alpha, cloud speed
  gameObjects.add(cloud4);
  
  cloud5 = new Cloud(900+ width,height/4, 0.4, 55, 1);  // x , y, scale, alpha, cloud speed
  gameObjects.add(cloud5);
  
  
  
  
  ground = new Ground(0, height/2 + 40,1);

  
}// end setup


ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}


// Game Menu
Menu sub_menu_1;
Menu sub_menu_2;
Menu sub_menu_3;

// sprite
T_rex tRex;

Cloud cloud1, cloud2, cloud3, cloud4, cloud5;

Ground ground;


float menu_pos;

Boolean start_game;
float intro_animation;
float intro_speed;


void draw(){
  
   background(255,255,255);

  if(start_game == false){
    intro_animation = width + (width/5);
    intro_speed = width *.03;
    
    background(0,0,0);
    sub_menu_1.render();
    sub_menu_2.render();
    sub_menu_3.render();
  }
  
  if(start_game == true && intro_animation > 0){
    
    ground.render();
    
    tRex.update();
    tRex.render();
    
    fill(0);
    intro_animation -= intro_speed;
    ellipse(width/2,height/2,intro_animation,intro_animation);
  }
  
  
  if(start_game == true && intro_animation <= 0){
    
    ground.render();
    
    for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
    {
       GameObject go = gameObjects.get(i);
       go.update();
       go.render();
    }   

  }
  
}// end draw



void mousePressed() {
    tRex.jump();
}



void collision(){
  
  
  
}