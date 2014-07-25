PyrTop gtwTop;
PyrTop gtwTop2;
Polyg gtwPoly;
Polyg gtwPoly2;
Polyg gtwPoly3;
Polyg gtwPoly4;
Blades gtwBlade;
BGshape myShape;
BGshape myShape2;
BGshape myShape3;
BGshape myShape4;
BGshape myShape5;

int x,y,z,r;
float rR,rR2,rD;

/////////////////////////////////////////////////////////////////////////////////////////////
void setup(){
  size(4000,3000, OPENGL);
  smooth();

  gtwTop = new PyrTop();
  gtwTop2 = new PyrTop();
  gtwPoly = new Polyg();
  gtwPoly2 = new Polyg();
  gtwPoly3 = new Polyg();
  gtwPoly4 = new Polyg();
  gtwBlade = new Blades();
  myShape = new BGshape();
  myShape2 = new BGshape();
  myShape3 = new BGshape();
  myShape4 = new BGshape();
  myShape5 = new BGshape();

  
  x = 1000;
  y = 1000;
  z = -15000;
  r = 0;
  rR = 0;
  rD = 0;
  
}

/////////////////////////////////////////////////////////////////////////////////////////////
void draw(){
  
  background(200,.25);
  ambientLight(250, 250, 250);
  
  rotateY(r);
  rotateX(rD);
  translate(x, y, z);
//////
  pushMatrix(); //OUTTER
    rotateY(rR);
    rR+=25;
    
    for(float i=0; i<360; i = i+5){
      pushMatrix();  
        rotateY(i);
        gtwTop.moving();
      popMatrix();
      
      rotateX(PI);
      
      pushMatrix();
        rotateY(i);
        gtwPoly.moving();
      popMatrix();
    }
  popMatrix();
//////  
  pushMatrix();
    rotateX(PI);
    translate(0,-100,0);
    rotateY(rR);
    for(float i=0; i<360; i = i+5){
      pushMatrix();  
        rotateY(i);
        gtwTop2.moving();
      popMatrix();
    }
  popMatrix();
//////  
  pushMatrix();
    rotateY(rR*-1);
  
    for(float j=0; j<360; j = j+20){
      pushMatrix();
        rotateY(j);
        translate(-100,0,0);
        gtwPoly.moving();
      popMatrix();
    }
  popMatrix();
//////
  pushMatrix();
    rotateY(rR2);
    rR2-=.01;
  
    for(float j=0; j<360; j = j+20){
      pushMatrix();
        rotateY(j);
        translate(0,500,0);
        gtwPoly2.moving();
      popMatrix();
    }
  popMatrix();
//////
  pushMatrix();
    rotateX(PI);
    translate(0,1000,0);

    rotateY(rR2);  
    for(float jJ=0; jJ<360; jJ = jJ+20){
      pushMatrix();
        rotateY(jJ);
        gtwPoly3.moving();
      popMatrix();
    }
  popMatrix();
//////  
  pushMatrix();
    rotateY(rR2*-.01);
  
    for(float k=0; k<200; k = k+20){
      pushMatrix();
        rotateY(k);
        for(float l=0; l<100; l+=20){ 
          rotateX(l);
          gtwBlade.moving();
        }
      popMatrix();
    }
  popMatrix();
//////
  pushMatrix();
      rotateY(rR2*-.1);

      for(float m=0; m<10; m = m+1){
      pushMatrix();
        rotateY(m);
        for(float n=0; n<20; n+=1){ 
          rotateX(n);
            myShape.moving();
        }
      popMatrix();
    }
  
  popMatrix();
    pushMatrix();
      rotateY(rR2*.1);

      for(float o=0; o<360; o = o+25){
      pushMatrix();
        rotateY(o);
        for(float p=0; p<400; p+=30){ 
          rotateX(p);
            myShape2.moving();
        }
      popMatrix();
    }
  popMatrix();

    pushMatrix();
      rotateY(rR2);

      for(float s=0; s<10; s = s+1){
      pushMatrix();
        rotateY(s);
        for(float t=0; t<10; t+=1){ 
          rotateX(t);
            myShape4.moving();
        }
      popMatrix();
    }
  popMatrix();

    pushMatrix();
      rotateY(rR2*-.2);

      for(float u=0; u<20; u = u+1){
      pushMatrix();
        rotateY(u);
        for(float v=0; v<200; v+=34){ 
          rotateX(v);
            myShape5.moving();
        }
      popMatrix();
    }
  
  popMatrix();
//////

  



/////////////////////////////////////////////////////////////////////////////////////////////
  
  if (keyPressed) {
      if (key == 'j'){
      saveFrame("infShapes-####.jpg");
      }
      if (keyCode == LEFT){
        x += 20;
      }
      if (keyCode == RIGHT){
        x-=20;
      }
        if (key =='r'){
        y += 20;
      }
      if (key =='f'){
        y-=20;
      }
      if (keyCode == UP){
        z += 50;
      }
      if (keyCode == DOWN){
        z-=50;
      }
        if (key=='d'){
        r+=.05;
      }
        if (key=='a'){
        r-=.05;
      }
        if (key=='w'){
        rD+=.05;
      }
        if (key=='s'){
        rD-=.05;
      }
  }//End Keypressed
  
} //End Draw

