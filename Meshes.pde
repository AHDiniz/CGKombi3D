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
        mesh.shape.setFill(mesh.fillColor);
        shape(mesh.shape);
    }
}

Mesh buildBody() {
    PVector[] vertices = {
        new PVector(400, 200, 64),
        new PVector(500, 210, 56),
        new PVector(600, 230, 52),
        new PVector(620, 400, 32),
        new PVector(620, 560, 32),
        new PVector(600, 560, 52),
        new PVector(500, 560, 56),
        new PVector(400, 560, 64),
        new PVector(305, 560, 56),
        new PVector(200, 560, 52),
        new PVector(180, 560, 32),
        new PVector(180, 400, 32),
        new PVector(200, 230, 52),
        new PVector(305, 210, 56)
    };
    int[] indices = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
    Mesh body = new Mesh(vertices, indices, #ff0000);
    return body;
}

Mesh buildRightWindow() {
    PVector[] vertices = {
        new PVector(210, 240, 56),
        new PVector(390, 210, 64),
        new PVector(390, 400, 64),
        new PVector(210, 400, 56)
    };
    int[] indices = {0, 1, 2, 3};
    Mesh window = new Mesh(vertices, indices, #1ffafa);
    return window;
}

Mesh buildLeftWindow() {
    PVector[] vertices = {
        new PVector(410, 210, 64),
        new PVector(590, 240, 56),
        new PVector(590, 400, 56),
        new PVector(410, 400, 64)
    };
    int[] indices = {0, 1, 2, 3};
    Mesh window = new Mesh(vertices, indices, #1ffafa);
    return window;
}
