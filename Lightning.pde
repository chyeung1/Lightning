void setup(){
size(500,500);
strokeWeight(5);
stroke(255);
frameRate(5);
}

void draw(){
background(0);
for(int i = 0; i < 10; i++)  
lightning(i * 40,0,i * 40 + 10,20);
}

void lightning(int x1, int y1, int x2, int y2){
for(int i = 0; i < 50; i++){
line(x1, y1, x2, y2);
x1 = x2;
y1 = y2;
if(Math.random() > 0.5)
x2 += (int)(Math.random() * 25);
else 
x2 -= (int)(Math.random() * 25);
y2 += 20;
}
}

void mousePressed(){
stroke((int)(Math.random()*64), 0, (int)(Math.random()*64));
}
