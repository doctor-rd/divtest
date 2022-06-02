def findinv(x):
	res = x
	for i in range(29):
		x *= x
		x %= 2**32
		res *= x
		res %= 2**32
	return res
