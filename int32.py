def findinv(x):
	res = 1
	for i in range(31):
		res *= x
		res %= 2**32
		x *= x
		x %= 2**32
	return res
