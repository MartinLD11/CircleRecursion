/**
Description- turned circles 90 degrees to face north to south rather than east to west
**/
void setup() {
size(800, 800);
noStroke();
noLoop();
}
void draw() {
drawCircle(width/2, 280, 6);

}
void drawCircle(int x, int radius, int level) {
float tt = 126 * level/4.0;
fill(tt);

ellipse(width/2, x, radius*2, radius*2);
if(level > 1) {
level = level - 1;
drawCircle(x - radius/2, radius/2, level);
drawCircle(x + radius/2, radius/2, level);
}
}
