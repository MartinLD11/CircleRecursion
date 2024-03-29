/**
Description- split circles on each side of the main cicle with each pattern pointing a 
different direction
**/

void setup() {
size(800, 800);
noStroke();
noLoop();
}
void draw() {
drawCircle(width/2, 280, 6, 6, 0);

}
void drawCircle(int x, int radius, int level, int init_lv, int dir) {
float tt = 126 * level/4.0;
fill(tt);

//ellipse(width/2, x, radius*2, radius*2);
if(level == init_lv){
ellipse(width/2, x, radius, radius);
level = level - 1;
drawCircle(x - radius/2, radius/2, level, init_lv, 0);
drawCircle(x + radius/2, radius/2, level, init_lv, 0);
drawCircle(x - radius/2, radius/2, level, init_lv, 1);
drawCircle(x + radius/2, radius/2, level, init_lv, 1);
}
else if(level > 1 && dir == 0){
level = level - 1;
ellipse(x, height/2, radius, radius);
drawCircle(x - radius/2, radius/2, level, init_lv, 0);
drawCircle(x + radius/2, radius/2, level, init_lv, 0);
}
else if(level > 1 && dir == 1){
level = level - 1;
ellipse(width/2, x, radius, radius);
drawCircle(x - radius/2, radius/2, level, init_lv, 1);
drawCircle(x + radius/2, radius/2, level, init_lv, 1);
}
}
