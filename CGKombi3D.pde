PShape test;

int height = 800;
int width = 800;
int posX = 0, posY = 0;
int prevMouseX = 0, prevMouseY = 0;

boolean canAddMousePos = false;

void setup() {
    size(800, 800, P3D);
    test = createShape();
    test.beginShape();
    test.vertex(100, 100, -10);
    test.vertex(200, 100, -5);
    test.vertex(200, 200, -10);
    test.vertex(100, 200, -5);
    test.endShape(CLOSE);
}

void draw() {
    background(0);
    camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
    translate(width/2, height/2, -100);
    stroke(255);
    noFill();
    box(200);
    shape(test);
}

void keyPressed() {
    
}

void keyReleased() {
    
}

void mousePressed() {
}

void mouseReleased() {
}
