fun reverse(input: String): String = buildString {
    for (i in input.indices.reversed()) {
	append(input[i])
    }
}
