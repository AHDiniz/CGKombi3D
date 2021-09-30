PShape test;

int height = 600;
int width = 800;
int posX = 0, posY = 0;
int prevMouseX = 0, prevMouseY = 0;
int angleX = 0, angleY = 0;

Mesh body;
Mesh rightWindow;
Mesh leftWindow;
RearMirror leftMirror;
RearMirror rightMirror;
Mesh license;

Windshield leftWindshield;
Windshield rightWindshield;

void setup() {
    size(800, 600, P3D);
    body = buildBody();
    rightWindow = buildRightWindow();
    leftWindow = buildLeftWindow();
    leftMirror = new RearMirror(new PVector(180, 420, 30), true);
    rightMirror = new RearMirror(new PVector(620, 420, 30), false);
    license = buildLicense();
    Mesh[] meshes = {body, rightWindow, leftWindow, leftMirror.getHandleMesh(), rightMirror.getHandleMesh(), leftMirror.getMirrorMesh(), rightMirror.getMirrorMesh(), license};
    initMeshes(meshes);
}

void draw() {
    background(0);
    directionalLight(126, 126, 126, 0, 0, -1);
    ambientLight(102, 102, 102);
    camera(mouseX, mouseY, (height / 2) / tan(PI / 6), width / 2, height / 2, 0, 0, 1, 0);
    translate(0, 0, -100);
    Mesh[] meshes = {body, rightWindow, leftWindow, leftMirror.getHandleMesh(), rightMirror.getHandleMesh(), leftMirror.getMirrorMesh(), rightMirror.getMirrorMesh(), license};
    drawMeshes(meshes);
}

void keyPressed() {
    if (key == 'r' || key == 'R') {
        if (leftMirror.isOpen())
            leftMirror.close();
        else leftMirror.open();

        if (rightMirror.isOpen())
            rightMirror.close();
        else rightMirror.open();
    }

    if (key == 'l' || key == 'L') {
        if (leftWindshield.isActive())
            leftWindshield.deactivate();
        else leftWindshield.activate();

        if (rightWindshield.isActive())
            rightWindshield.deactivate();
        else rightWindshield.activate();
    }
}

void keyReleased() {
    
}

void mousePressed() {
    
}

void mouseReleased() {
    
}
