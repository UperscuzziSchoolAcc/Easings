import Foundation

var pi: Double = Double.pi

func easeInSine(x: Double) -> Double {
  return 1 - cos((x * pi) / 2)
}

func easeOutSine(x: Double) -> Double {
  return sin((x * pi) / 2)
}

func easeInOutSine(x: Double) -> Double {
	return 0 - (cos(pi * x) - 1) / 2
}

func easeInCubic(x: Double) -> Double {
	return x * x * x
}

func easeOutCubic(x: Double) -> Double {
	return 1 - pow(1 - x, 3)
}

func easeInOutCubic(x: Double) -> Double {
	if (x < 0.5) {
		return 4 * x * x * x
	} else {
		return 1 - pow(-2 * x + 2, 3) / 2
	}
}

func easeInQuint(x: Double) -> Double {
	return x * x * x * x
}

func easeOutQuint(x: Double) -> Double {
	return 1 - pow(1 - x, 5)
}

func easeInOutQuint(x: Double) -> Double {
	if (x < 0.5) {
		return 16 * x * x * x * x * x
	} else {
		return 1 - pow(-2 * x + 2, 5) / 2
	}
}

func easeInCirc(x: Double) -> Double {
	return 1 - sqrt(1 - (x * x))
}

func easeOutCirc(x: Double) -> Double {
	return sqrt(1 - pow(x - 1, 2))
}

func easeInOutCirc(x: Double) -> Double {
	if (x < 0.5) {
		return (1 - sqrt(1 - pow(2 * x, 2))) / 2
	} else {
    	return (sqrt(1 - pow(-2 * x + 2, 2)) + 1) / 2
	}
}

func easeInElastic(x: Double) -> Double {
	if (x == 0) {
		return 0
	} else if (x == 1) {
		return 1
	} else {
		return 0 - pow(2, 10 * x - 10) * sin((x * 10 - 10.75) * ((2 * pi) / 3))
	}
}

func easeOutElastic(x: Double) -> Double {
	if (x == 0) {
		return 0
	} else if (x == 1) {
		return 1
	} else {
		return pow(2, -10 * x) * sin((x * 10 - 0.75) * ((2 * pi) / 3)) + 1
	}
}

func easeInOutElastic(x: Double) -> Double {
	if (x == 0) {
		return 0
	} else if (x == 1) {
		return 1
	} else if (x < 0.5) {
		return 0 - (pow(2, 20 * x - 10) * sin((20 * x - 11.125) * ((2 * pi) / 4.5))) / 2
	} else {
		return (pow(2, -20 * x + 10) * sin((20 * x - 11.125) * ((2 * pi) / 4.5))) / 2 + 1
	}
}

func easeInQuad(x: Double) -> Double {
	return x * x
}

func easeOutQuad(x: Double) -> Double {
	return 1 - (1 - x) * (1 - x)
}

func easeInOutQuad(x: Double) -> Double {
	if (x < 0.5) {
		return 2 * x * x
	} else {
		return 1 - pow(-2 * x + 2, 2) / 2
	}
}

func easeInQuart(x: Double) -> Double {
	return x * x * x * x
}

func easeOutQuart(x: Double) -> Double {
	return 1 - pow(1 - x, 4)
}

func easeInOutQuart(x: Double) -> Double {
	if (x < 0.5) {
		return 8 * x * x * x * x
	} else {
		return 1 - pow(-2 * x + 2, 4) / 2
	} 
}

func easeInExpo(x: Double) -> Double {
	if (x == 0) {
		return 0
	} else {
		return pow(2, 10 * x - 10)
	}
}

func easeOutExpo(x: Double) -> Double {
	if (x == 1) {
		return 1
	} else {
		return 1 - pow(2, -10 * x)
	} 
}

func easeInOutExpo(x: Double) -> Double {
	if (x == 0) {
		return 0
	} else if (x == 1) {
		return 1
	} else if (x < 0.5) {
		return pow(2, 20 * x - 10) / 2
	} else {
		return 2 - pow(2, -20 * x + 10) / 2
	}
}

func easeInBack(x: Double) -> Double {
	return 2.70158 * x * x * x - 1.70158 * x * x
}

func easeOutBack(x: Double) -> Double {
	return 1 + 2.70158 * pow(x - 1, 3) + 1.70158 * pow(x - 1, 2)
}

func easeInOutBack(x: Double) -> Double {
	if (x < 0.5) {
		return (pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2
	} else {
		return (pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2
	}
}

func easeOutBounce(x: Double) -> Double {
	if (x < 1 / 2.75) {
		return 7.5625 * x * x
	} else if (x < 2 / 2.75) {
		return 7.5625 * (x - 1.5 / 2.75) * (x - 1.5) + 0.75
	} else if (x < 2.5 / 2.75) {
		return 7.5625 * (x - 2.25 / 2.75) * (x - 2.25) + 0.9375
	} else {
		return 7.5625 * (x - 2.625 / 2.75) * (x - 2.625) + 0.984375
	}
}

func easeInBounce(x: Double) -> Double {
	return 1 - easeOutBounce(x: 1 - x)
}

func easeInOutBounce(x: Double) -> Double {
	if (x < 0.5) {
		return (1 - easeOutBounce(x: 1 - 2 * x)) / 2
	} else {
		return (1 + easeOutBounce(x: 2 * x - 1)) / 2
	}
}
