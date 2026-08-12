public class Lasagna {
    final int minutes = 40;
    /**
    * Returns class member minutes 
    * @return Direct return - final int minutes hardcoded value of 40
    */
    public int expectedMinutesInOven() {
	return minutes;
    }

    /**
    * Calculates and returns remaining time to cook Lasagna in oven
    * @param timeFinished - amount of time the lasagna has already been cooking in the oven
    * @return Direct return - resulting value of timeFinished subracted from time
    */
    public int remainingMinutesInOven(int timeFinished) {
	return expectedMinutesInOven() - timeFinished;
    }

    /**
    * Calculates and returns amount of preparation time based on number of layers
    * @param layers - number of layers used to assembly the luscious lasagna
    * @return Direct return of final int minutes hardcoded value
    */
    public int preparationTimeInMinutes(int layers) {
	return layers * 2;
    }

    /**
    * Calculates and returns the total working time already completed.
    * @param layers - number of layers used to assembly the luscious lasagna
    * @param timeElapsedCook - already elapsed cooking time 
    * @return Direct return of final int minutes hardcoded value
    */
    public int totalTimeInMinutes(int layers, int timeElapsedCook) {
	return preparationTimeInMinutes(layers) + timeElapsedCook;
	
    }
}
