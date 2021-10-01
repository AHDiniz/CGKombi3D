class RearMirror {
    private boolean left = false, open = false;
    private PVector anchor;
    private Mesh handle, mirror;

    public RearMirror(PVector anchor, boolean left) {
        this.anchor = anchor;
        this.left = left;

        if (left)
            setupOpenLeft();
        else setupOpenRight();
    }

    public Mesh getHandleMesh() {
        return handle;
    }

    public Mesh getMirrorMesh() {
        return mirror;
    }

    public boolean isOpen() {
        return open;
    }

    public void open() {
        open = true;
        if (left)
            this.setupOpenLeft();
        else this.setupOpenRight();
        Mesh[] m = {handle, mirror};
        initMeshes(m);
    }

    public void close() {
        open = false;
        if (left)
            this.setupClosedLeft();
        else this.setupClosedRight();
        Mesh[] m = {handle, mirror};
        initMeshes(m);
    }

    private void setupOpenLeft() {
        PVector[] vertices = {
            anchor,
            new PVector(anchor.x     , anchor.y + 10, anchor.z),
            new PVector(anchor.x - 8 , anchor.y + 8 , anchor.z),
            new PVector(anchor.x - 10, anchor.y     , anchor.z),
            new PVector(anchor.x - 12, anchor.y - 30, anchor.z),
            new PVector(anchor.x - 30, anchor.y - 32, anchor.z),
            new PVector(anchor.x - 28, anchor.y - 42, anchor.z),
            new PVector(anchor.x - 2 , anchor.y - 40, anchor.z)
        };
        int[] indices = {0, 1, 2, 3, 4, 5, 6, 7};
        handle = new Mesh(vertices, indices, #aaa9ad);

        PVector[] mirrorVertices = {
            new PVector(anchor.x - 40, anchor.y - 62, anchor.z),
            new PVector(anchor.x - 30, anchor.y - 58, anchor.z),
            new PVector(anchor.x - 20, anchor.y - 50, anchor.z),
            new PVector(anchor.x - 30, anchor.y - 42, anchor.z),
            new PVector(anchor.x - 40, anchor.y - 38, anchor.z),
            new PVector(anchor.x - 50, anchor.y - 42, anchor.z),
            new PVector(anchor.x - 60, anchor.y - 50, anchor.z),
            new PVector(anchor.x - 50, anchor.y - 58, anchor.z),
        };
        mirror = new Mesh(mirrorVertices, indices, #aaa9ad);
    }

    private void setupOpenRight() {
        PVector[] vertices = {
            anchor,
            new PVector(anchor.x     , anchor.y + 10, anchor.z),
            new PVector(anchor.x + 8 , anchor.y + 8 , anchor.z),
            new PVector(anchor.x + 10, anchor.y     , anchor.z),
            new PVector(anchor.x + 12, anchor.y - 30, anchor.z),
            new PVector(anchor.x + 30, anchor.y - 32, anchor.z),
            new PVector(anchor.x + 28, anchor.y - 42, anchor.z),
            new PVector(anchor.x + 2 , anchor.y - 40, anchor.z)
        };
        int[] indices = {0, 1, 2, 3, 4, 5, 6, 7};
        handle = new Mesh(vertices, indices, #aaa9ad);

        PVector[] mirrorVertices = {
            new PVector(anchor.x + 40, anchor.y - 62, anchor.z),
            new PVector(anchor.x + 30, anchor.y - 58, anchor.z),
            new PVector(anchor.x + 20, anchor.y - 50, anchor.z),
            new PVector(anchor.x + 30, anchor.y - 42, anchor.z),
            new PVector(anchor.x + 40, anchor.y - 38, anchor.z),
            new PVector(anchor.x + 50, anchor.y - 42, anchor.z),
            new PVector(anchor.x + 60, anchor.y - 50, anchor.z),
            new PVector(anchor.x + 50, anchor.y - 58, anchor.z),
        };
        mirror = new Mesh(mirrorVertices, indices, #aaa9ad);
    }

    private void setupClosedLeft() {
        PVector[] vertices = {
            anchor,
            new PVector(anchor.x, anchor.y + 10, anchor.z),
            new PVector(anchor.x, anchor.y + 8 , anchor.z - 8),
            new PVector(anchor.x, anchor.y     , anchor.z - 10),
            new PVector(anchor.x, anchor.y - 30, anchor.z - 12),
            new PVector(anchor.x, anchor.y - 32, anchor.z - 30),
            new PVector(anchor.x, anchor.y - 42, anchor.z - 28),
            new PVector(anchor.x, anchor.y - 40, anchor.z - 2) 
        };
        int[] indices = {0, 1, 2, 3, 4, 5, 6, 7};
        handle = new Mesh(vertices, indices, #aaa9ad);

        PVector[] mirrorVertices = {
            new PVector(anchor.x, anchor.y - 62, anchor.z - 40),
            new PVector(anchor.x, anchor.y - 58, anchor.z - 30),
            new PVector(anchor.x, anchor.y - 50, anchor.z - 20),
            new PVector(anchor.x, anchor.y - 42, anchor.z - 30),
            new PVector(anchor.x, anchor.y - 38, anchor.z - 40),
            new PVector(anchor.x, anchor.y - 42, anchor.z - 50),
            new PVector(anchor.x, anchor.y - 50, anchor.z - 60),
            new PVector(anchor.x, anchor.y - 58, anchor.z - 50),
        };
        mirror = new Mesh(mirrorVertices, indices, #aaa9ad);
    }

    private void setupClosedRight() {
        PVector[] vertices = {
            anchor,
            new PVector(anchor.x, anchor.y + 10, anchor.z),
            new PVector(anchor.x, anchor.y + 8 , anchor.z - 8),
            new PVector(anchor.x, anchor.y     , anchor.z - 10),
            new PVector(anchor.x, anchor.y - 30, anchor.z - 12),
            new PVector(anchor.x, anchor.y - 32, anchor.z - 30),
            new PVector(anchor.x, anchor.y - 42, anchor.z - 28),
            new PVector(anchor.x, anchor.y - 40, anchor.z - 2) 
        };
        int[] indices = {0, 1, 2, 3, 4, 5, 6, 7};
        handle = new Mesh(vertices, indices, #aaa9ad);

        PVector[] mirrorVertices = {
            new PVector(anchor.x, anchor.y - 62, anchor.z - 40),
            new PVector(anchor.x, anchor.y - 58, anchor.z - 30),
            new PVector(anchor.x, anchor.y - 50, anchor.z - 20),
            new PVector(anchor.x, anchor.y - 42, anchor.z - 30),
            new PVector(anchor.x, anchor.y - 38, anchor.z - 40),
            new PVector(anchor.x, anchor.y - 42, anchor.z - 50),
            new PVector(anchor.x, anchor.y - 50, anchor.z - 60),
            new PVector(anchor.x, anchor.y - 58, anchor.z - 50),
        };
        mirror = new Mesh(mirrorVertices, indices, #aaa9ad);
    }
}

class Windshield {
    private PVector anchor;
    private PVector end;
    private PVector axis;
    private float length, speed, initAngle, endAngle;
    private float[] rotationMatrix = new float[9];
    private boolean active = false;

    public Windshield(PVector anchor, PVector axis, float length, float speed, float initAngle, float endAngle) {
        this.anchor = anchor;
        this.axis = axis;
        this.length = length;
        this.speed = speed;
        this.initAngle = initAngle;
        this.endAngle = endAngle;
        this.end = new PVector();

        this.rotateBy(initAngle);
    }

    public boolean isActive() {
        return active;
    }

    public void activate() {
        active = true;
    }

    public void deactivate() {
        active = false;
    }

    public void update() {

    }

    private void rotateBy(float angle) {
        rotationMatrix[0] = (axis.x * axis.x * (1 - cos(angle))) +          cos(angle);
        rotationMatrix[1] = (axis.x * axis.y * (1 - cos(angle))) + axis.z * sin(angle);
        rotationMatrix[2] = (axis.x * axis.z * (1 - cos(angle))) - axis.y * sin(angle);

        rotationMatrix[3] = (axis.y * axis.x * (1 - cos(angle))) - axis.z * sin(angle);
        rotationMatrix[4] = (axis.y * axis.y * (1 - cos(angle))) +          cos(angle);
        rotationMatrix[5] = (axis.y * axis.z * (1 - cos(angle))) + axis.x * sin(angle);

        rotationMatrix[6] = (axis.z * axis.x * (1 - cos(angle))) + axis.y * sin(angle);
        rotationMatrix[7] = (axis.z * axis.y * (1 - cos(angle))) - axis.x * sin(angle);
        rotationMatrix[8] = (axis.z * axis.z * (1 - cos(angle))) +          cos(angle);

        float newX = end.x * rotationMatrix[0] + end.y * rotationMatrix[3] + end.z * rotationMatrix[6];
        float newY = end.x * rotationMatrix[1] + end.y * rotationMatrix[4] + end.z * rotationMatrix[7];
        float newZ = end.x * rotationMatrix[2] + end.y * rotationMatrix[5] + end.z * rotationMatrix[8];

        end.x = newX;
        end.y = newY;
        end.z = newZ;
    }
}
