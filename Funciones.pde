void seleccion(int x){
 switch(x){
  case 0: VG1(); break;
  case 1: VG2(); break;
  case 2: VG3(); break;
  case 3: VG4(); break;
 }
}
//---------------------------< sub-division }
void VG1(){
 de();
 ven1.visual();
 if(uni_val == 0){inicio(height/2-40);}
 if(anim >= height/2-42 && uni_val == 0){textoM("Presiona 'Enter' para jugar",height-40);}
}
//---------------------------< sub-division }
void VG2(){
 de();
 ven2.visual();
 textoM("Selección de personajes",40);
 Juka1.display(width/2-200,height/2-80);
 Juka2.display(width/2-100,height/2+80);
 Juka3.display(width/2,height/2-80);
 Juka4.display(width/2+100,height/2+80);
 Juka5.display(width/2+200,height/2-80);
 switch(turn){
  default: textoM("Presiona 'Enter' para salir",height-40); break;
  case 0: textoM("Selecciona personaje 1",height-40); break;
  case 1: textoM("Presiona 'Enter' para continuar",height-40); break;
  case 2: textoM("Selecciona personaje 2",height-40); break;
 }
}
//---------------------------< sub-division }
void VG3(){
 de2();
 if(turn == 3 && uni_val == 2){turn = 0;}
 selected(perso1,200,height/2,160,240);
 pushMatrix(); translate(width-200,height/2); scale(-1,1);
 selected(perso2,0,0,160,240);
 popMatrix();
 ScoreBoard(life1,life2);
 menu();
 But1.damage(5);
 But2.damage(8);
 But3.damage(12);
 textoM("Presiona 'a' para atacar",height-40);
 switch(turn2){
  case -1: textoM("Turno jugador 1",90); break;
  case 1: textoM("Turno jugador 2",90); break;
 }
 if(life1 < 0){life1 = 0;}
 if(life2 < 0){life2 = 0;}
 if(life1 == 0 || life2 == 0){uni_val = 3; points = true;}
}
//---------------------------< sub-division }
void VG4(){
 de();
 ven3.visual();
 textoM("Puntuación",40);
 textoM("Partida actual",height/2-120);
 textoLR("Jugador 1:",life1,220,height/2-80);
 textoLR("Jugador 2:",life2,220,height/2-40);
 textoM("Acumulado",height/2+40);
 textoLR("Jugador 1:",repo1,220,height/2+80);
 textoLR("Jugador 2:",repo2,220,height/2+120);
 Mage(200,80);
 textoM("Presiona 'Enter' para jugar otra vez",height-40);
 if(points){repo1 += life1; repo2 += life2; points = false;}
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
void ce(){noStroke(); fill(250); textSize(25);}
void de(){imageMode(CORNERS); image(Press,0,0,width,height);}
void de2(){
 imageMode(CORNERS);
 switch(kes){
  case 0: image(PLA1,0,0,width,height); break;
  case 1: image(PLA2,0,0,width,height); break;
  case 2: image(PLA3,0,0,width,height); break;
 }
}
void textoM(String loa,float y){
 ce();
 textAlign(CENTER,CENTER);
 text(loa,width/2,y);
}
void textoLR(String loa,int va,float siz,float y){
 ce();
 textAlign(LEFT,CENTER);
 text(loa,siz,y);
 textAlign(RIGHT,CENTER);
 text(va,width-siz,y);
}
void Mage(float x,float y){
 noFill();
 strokeWeight(2);
 stroke(250);
 line(x,y,x,height-y);
 line(width-x,y,width-x,height-y);
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
class Win{
 color c;
 Win(color c_){c = c_;}
 void visual(){
  rectMode(CORNERS);
  fill(c/2,96);
  noStroke();
  rect(0,0,width,height);
 }
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
int perso1,perso2;
void elec(boolean des1,int gel){
 if(des1 && turn == 0){turn = 1; perso1 = gel;}
 if(des1 && turn == 2){turn = 3; perso2 = gel;}
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
void selected(int s,float a,float b,float w,float h){
 imageMode(CENTER);
 switch(s){
  case 0: image(Waka1,a,b,w,h); break;
  case 1: image(Waka2,a,b,w,h); break;
  case 2: image(Waka3,a,b,w,h); break;
  case 3: image(Waka4,a,b,w,h); break;
  case 4: image(Waka5,a,b,w,h); break;
 }
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
void menu(){
 if(activ){
  imageMode(CENTER);
  image(bar,width/2,height-60,800,200);
  empalm();
 }
}
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=| Separador )
void inicio(float y){if(anim < y){anim += 3;} imageMode(CENTER); image(logoP,width/2,anim,480,215);}