class RearMirror {
    private boolean left = false, open = false;
    private PVector anchor;
    private Mesh mesh;

    public RearMirror(PVector anchor, boolean left) {
        this.anchor = anchor;
        this.left = left;

        if (left)
            setupOpenLeft();
        else setupClosedLeft();
    }

    public Mesh getMesh() {
        return mesh;
    }

    public boolean isOpen() {
        return open;
    }

    public void open() {
        open = true;
        if (left)
            this.setupOpenLeft();
        else this.setupOpenRight();
        Mesh[] m = {mesh};
        initMeshes(m);
    }

    public void close() {
        open = false;
        if (left)
            this.setupClosedLeft();
        else this.setupClosedRight();
        Mesh[] m = {mesh};
        initMeshes(m);
    }

    private void setupOpenLeft() {
        PVector[] vertices = {
            new PVector(anchor.x, anchor.y, anchor.z),
            new PVector(anchor.x + 10, anchor.y + 5, anchor.z),
            new PVector(anchor.x + 20, anchor.y + 20, anchor.z),
            new PVector(anchor.x + 20, anchor.y + 50, anchor.z),
            new PVector(anchor.x + 10, anchor.y + 17, anchor.z),
            new PVector(anchor.x, anchor.y + 10, anchor.z)
        };
        int[] indices = {0, 1, 2, 3, 4, 5};
        mesh = new Mesh(vertices, indices, #aaa9ad);
    }

    private void setupOpenRight() {
        PVector[] vertices = {
            new PVector(anchor.x, anchor.y, anchor.z),
            new PVector(anchor.x - 10, anchor.y + 5, anchor.z),
            new PVector(anchor.x - 20, anchor.y + 20, anchor.z),
            new PVector(anchor.x - 20, anchor.y + 50, anchor.z),
            new PVector(anchor.x - 10, anchor.y + 17, anchor.z),
            new PVector(anchor.x, anchor.y + 10, anchor.z)
        };
        int[] indices = {0, 1, 2, 3, 4, 5};
        mesh = new Mesh(vertices, indices, #aaa9ad);
    }

    private void setupClosedLeft() {
        PVector[] vertices = {
            new PVector(anchor.x, anchor.y, anchor.z),
            new PVector(anchor.x, anchor.y + 5, anchor.z + 10),
            new PVector(anchor.x, anchor.y + 20, anchor.z + 20),
            new PVector(anchor.x, anchor.y + 50, anchor.z + 20),
            new PVector(anchor.x, anchor.y + 17, anchor.z + 10),
            new PVector(anchor.x, anchor.y + 10, anchor.z)
        };
        int[] indices = {0, 1, 2, 3, 4, 5};
        mesh = new Mesh(vertices, indices, #aaa9ad);
    }

    private void setupClosedRight() {
        PVector[] vertices = {
            new PVector(anchor.x, anchor.y, anchor.z),
            new PVector(anchor.x, anchor.y + 5, anchor.z + 10),
            new PVector(anchor.x, anchor.y + 20, anchor.z + 20),
            new PVector(anchor.x, anchor.y + 50, anchor.z + 20),
            new PVector(anchor.x, anchor.y + 17, anchor.z + 10),
            new PVector(anchor.x, anchor.y + 10, anchor.z)
        };
        int[] indices = {0, 1, 2, 3, 4, 5};
        mesh = new Mesh(vertices, indices, #aaa9ad);
    }
}