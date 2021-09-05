PShape test;

int height = 600;
int width = 800;
int posX = 0, posY = 0;
int prevMouseX = 0, prevMouseY = 0;
int angleX = 0, angleY = 0;

boolean canAddMousePos = false;

Mesh body;
Mesh rightWindow;
Mesh leftWindow;
Mesh leftMirror;
Mesh rightMirror;
Mesh license;

void setup() {
    size(800, 600, P3D);
    body = buildBody();
    rightWindow = buildRightWindow();
    leftWindow = buildLeftWindow();
    leftMirror = buildLeftMirror();
    rightMirror = buildRightMirror();
    license = buildLicense();
    Mesh[] meshes = {body, rightWindow, leftWindow, leftMirror, rightMirror, license};
    initMeshes(meshes);
}

void draw() {
    background(0);
    directionalLight(126, 126, 126, 0, 0, -1);
    ambientLight(102, 102, 102);
    camera(mouseX, mouseY, (height / 2) / tan(PI / 6), width / 2, height / 2, 0, 0, 1, 0);
    translate(0, 0, -100);
    Mesh[] meshes = {body, rightWindow, leftWindow, leftMirror, rightMirror, license};
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
