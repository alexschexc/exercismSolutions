public class LogLevels {
    /**
    * Returns the raw message substring from input LogLine
    * @param logLine - contains Log message for manipulation
    * @return Direct return - logLevel identifier extricated from logLine input
    */
    public static String message(String logLine) {
	return logLine.substring(logLine.indexOf(": ") + 2).trim();
    }

    /**
    * Returns the raw message substring from input LogLine
    * @param logLine - contains Log message for manipulation
    * @return Direct return - log message extricated from logLine input
    */
    public static String logLevel(String logLine) {
	int start = logLine.indexOf("[") + 1;
	int end = logLine.indexOf("]");
	return logLine.substring(start, end).toLowerCase();
    }

    /**
    * Returns the raw message substring from input LogLine
    * @param logLine - contains Log message for manipulation
    * @return Direct return - reformatted log message and logLevel identifier extricated from logLine input
    */
    public static String reformat(String logLine) {
        return  message(logLine) + " (" + logLevel(logLine) + ")";
    }
}
