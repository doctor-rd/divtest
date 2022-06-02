#pragma once

template<typename T>
T findinv(T x) {
	T result = x;
	int i = 8 * sizeof(T) - 3;
	while (i--) {
		x *= x;
		result *= x;
	}
	return result;
}
