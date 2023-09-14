#include <math.h>

#define pi 3.14159

double easeInSine(double x) {
  return 1 - cos((x * pi) / 2);
}

double easeOutSine(double x) {
  return sin((x * pi) / 2);
}

double easeInOutSine(double x) {
	return 0 - (cos(pi * x) - 1) / 2;
}

double easeInCubic(double x) {
	return x * x * x;
}

double easeOutCubic(double x) {
	return 1 - pow(1 - x, 3);
}

double easeInOutCubic(double x) {
	if (x < 0.5) {
		return 4 * x * x * x;
	} else {
		return 1 - pow(-2 * x + 2, 3) / 2;
	}
}

double easeInQuint(double x) {
	return x * x * x * x;
}

double easeOutQuint(double x) {
	return 1 - pow(1 - x, 5);
}

double easeInOutQuint(double x) {
	if (x < 0.5) {
		return 16 * x * x * x * x * x;
	} else {
		return 1 - pow(-2 * x + 2, 5) / 2;
	}
}

double easeInCirc(double x) {
	return 1 - sqrt(1 - (x * x));
}

double easeOutCirc(double x) {
	return sqrt(1 - pow(x - 1, 2));
}

double easeInOutCirc(double x) {
	if (x < 0.5) {
		return (1 - sqrt(1 - pow(2 * x, 2))) / 2;
	} else {
    	return (sqrt(1 - pow(-2 * x + 2, 2)) + 1) / 2;
	}
}

double easeInElastic(double x) {
	if (x == 0) {
		return 0;
	} else if (x == 1) {
		return 1;
	} else {
		return 0 - pow(2, 10 * x - 10) * sin((x * 10 - 10.75) * ((2 * pi) / 3));
	}
}

double easeOutElastic(double x) {
	if (x == 0) {
		return 0;
	} else if (x == 1) {
		return 1;
	} else {
		return pow(2, -10 * x) * sin((x * 10 - 0.75) * ((2 * pi) / 3)) + 1;
	}
}

double easeInOutElastic(double x) {
	if (x == 0) {
		return 0;
	} else if (x == 1) {
		return 1;
	} else if (x < 0.5) {
		return 0 - (pow(2, 20 * x - 10) * sin((20 * x - 11.125) * ((2 * pi) / 4.5))) / 2;
	} else {
		return (pow(2, -20 * x + 10) * sin((20 * x - 11.125) * ((2 * pi) / 4.5))) / 2 + 1;
	}
}

double easeInQuad(double x) {
	return x * x;
}

double easeOutQuad(double x) {
	return 1 - (1 - x) * (1 - x);
}

double easeInOutQuad(double x) {
	if (x < 0.5) {
		return 2 * x * x;
	} else {
		return 1 - pow(-2 * x + 2, 2) / 2;
	}
}

double easeInQuart(double x) {
	return x * x * x * x;
}

double easeOutQuart(double x) {
	return 1 - pow(1 - x, 4);
}

double easeInOutQuart(double x) {
	if (x < 0.5) {
		return 8 * x * x * x * x;
	} else {
		return 1 - pow(-2 * x + 2, 4) / 2;
	} 
}

double easeInExpo(double x) {
	if (x == 0) {
		return 0;
	} else {
		return pow(2, 10 * x - 10);
	}
}

double easeOutExpo(double x) {
	if (x == 1) {
		return 1;
	} else {
		return 1 - pow(2, -10 * x);
	} 
}

double easeInOutExpo(double x) {
	if (x == 0) {
		return 0;
	} else if (x == 1) {
		return 1;
	} else if (x < 0.5) {
		return pow(2, 20 * x - 10) / 2;
	} else {
		return 2 - pow(2, -20 * x + 10) / 2;
	}
}

double easeInBack(double x) {
	return 2.70158 * x * x * x - 1.70158 * x * x;
}

double easeOutBack(double x) {
	return 1 + 2.70158 * pow(x - 1, 3) + 1.70158 * pow(x - 1, 2);
}

double easeInOutBack(double x) {
	if (x < 0.5) {
		return (pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2;
	} else {
		return (pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2;
	}
}

double easeOutBounce(double x) {
	if (x < 1 / 2.75) {
		return 7.5625 * x * x;
	} else if (x < 2 / 2.75) {
		return 7.5625 * (x - 1.5 / 2.75) * (x - 1.5) + 0.75;
	} else if (x < 2.5 / 2.75) {
		return 7.5625 * (x - 2.25 / 2.75) * (x - 2.25) + 0.9375;
	} else {
		return 7.5625 * (x - 2.625 / 2.75) * (x - 2.625) + 0.984375;
	}
}

double easeInBounce(double x) {
	return 1 - easeOutBounce(1 - x);
}

double easeInOutBounce(double x) {
	if (x < 0.5) {
		return (1 - easeOutBounce(1 - 2 * x)) / 2;
	} else {
		return (1 + easeOutBounce(2 * x - 1)) / 2;
	}
}