/////////////////////////////////////////////////////////////////////////////////////////////

class Amorph {
  
    float x, y, z;
    float a, b, c, d, e, f, g;
    float a1, b1, c1, d1, e1, f1, g1;
    float a2, b2, c2, d2, e2, f2, g2;
    float a3, b3, c3, d3, e3, f3, g3;
    float a4, b4, c4, d4, e4, f4, g4;
    float velA1,velA2,velA3,velA4,velA5,velA6;
    float velB1,velB2,velB3,velB4,velB5,velB6;
    float velC1,velC2,velC3,velC4,velC5,velC6;
    float velD1,velD2,velD3,velD4,velD5,velD6;
    float velE1,velE2,velE3,velE4,velE5,velE6;

  Amorph(){
     x = random(0,255);
     y = random(0,255);
     z = random(0,255);
     
     a = random(0,width);
     b = random(0,height);
     c = random(0,width);
     e = random(0,height);
     f = random(-100,-500);
     g = random(-100,-500);
     
     a1 = random(0,width);
     b1 = random(0,height);
     c1 = random(0,width);
     d1 = random(0,height);
     f1 = random(-100,-500);
     g1 = random(-100,-500);
     
     a2 = random(0,width);
     b2 = random(0,height);
     c2 = random(0,width);
     d2 = random(0,height);
     f2 = random(-100,-500);
     g2 = random(-100,-500);
     
     a3 = random(0,width);
     b3 = random(0,height);
     c3 = random(0,width);
     d3 = random(0,height);
     f3 = random(-100,-500);
     g3 = random(-100,-500);
     
     a4 = random(0,width);
     b4 = random(0,height);
     c4 = random(0,width);
     d4 = random(0,height);
     f4 = random(-100,-500);
     g4 = random(-100,-500);
     
     velA1 =  random(-.5,.5);
     velA2 =  random(-.5,.5);
     velA3 =  random(-.5,.5);
     velA4 = random(-.5,.5);
     velA5 = random(-.5,.5);
     velA6 = random(-.5,.5);
     
     velB1 = random(-.5,.5);
     velB2 = random(-.5,.5);
     velB3 = random(-.5,.5);
     velB4 = random(-.5,.5);
     velB5 = random(-.5,.5);
     velB6 = random(-.5,.5);
     
     velC1 = random(-.5,.5);
     velC2 = random(-.5,.5);
     velC3 = random(-.5,.5);
     velC4 = random(-.5,.5);
     velC5 = random(-.5,.5);
     velC6 = random(-.5,.5);
  
     velD1 = random(-.5,.5);
     velD2 = random(-.5,.5);
     velD3 = random(-.5,.5);
     velD4 = random(-.5,.5);
     velD5 = random(-.5,.5);
     velD6 = random(-.5,.5);
     
     velE1 = random(-.5,.5);
     velE2 = random(-.5,.5);
     velE3 = random(-.5,.5);
     velE4 = random(-.5,.5);
     velE5 = random(-.5,.5);
     velE6 = random(-.5,.5);
  
  } //END Amorph

void moving(){
  noStroke();
  fill (x,y,z, 125);
    
     beginShape();
     vertex(50,50);
       normal(0,0,50);
       quadraticVertex(a,b,c,e,f,g);
       quadraticVertex(a1,b1,c1,e1,f1,g1);
       quadraticVertex(a2,b2,c2,e2,f2,g2);
       quadraticVertex(a3,b3,c3,e3,f3,g3);
       quadraticVertex(a4,b4,c4,e4,f4,g4);
     endShape();
   
    a+=velA1;
    b+=velA2;
    c+=velA3;
    e+=velA4;
    f+=velA5;
    g+=velA6;
    
    a1+=velB1;
    b1+=velB2;
    c1+=velB3;
    e1+=velB4;
    f1+=velB5;
    g1+=velB6;
    
    a2+=velC1;
    b2+=velC2;
    c2+=velC3;
    e2+=velC4;
    f2+=velC5;
    g2+=velC6;
    
    a3+=velD1;
    b3+=velD2;
    c3+=velD3;
    e3+=velD4;
    f3+=velD5;
    g3+=velD6;
    
    a4+=velE1;
    b4+=velE2;
    c4+=velE3;
    e4+=velE4;
    f4+=velE5;
    g4+=velE6;
    
      if( a > width || a < 0){
        velA1 *=-1; 
      }
      if( b > height || b < 0){
        velA2 *=-1;
      }
      if( c > width ||c < 0 ){
        velA3 *=-1;
      }
      if( e > height || e < 0){
        velA4 *=-1;
      }
      if( f > -100 || f < -500){
        velA5 *=-1;
      }
        if( g > -100 || g < -500){
        velA6 *=-1; 
      }
      
      if( a1 > width || a1 < 0){
        velB1 *=-1; 
      }
      if( b1 > height || b1 < 0){
        velB2 *=-1;
      }
      if( c1 > -100 ||c1 < -400 ){
        velB3 *=-1;
      }
      if( e1 > height || e1 < 0){
        velB4 *=-1;
      }
      if( f1 > -100 || f1 < -400){
        velB5 *=-1;
      }
        if( g1 > width || g1 < 0){
        velB6 *=-1; 
      }
            if( a2 > width || a2 < 0){
        velC1 *=-1; 
      }
      if( b2 > height || b2 < 0){
        velC2 *=-1;
      }
      if( c2 > -100 ||c2 < -400 ){
        velC3 *=-1;
      }
      if( e2 > height || e2 < 0){
        velC4 *=-1;
      }
      if( f2 > -100 || f2 < -400){
        velC5 *=-1;
      }
        if( g2 > width || g2 < 0){
        velC6 *=-1; 
      }
            if( a3 > width || a3 < 0){
        velD1 *=-1; 
      }
      if( b3 > height || b3 < 0){
        velD2 *=-1;
      }
      if( c3 > -100 ||c3 < -400 ){
        velD3 *=-1;
      }
      if( e3 > height || e3 < 0){
        velD4 *=-1;
      }
      if( f3 > -100 || f3 < -400){
        velD5 *=-1;
      }
        if( g3 > width || g3 < 0){
        velD6 *=-1; 
      }
      
       if( a4 > width || a4 < 0){
        velE1 *=-1; 
      }
      if( b4 > height || b4 < 0){
        velE2 *=-1;
      }
      if( c4 > -100 ||c4 < -400 ){
        velE3 *=-1;
      }
      if( e4 > height || e4 < 0){
        velE4 *=-1;
      }
      if( f4 > -100 || f4 < -400){
        velE5 *=-1;
      }
        if( g4 > width || g4 < 0){
        velE6 *=-1; 
      }
      




 
  
}//END Moving


  
  
} //END CLASS
class BGshape {
  
