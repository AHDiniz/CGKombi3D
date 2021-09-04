PShape test;

int height = 800;
int width = 800;
int posX = 0, posY = 0;
int prevMouseX = 0, prevMouseY = 0;
int angleX = 0, angleY = 0;

boolean canAddMousePos = false;

Mesh body;

void setup() {
    size(800, 800, P3D);
    body = buildBody();
    Mesh[] meshes = {body};
    initMeshes(meshes);
}

void draw() {
    background(0);
    directionalLight(126, 126, 126, 0, 0, -1);
    ambientLight(102, 102, 102);
    camera(mouseX, mouseY, (height / 2) / tan(PI / 6), width / 2, height / 2, 0, 0, 1, 0);
    translate(0, 0, -100);
    Mesh[] meshes = {body};
    drawMeshes(meshes);
}

void keyPressed() {
    
}

void keyReleased() {
    
}

void mousePressed() {
    if (mouseButton == LEFT) {
        canAddMousePos = true;
    }
}

void mouseReleased() {
    if (mouseButton == RIGHT) {
        canAddMousePos = false;
    }
}
