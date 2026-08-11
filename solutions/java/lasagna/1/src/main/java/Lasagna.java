public class Lasagna {
    final int minutes = 40;
    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven() {
	return minutes;
    }

    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int timeFinished) {
	int time = minutes;
	return time - timeFinished;
    }

    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int layers) {
	return layers * 2;
    }

    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int layers, int timeElapsedCook) {
	int layerTime = layers * 2;
	return layerTime + timeElapsedCook;
    }
}
