void keyPressed(){
 if(key == DELETE){delay(500);setup();}
 if (uni_val==0 && key==ENTER){uni_val = 1;}
 if(uni_val==1 && key==ENTER && turn == 1){turn = 2;}
 if(uni_val==1 && key==ENTER && turn == 3){uni_val = 2;}
 if(uni_val==2 && (key=='a' || key=='A')){activ = true;}
 if(uni_val==3 && key==ENTER){setup();}
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
PImage Waka1,Waka2,Waka3,Waka4,Waka5;
PImage WK1M,WK2M,WK3M,WK4M,WK5M;
void cargaImash(){
 WK1M = loadImage("Per1M.png");
 WK2M = loadImage("Per2M.png");
 WK3M = loadImage("Per3M.png");
 WK4M = loadImage("Per4M.png");
 WK5M = loadImage("Per5M.png");
 Waka1 = loadImage("Per1.png");
 Waka2 = loadImage("Per2.png");
 Waka3 = loadImage("Per3.png");
 Waka4 = loadImage("Per4.png");
 Waka5 = loadImage("Per5.png");
 Waka1.mask(WK1M);
 Waka2.mask(WK2M);
 Waka3.mask(WK3M);
 Waka4.mask(WK4M);
 Waka5.mask(WK5M);
}
//---------------------------< sub-division }
class Jugake{
 float xi,yi; int Spy; boolean push,click;
 Jugake(int Spy_){
  Spy = Spy_;
 }
 void display(float x,float y){
  imageMode(CENTER);
  xi = 80; yi = 120;
  selected(Spy,x,y,xi,yi);
  phisyc(x,y);
 }
 void phisyc(float x,float y){
  if ((mouseX < x+(xi/2) && mouseX > x-(xi/2)) && (mouseY < y+(yi/2) && mouseY > y-(yi/2))){
   if (mousePressed && mouseButton == LEFT){push = false; click = true;}
   else{push = true; click = false;}
  }
  else{push = false; click = false;}
  rectMode(CENTER);
  if(push){image(Sec,x,y,xi,yi);}
  if(click){fill(20,200,20,64); rect(x,y,xi,yi); image(Sec,x,y,xi,yi);}
  elec(click,Spy);
 }
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
void ScoreBoard(int point1,int point2){
 color c1,c2;
 c1 = color(#B4D2DC);
 c2 = color(#B4D2DC);
 if(life1 < 20){c1 = color(#FA9696);}
 else{if(life1 < 35){c1 = color(#F0F096);} else{if(life1 < 50){c1 = color(#B4DCB4);}}}
 if(life2 < 20){c2 = color(#FA9696);}
 else{if(life2 < 35){c2 = color(#F0F096);} else{if(life2 < 50){c2 = color(#B4DCB4);}}}
 noStroke();
 rectMode(CORNER);
 fill(c1,220);
 rect(30,10,point1*3,50);
 fill(c2,220);
 rect((width/2)+30,10,point2*3,50);
 imageMode(CENTER);
 image(score,width/2,35,800,70);
}
//---------------------------< sub-division }
class Power{
 float x_,y_,w_,h_; int Spy; boolean turno,push2,click2;
 Power(float x__,float y__){
  x_ = x__;
  y_ = y__;
  w_ = 200;
  h_ = 100;
 }
 void ejctfunc(){
  if ((mouseX < x_+(w_/2) && mouseX > x_-(w_/2)) && (mouseY < y_+(h_/2) && mouseY > y_-(h_/2))){
   if (mousePressed && mouseButton == LEFT){push2 = false; click2 = true; turno = true;}
   else{push2 = true; click2 = false; turno = false;}
  }
  else{push2 = false; click2 = false; turno = false;}
  demos();
 }
 void demos(){
  rectMode(CENTER);
  noStroke();
  if(push2){
   fill(#B4D2DC,64);
   rect(x_,y_,w_,h_);
  }
  if(click2){activ = false; turn2 *= -1;}
 }
 void damage(int alv){
  if(turno){
   switch(turn2){
    case -1: life1 -= alv; break;
    case 1: life2 -= alv; break;
   }
   push2 = false; click2 = false; turno = false;
  }
 }
}
//---------------------------< sub-division }
void carga2(){
 But1 = new Power(width/2-200,height-110);
 But2 = new Power(width/2,height-110);
 But3 = new Power(width/2+200,height-110);
}
void empalm(){
 But1.ejctfunc();
 switch(turn2){
  case -1:
   if(life1 > 25){But2.ejctfunc();} else{fill(96,112); rect(width/2,height-110,200,100);}
  break;
  case 1:
   if(life2 > 25){But2.ejctfunc();} else{fill(96,112); rect(width/2,height-110,200,100);}
  break;
 }
 switch(turn2){
  case -1:
   if(life1 > 50){But3.ejctfunc();} else{fill(96,112); rect(width/2+200,height-110,200,100);}
  break;
  case 1:
   if(life2 > 50){But3.ejctfunc();} else{fill(96,112); rect(width/2+200,height-110,200,100);}
  break;
 }
}