    float x, y, z;
    float a, b, c, d, e, f, g, h, i, j, k, l;
    float velX,velY,velZ,velX1,velY1,velZ1,velX2,velY2,velZ2,velX3,velY3,velZ3,velX4,velY4,velZ4;
    float vV = .01;

BGshape(){
   x = random(0,255);
   y = random(0,255);
   z = random(0,255);
   
   a = random(height,height*2);
   b = random(height,height*2);
   c = random(height,height*2);
   d = random(height,height*2);
   e = random(height,height*2);
   f = random(height,height*2);
   g = random(height,height*2);
   h = random(height,height*2);
   i = random(height,height*2);
   j = random(height,height*2);
   k = random(height,height*2);
   l = random(height,height*2);
   
   velX =  random(-1*vV,vV);
   velY =  random(-1*vV,vV);
   velZ =  random(-1*vV,vV);
   velX1 = random(-1*vV,vV);
   velY1 = random(-1*vV,vV);
   velZ1 = random(-1*vV,vV);
   velX2 = random(-1*vV,vV);
   velY2 = random(-1*vV,vV);
   velZ2 = random(-1*vV,vV);
   velX3 = random(-1*vV,vV);
   velY3 = random(-1*vV,vV);
   velZ3 = random(-1*vV,vV);
   velX4 = random(-1*vV,vV);
   velY4 = random(-1*vV,vV);
   velZ4 = random(-1*vV,vV);


} //END BGshape

void moving(){
  noStroke();
  fill (x,y,z, 50);
    
     beginShape();
       normal(0,0,50);
       vertex(a,b,c);
       vertex(d,e,f);
       vertex(g,h,i);
       vertex(j,k,l);
       vertex(a,b,c);
     endShape();
     
  fill (x,y,z, 100);
 
     beginShape();
       vertex(a,b,c+500);
       vertex(d,e,f+500);
       vertex(g,h,i+500);
       vertex(j,k,k+500);
       vertex(a,b,l+500);
     endShape();
     
   
    a+=velX;
    b+=velY;
    c+=velZ;
    d+=velX1;
    e+=velY1;
    f+=velZ1;
    g+=velX2;
    h+=velY2;
    i+=velZ2;
    j+=velX3;
    k+=velY3;
    l+=velZ3;
    
      if( a > (width*2) || a < 0){
        velX *=-1; 
      }
      if( b > (height*2) || b < 0){
        velY *=-1;
      }
      if( c > (height*2) ||c < (height*-1) ){
        velZ *=-1;
      }
      if( d > (width*2) || d < 0){
        velX1 *=-1; 
      }
      if( e > (height*2) || e < 0){
        velY1 *=-1;
      }
      if( f > (height*2) || f < (height*-1)){
        velZ1 *=-1;
      }
        if( g > (width*2) || g < 0){
        velX2 *=-1; 
      }
      if( h > (height*2) || h < 0){
        velY2 *=-1;
      }
      if( i > (height*2) || i < (height*-1)){
        velZ2 *=-1;
      }
      if( j > (width*2) || j < 0){
        velX3 *=-1; 
      }
      if( k > (height*2) || k < 0){
        velY3 *=-1;
      }  
      if( l > (height*2) || l < (height*-1)){
        velZ3 *=-1;
      }
 
  
}//END Moving


  
  
} //END CLASS
class Blades{
  
