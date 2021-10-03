class RegularLight {
    private float sphereRadius;
    private color activeColor;
    private color inactiveColor;
    private color currentColor;
    private PVector position;
    private boolean active = false;

    public RegularLight(PVector position, color activeColor, color inactiveColor, float sphereRadius) {
        this.position = position;
        this.activeColor = activeColor;
        this.inactiveColor = inactiveColor;
        this.sphereRadius = sphereRadius;

        currentColor = this.inactiveColor;
    }

    public boolean isActive() {
        return active;
    }

    public void activate() {
        active = true;
        currentColor = activeColor;
    }

    public void deactivate() {
        active = false;
        currentColor = inactiveColor;
    }

    public void update() {
        translate(position.x, position.y, position.z);
        color prevFill = g.fillColor;
        color prevStroke = g.strokeColor;
        fill(currentColor);
        stroke(currentColor);
        sphere(sphereRadius);
        translate(-position.x, -position.y, -position.z);
        fill(prevFill);
        stroke(prevStroke);

        if (active)
            pointLight(red(currentColor), green(currentColor), blue(currentColor), position.x, position.y, position.z);
    }
}

class AlertLight {
    private color activeColor, inactiveColor, currentColor;
    private float speed, previousTime, currentTime, deltaTime, timer, sphereRadius;
    private PVector position;
    private boolean active = false;
    private boolean show = false;

    public AlertLight(PVector position, float speed, float sphereRadius, color activeColor, color inactiveColor) {
        this.position = position;
        this.speed = speed;
        this.activeColor = activeColor;
        this.inactiveColor = inactiveColor;
        this.sphereRadius = sphereRadius;

        this.currentTime = this.previousTime = millis() * .001f;

        currentColor = this.inactiveColor;
    }

    public boolean isActive() {
        return active;
    }

    public void activate() {
        active = true;
        currentColor = activeColor;
    }

    public void deactivate() {
        active = false;
        currentColor = inactiveColor;
    }

    public void update() {
        currentTime = millis() * .001f;

        deltaTime = currentTime - previousTime;

        timer += deltaTime;

        if (timer >= speed) {
            timer = 0f;

            if (active) {
                show = !show;
                
                currentColor = show ? activeColor : inactiveColor;
            }
        }
        
        translate(position.x, position.y, position.z);
        color prevFill = g.fillColor;
        color prevStroke = g.strokeColor;
        fill(currentColor);
        stroke(currentColor);
        sphere(sphereRadius);
        translate(-position.x, -position.y, -position.z);
        fill(prevFill);
        stroke(prevStroke);

        if (active)
            pointLight(red(currentColor), green(currentColor), blue(currentColor), position.x, position.y, position.z);

        previousTime = currentTime;
    }
}
