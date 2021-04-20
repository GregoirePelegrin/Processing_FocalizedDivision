int MAXDEPTH = 5;

Square test;

void setup(){
    size(600, 600);
    frameRate(30);
    rectMode(CENTER);

    test = new Square(new Point(width/2, height/2));
}

void draw(){
    background(0);

    test.display();
}

void draw_square(Point c, float s){
    rect(c.x, c.y, s, s);
}
void keyPressed() {
    if(key == '+'){
        MAXDEPTH++;
    } else if(key == '-'){
        MAXDEPTH--;
    }
}