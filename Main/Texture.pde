class Texture{
    Point center;
    int precision;
    float size;
    ArrayList<Pixel> pixelList;

    Texture(Point _c, float _s, int _p){
        this.center = _c;
        this.precision = _p;
        this.size = _s;

        this.pixelList = new ArrayList<Pixel>();
        this.populate();
    }

    void display(){
        for(Pixel pixel : this.pixelList)
            pixel.display();
    }
    void populate(){
        this.pixelList.clear();
        float tempSize = this.size/this.precision;
        for(int i=0; i<this.precision; i++){
            for(int j=0; j<this.precision; j++){
                this.pixelList.add(new Pixel(new Point(this.center.x-this.size/2+j*tempSize, this.center.y-this.size/2+i*tempSize), tempSize));
            }
        }
    }
    void update(int _p){
        this.precision = _p;
        this.populate();
    }
}