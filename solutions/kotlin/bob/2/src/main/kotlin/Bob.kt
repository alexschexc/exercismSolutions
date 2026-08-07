object Bob {
    fun isYelling(input: String): Boolean = input.any{ it.isLetter() } && input.none {it.isLowerCase() }

    fun hey(input: String): String {
	val questionResponse = "Sure."
	val yellingResponse = "Whoa, chill out!"
	val yelledQuestion = "Calm down, I know what I'm doing!"
	val silentResponse = "Fine. Be that way!"
	val generalResponse = "Whatever."
	return when {
	    input.isBlank() -> silentResponse
	    isYelling(input) && input.endsWith('?')-> yelledQuestion
	    isYelling(input) -> yellingResponse
	    input.endsWith('?') || input.endsWith(' ') -> questionResponse
	    else -> generalResponse
	}
    }
}
