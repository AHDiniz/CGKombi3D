PShape test;

int height = 800;
int width = 800;
int posX = 0, posY = 0;
int prevMouseX = 0, prevMouseY = 0;
int angleX = 0, angleY = 0;

boolean canAddMousePos = false;

Mesh mesh;

class Mesh {
    PVector[] vertices;
    int[] indices;
    color fillColor;
    PShape shape;

    public Mesh(PVector[] vertices, int[] indices, color fillColor) {
        this.vertices = vertices;
        this.indices = indices;
        this.fillColor = fillColor;
    }
}

void initMeshes(Mesh[] meshes) {
    for (Mesh mesh : meshes) {
        mesh.shape = createShape();
        mesh.shape.beginShape();
        for (int index : mesh.indices) {
            float x = mesh.vertices[index].x;
            float y = mesh.vertices[index].y;
            float z = mesh.vertices[index].z;
            mesh.shape.vertex(x, y, z);
        }
        mesh.shape.endShape(CLOSE);
    }
}

void drawMeshes(Mesh[] meshes) {
    for (Mesh mesh : meshes) {
        stroke(mesh.fillColor);
        shape(mesh.shape);
    }
}

void setup() {
    size(800, 800, P3D);
    PVector[] vertices = {new PVector(100, 100, 10), new PVector(200, 100, 10), new PVector(200, 200, 10), new PVector(100, 200, 10)};
    int[] indices = {0, 1, 2, 3};
    mesh = new Mesh(vertices, indices, #1f0f0f);
    Mesh[] meshes = {mesh};
    initMeshes(meshes);
}

void draw() {
    background(0);
    translate(width/2, height/2, -100);
    Mesh[] meshes = {mesh};
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