  float x,y,z;
  float aX,aY,aZ,bX,bY,bZ,cX,cY,cZ,dX,dY,dZ,eX,eY,eZ,fX,fY,fZ;
  float velX1,velY1,velZ1,velX2,velY2,velZ2,velX3,velY3,velZ3,velX4,velY4,velZ4,velX5,velY5,velZ5;
  float vV = .001;

  Blades(){
    
     x = random(0,50);
     y = random(0,255);
     z = random(0,255);
     

     bX = random(height,height*2);
     bY = random(height,height*2);
     bZ = random(height,height*2);
     cX = random(height,height*2);
     cY = random(height,height*2);
     cZ = random(height,height*2);
     dX = random(height,height*2);
     dY = random(height,height*2);
     dZ = random(height,height*2);
     eX = random(height,height*2);
     eY = random(height,height*2);
     eZ = random(height,height*2);
     
     velX1 = random(-1*vV,vV);
     velY1 = random(-1*vV,vV);
     velZ1 = random(-1*vV,vV);
     velX2 = random(-1*vV,vV);
     velY2 = random(-1*vV,vV);
     velZ2 = random(-1*vV,vV);
     velX3 = random(-1*vV,vV);
     velY3 = random(-1*vV,vV);
     velZ3 = random(-1*vV,vV);
     velX4 = random(-1*vV,vV);
     velY4 = random(-1*vV,vV);
     velZ4 = random(-1*vV,vV);
     velX5 = random(-1*vV,vV);
     velY5 = random(-1*vV,vV);
     velZ5 = random(-1*vV,vV);

    
  } //End Blades
  
