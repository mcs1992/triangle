public class Concentric {

    private int x;
    private int y;
    private int radius;
    private int radiusOffset;
    private color fill;
    private int hueOffset;

    public Concentric (int x, int y, int radius, int radiusOffset, color fill, int hueOffset) {
        this.x = x;
        this.y = y;
        this.radius = radius;
        this.radiusOffset = radiusOffset;
        this.fill = fill;
        this.hueOffset = hueOffset;

        println("radius: "+radius);
    }

    public void draw() {
        while (radius > 0) {
            noStroke();
            colorMode(HSB, 255);
            int hue = (int(hue(fill)) + hueOffset) % 255;
            fill = color(hue, 255, 255, 20);
            fill(fill);

            ellipse(x, y, radius * 2, radius * 2);
            radius -= radiusOffset;
        }
    }
}
