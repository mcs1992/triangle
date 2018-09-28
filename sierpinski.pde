public class Sierpinski {

    private float x;
    private float y;
    private float w;
    private float h;
    private color fill;
    private int iter;

    public Sierpinski (int x, int y, int side, color fill, int iter) {
        this.x = x;
        this.y = y;
        this.w = side;

        this.h = int(tan(PI / 3.0) * side / 2);

        this.fill = fill;
        this.iter = iter;
    }

    // intended to be used recursively
    private Sierpinski(float x, float y, float w, float h, color fill, int iter) {
        this.x = x;
        this. y = y;
        this.w = w;
        this.h = h;
        this.fill = fill;
        this.iter = iter;    
    }

    public void draw() {
        noStroke();
        colorMode(RGB, 255);
        fill(fill);

        int th = int(h / 2.0);
        int tw = int(w / 2.0);
        triangle(x, y - th, x - (tw / 2), y, x + (tw / 2), y);
        triangle(x - (tw / 2), y, x - tw, y + th, x, y + th);
        triangle(x + (tw / 2), y, x, y + th, x + tw, y + th);


        if (iter > 0 ) {
            ArrayList<Sierpinski> newTris = new ArrayList<Sierpinski>();
            newTris.add(new Sierpinski(x, y - (th / 2), tw, th, fill, iter - 1));
            newTris.add(new Sierpinski(x - (tw / 2), y + (th / 2), tw, th, fill, iter - 1));
            newTris.add(new Sierpinski(x + (tw / 2), y + (th / 2), tw, th, fill, iter - 1));
                
            for (Sierpinski s : newTris) {
                s.draw();
            }       
        }
    }

    // getters

    public float getX() {
        return x;
    }

    public float getY() {
        return y;
    }

    public float getSide() {
        return w;
    }

    public float getWidth() {
        return w;
    }

    public float getHeight() {
        return h;
    }
}
