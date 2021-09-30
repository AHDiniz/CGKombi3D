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
    private PVector anchor, init, end;
    private PVector speedForEachAxis;
    private boolean active = false;

    public Windshield(PVector anchor, PVector init, PVector speedForEachAxis) {
        this.anchor = anchor;
        this.init = init;
        this.speedForEachAxis = speedForEachAxis;
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
}
