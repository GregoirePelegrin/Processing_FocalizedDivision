class Pixel{
    Point center;
    float size;
    float col;

    Pixel(Point _c, float _s){
        this.center = _c;
        this.size = _s;

        this.col = noise(this.center.x*PERLINCOEFF, this.center.y*PERLINCOEFF) * 255;
    }

    void display(){
        fill(col);
        strokeWeight(1);
        stroke(col);
        if(this.size <= 1) {
            point(this.center.x, this.center.y);
        } else {
            rect(this.center.x, this.center.y, this.size, this.size);
        }
    }
}