  void moving(){
    
    noStroke();
    fill(x,50);
    
    rect(bX,bY,cX,cY);
//    box(bX,bY,bZ);
    
    
        
    bX+=velX1;
    bY+=velY1;
    bZ+=velZ1;
    cX+=velX2;
    cY+=velY2;
    cZ+=velZ2;
    dX+=velX3;
    dY+=velY3;
    dZ+=velZ3;
    eX+=velX4;
    eY+=velY4;
    eZ+=velZ4;
    fX+=velX5;
    fY+=velY5;
    fZ+=velZ5;
    

      if( bX > (height*2) || bX < 0){
        velX1 *=-1; 
      }
      if( bY > (height*2) || bY < 0){
        velY1 *=-1;
      }
      if( bZ > (height*2) || bZ < 0){
        velZ1 *=-1;
      }
        if( cX > (height*2) || cX < 0){
        velX2 *=-1; 
      }
      if( cY > (height*2) || cY < 0){
        velY2 *=-1;
      }
      if( cZ > (height*2) || cZ < 0){
        velZ2 *=-1;
      }
      if( dX > (height*2) || dX < height){
        velX3 *=-1; 
      }
      if( dY > (height*2) || dY < height){
        velY3 *=-1;
      }  
      if( dZ > (height*2) || dZ < height){
        velZ3 *=-1;
      }
      if( eX > (height*2) || eX < height){
        velX4 *=-1; 
      }
      if( eY > (height*2) || eY < height){
        velY4 *=-1;
      }  
      if( eZ > (height*2) || eZ < height){
        velZ4 *=-1;
      }      

      
  } //End moving
  
}//End Class
class Polyg{
  
  
  float x,y,z;
  float aX,aY,aZ,bX,bY,bZ,cX,cY,cZ,dX,dY,dZ,eX,eY,eZ,fX,fY,fZ;
  float velX1,velY1,velZ1,velX2,velY2,velZ2,velX3,velY3,velZ3,velX4,velY4,velZ4,velX5,velY5,velZ5;
  float vV = .1;

  
  Polyg(){
     
     x = random(0,255);
     y = random(0,255);
     z = random(0,255);
     
     aX = 0; 
     aY = 0;
     aZ = 0;
     bX = random(0,height);
     bY = random(0,height);
     bZ = random(0,-200);
     cX = random(0,height);
     cY = random(0,height);
     cZ = random(0,-200);
     dX = random(0,height);
     dY = random(0,height);
     dZ = random(0,-200);
     eX = random(0,height);
     eY = random(0,height);
     eZ = random(0,-200);
     fX = random(0,height);
     fY = random(0,height);
     fZ = random(0,-200);
     
     velX1 = random(-1*vV,vV);
     velY1 = random(-1*vV,vV);
     velZ1 = random(-1*vV,vV);
     velX2 = random(-1*vV,vV);
     velY2 = random(-1*vV,vV);
     velZ2 = random(-1*vV,vV);
     velX3 = random(-1*vV,vV);
     velY3 = random(-1*vV,vV);
     velZ3 = random(-1*vV,vV);
     velX4 = random(-1*vV,vV);
     velY4 = random(-1*vV,vV);
     velZ4 = random(-1*vV,vV);
     velX5 = random(-1*vV,vV);
     velY5 = random(-1*vV,vV);
     velZ5 = random(-1*vV,vV);
    
  }//End Polyg
  
  
  void moving(){
    
        
    noStroke();
    fill(x,y,z,100);
    
    beginShape();
      vertex(aX,aY,aZ);
      vertex(bX,bY,bZ);
      vertex(cX,cY,cZ); 
      vertex(dX,dY,dZ);
      vertex(eX,eY,eZ);
      vertex(fX,fY,fZ);
    endShape();
    
    bX+=velX1;
    bY+=velY1;
    bZ+=velZ1;
    cX+=velX2;
    cY+=velY2;
    cZ+=velZ2;
    dX+=velX3;
    dY+=velY3;
    dZ+=velZ3;
    eX+=velX4;
    eY+=velY4;
    eZ+=velZ4;
    fX+=velX5;
    fY+=velY5;
    fZ+=velZ5;
    

      if( bX > width || bX < 0){
        velX1 *=-1; 
      }
      if( bY > (height) || bY < 0){
        velY1 *=-1;
      }
      if( bZ > height || bZ < 0){
        velZ1 *=-1;
      }
        if( cX > width || cX < 0){
        velX2 *=-1; 
      }
      if( cY > (height) || cY < 0){
        velY2 *=-1;
      }
      if( cZ > height || cZ < 0){
        velZ2 *=-1;
      }
      if( dX > width || dX < 0){
        velX3 *=-1; 
      }
      if( dY > (height) || dY < 0){
        velY3 *=-1;
      }  
      if( dZ > height || dZ < 0){
        velZ3 *=-1;
      }
      if( eX > width || eX < 0){
        velX4 *=-1; 
      }
      if( eY > (height) || eY < 0){
        velY4 *=-1;
      }  
      if( eZ > height || eZ < 0){
        velZ4 *=-1;
      }      
      if( fX > width || fX < 0){
        velX5 *=-1; 
      }
      if( fY > (height) || fY < 0){
        velY5 *=-1;
      }  
      if( dZ > height || dZ < 0){
        velZ5 *=-1;
      }
    
    
    
  }//End moving
  
  
} //End Class
class PyrTop{
  
