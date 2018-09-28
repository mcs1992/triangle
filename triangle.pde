
void setup() {
    size(1920, 1080);
    smooth();
    noLoop();
    background(0);
}

void draw() {
    Sierpinski tri = new Sierpinski(
        width / 2, 
        height / 2, 
        1000, 
        color(255, 255, 255, 30), 
        7);


    float opposite = tan(PI / 6.0) * tri.getSide() / 2.0;
    float triangleBot = tri.getY() + ( tri.getHeight() / 2.0 );
    float x = tri.getX();
    float y = triangleBot - opposite;
    Concentric conc = new Concentric(
        int(x),
        int(y),
        int(dist(0, 0, x, y)),
        15,
        color(255, 255, 255, 20),
        20
    );

    conc.draw();
    tri.draw();
}
