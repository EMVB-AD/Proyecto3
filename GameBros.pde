PImage Press,PLA1,PLA2,PLA3,Sec,SecM,score,scorem,bar,barM,logoP,logoM;
int kes,uni_val,turn,turn2,life1,life2,repo1,repo2;
boolean vale,activ,points;
float anim;

Win ven1,ven2,ven3;
Jugake Juka1,Juka2,Juka3,Juka4,Juka5;

Power But1,But2,But3;

void setup(){
 size(800,450);
 noSmooth();
 frameRate(50);
 kes = int(random(3));
 uni_val = 0; turn = 0; perso1 = 0; perso2 = 0; turn2 = 1;

 anim = -120;

 ven1 = new Win(#97A76E);
 ven2 = new Win(#6E7DA7);
 ven3 = new Win(#A76E78);

 Press = loadImage("Background.png");
 PLA1 = loadImage("BGF_1.png");
 PLA2 = loadImage("BGF_2.png");
 PLA3 = loadImage("BGF_3.png");

 score = loadImage("Score.png");
 scorem = loadImage("ScoreMask.png");
 score.mask(scorem);

 Sec = loadImage("WakaS.png");
 SecM = loadImage("WakaSM.png");
 Sec.mask(SecM);

 cargaImash();
 Juka1 = new Jugake(0);
 Juka2 = new Jugake(1);
 Juka3 = new Jugake(2);
 Juka4 = new Jugake(3);
 Juka5 = new Jugake(4);

 carga2();

 bar = loadImage("Barra.png");
 barM = loadImage("BarraSkin.png");
 bar.mask(barM);

 logoP = loadImage("Logo.png");
 logoM = loadImage("Logomask.png");
 logoP.mask(logoM);

 life1 = 100;
 life2 = 100;
}

void draw(){
 //background(#0000FF);
 seleccion(uni_val);
}