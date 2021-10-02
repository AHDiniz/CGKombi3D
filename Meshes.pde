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
        if (mesh != null) {
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
}

void drawMeshes(Mesh[] meshes) {
    for (Mesh mesh : meshes) {
        if (mesh != null) {
            mesh.shape.setFill(mesh.fillColor);
            shape(mesh.shape);
        }
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

Mesh buildLeftMirror() {
    PVector[] vertices = {
        new PVector(160, 370, 30),
        new PVector(170, 375, 30),
        new PVector(180, 390, 30),
        new PVector(180, 420, 30),
        new PVector(170, 387, 30),
        new PVector(160, 380, 30)
    };
    int[] indices = {0, 1, 2, 3, 4, 5};
    Mesh mirror = new Mesh(vertices, indices, #aaa9ad);
    return mirror;
}

Mesh buildRightMirror() {
    PVector[] vertices = {
        new PVector(640, 370, 30),
        new PVector(630, 375, 30),
        new PVector(620, 390, 30),
        new PVector(620, 420, 30),
        new PVector(630, 387, 30),
        new PVector(640, 380, 30)
    };
    int[] indices = {0, 1, 2, 3, 4, 5};
    Mesh mirror = new Mesh(vertices, indices, #aaa9ad);
    return mirror;
}

Mesh buildLicense() {
    PVector[] vertices = {
        new PVector(350, 550, 64),
        new PVector(450, 550, 64),
        new PVector(450, 570, 64),
        new PVector(350, 570, 64)
    };
    int[] indices = {0, 1, 2, 3};
    Mesh license = new Mesh(vertices, indices, #aaa9ad);
    return license;
}

PVector normalVectorOfPlaneMesh(Mesh plane) {
    PVector a = plane.vertices[0];
    PVector b = plane.vertices[1];
    PVector c = plane.vertices[2];

    PVector direction = (new PVector(b.x - a.x, b.y - a.y, b.z - a.z)).cross(new PVector(c.x - a.x, c.y - a.y, c.z - a.z));
    return direction.normalize();
}
