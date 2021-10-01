class EngineController {
    private boolean  currentlyOn = false, previousOn = false;
    private SoundFile engineSound;
    private float currentTime, previousTime, audioDuration;


    public EngineController(SoundFile sound, float audioDuration){
        this.engineSound = sound;
        currentTime = previousTime = millis() * .001f;
    }

    public void updateEngine(){
        if(keyPressed){

            if (key == 'm' || key == 'M') {
                currentlyOn = true;
            }

            if(currentlyOn == true  && previousOn == false) {
                engineSound.play();

            }
            else if (currentlyOn == false && previousOn == true){
                engineSound.stop();
            }

            currentTime = millis() * .001f;

            float deltaTime = currentTime - previousTime;
            
            if (deltaTime >= audioDuration){    
                currentlyOn = false;
            }
            previousOn = currentlyOn;        

        }
    }       

}