  float x,y,z;
  float aX,aY,aZ,bX,bY,bZ,cX,cY,cZ,dX,dY,dZ;
  float velX1,velY1,velZ1,velX2,velY2,velZ2,velX3,velY3,velZ3,velX4,velY4,velZ4;
  float vV = .2;

  
  PyrTop(){
     x = random(0,255);
     y = random(0,255);
     z = random(0,255);
     
     aX = 0; //height/2;
     aY = 0;//width/2;
     aZ = 0;//-100;
     bX = random(0,height);
     bY = random(0,height);
     bZ = random(0,-200);
     cX = random(0,height);
     cY = random(0,height);
     cZ = random(0,-200);
     dX = random(0,height);
     dY = random(0,height);
     dZ = random(0,-200);

     
     velX1 = random(-1*vV,vV);
     velY1 = random(-1*vV,vV);
     velZ1 = random(-1*vV,vV);
     velX2 = random(-1*vV,vV);
     velY2 = random(-1*vV,vV);
     velZ2 = random(-1*vV,vV);
     velX3 = random(-1*vV,vV);
     velY3 = random(-1*vV,vV);
     velZ3 = random(-1*vV,vV);
     velX4 = random(-1*vV,vV);
     velY4 = random(-1*vV,vV);
     velZ4 = random(-1*vV,vV);


   
  } //End pyrTop
  
  void moving(){
    
    noStroke();
    fill(x,y,z,150);
    
    beginShape();
      vertex(aX,aY,aZ);
      vertex(bX,bY,bZ);
      vertex(cX,cY,cZ); 
      vertex(dX,dY,dZ);
    endShape();

    beginShape();
      vertex(aX,aY,aZ);
      vertex(dX,dY,dZ);
      vertex(bX,bY,bZ); 
    endShape();

    beginShape();
      vertex(aX,aY,aZ);
      vertex(cX,cY,cZ);
      vertex(dX,dY,dZ); 
    endShape();

    beginShape();
      vertex(bX,bY,bZ);
      vertex(dX,dY,dZ);
      vertex(cX,cY,cZ); 
    endShape();
    
    bX+=velX1;
    bY+=velY1;
    bZ+=velZ1;
    cX+=velX2;
    cY+=velY2;
    cZ+=velZ2;
    dX+=velX3;
    dY+=velY3;
    dZ+=velZ3;

    
      if( bX > width || bX < 0){
        velX1 *=-1; 
      }
      if( bY > (height) || bY < 0){
        velY1 *=-1;
      }
      if( bZ > -10 || bZ < width){
        velZ1 *=-1;
      }
        if( cX > width || cX < 0){
        velX2 *=-1; 
      }
      if( cY > (height) || cY < 0){
        velY2 *=-1;
      }
      if( cZ > 0 || cZ < width){
        velZ2 *=-1;
      }
      if( dX > width || dX < 0){
        velX3 *=-1; 
      }
      if( dY > (height) || dY < 0){
        velY3 *=-1;
      }  
      if( dZ > 0 || dZ < width){
        velZ3 *=-1;
      }

    
    
  } //End moving
  
} //End class

