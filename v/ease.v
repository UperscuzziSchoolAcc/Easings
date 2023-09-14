module ease

import math

pub fn ease_in_sine(x f64) f64 {
  return 1 - math.cos((x * math.pi) / 2)
}

pub fn ease_out_sine(x f64) f64 {
  return math.sin((x * math.pi) / 2)
}

pub fn ease_in_out_sine(x f64) f64 {
	return -(math.cos(math.pi * x) - 1) / 2
}

pub fn ease_in_cubic(x f64) f64 {
	return x * x * x
}

pub fn ease_out_cubic(x f64) f64 {
	return 1 - math.pow(1 - x, 3)
}

pub fn ease_in_out_cubic(x f64) f64 {
	if x < 0.5 {
		return 4 * x * x * x
	} else {
		return 1 - math.pow(-2 * x + 2, 3) / 2
	}
}

pub fn ease_in_quint(x f64) f64 {
	return x * x * x * x
}

pub fn ease_out_quint(x f64) f64 {
	return 1 - math.pow(1 - x, 5)
}

pub fn ease_in_out_quint(x f64) f64 {
	if x < 0.5 {
		return 16 * x * x * x * x * x
	} else {
		return 1 - math.pow(-2 * x + 2, 5) / 2
	}
}

pub fn ease_in_circ(x f64) f64 {
	return 1 - math.sqrt(1 - (x * x))
}

pub fn ease_out_circ(x f64) f64 {
	return math.sqrt(1 - math.pow(x - 1, 2))
}

pub fn ease_in_out_circ(x f64) f64 {
	if x < 0.5 {
		return (1 - math.sqrt(1 - math.pow(2 * x, 2))) / 2
	} else {
    	return (math.sqrt(1 - math.pow(-2 * x + 2, 2)) + 1) / 2
	}
}

pub fn ease_in_elastic(x f64) f64 {
	if x == 0 {
		return 0
	} else if x == 1 {
		return 1
	} else {
		return -math.pow(2, 10 * x - 10) * math.sin((x * 10 - 10.75) * ((2 * math.pi) / 3))
	}
}

pub fn ease_out_elastic(x f64) f64 {
	if x == 0 {
		return 0
	} else if x == 1 {
		return 1
	} else {
		return math.pow(2, -10 * x) * math.sin((x * 10 - 0.75) * ((2 * math.pi) / 3)) + 1
	}
}

pub fn ease_in_out_elastic(x f64) f64 {
	if x == 0 {
		return 0
	} else if x == 1 {
		return 1
	} else if x < 0.5 {
		return -(math.pow(2, 20 * x - 10) * math.sin((20 * x - 11.125) * ((2 * math.pi) / 4.5))) / 2
	} else {
		return (math.pow(2, -20 * x + 10) * math.sin((20 * x - 11.125) * ((2 * math.pi) / 4.5))) / 2 + 1
	}
}

pub fn ease_in_quad(x f64) f64 {
	return x * x
}

pub fn ease_out_quad(x f64) f64 {
	return 1 - (1 - x) * (1 - x)
}

pub fn ease_in_out_quad(x f64) f64 {
	if x < 0.5 {
		return 2 * x * x
	} else {
		return 1 - math.pow(-2 * x + 2, 2) / 2
	}
}

pub fn ease_in_quart(x f64) f64 {
	return x * x * x * x
}

pub fn ease_out_quart(x f64) f64 {
	return 1 - math.pow(1 - x, 4)
}

pub fn ease_in_out_quart(x f64) f64 {
	if x < 0.5 {
		return 8 * x * x * x * x
	} else {
		return 1 - math.pow(-2 * x + 2, 4) / 2
	} 
}

pub fn ease_in_expo(x f64) f64 {
	if x == 0 {
		return 0
	} else {
		return math.pow(2, 10 * x - 10)
	}
}

pub fn ease_out_expo(x f64) f64 {
	if x == 1 {
		return 1
	} else {
		return 1 - math.pow(2, -10 * x)
	} 
}

pub fn ease_in_out_expo(x f64) f64 {
	if x == 0 {
		return 0
	} else if x == 1 {
		return 1
	} else if x < 0.5 {
		return math.pow(2, 20 * x - 10) / 2
	} else {
		return 2 - math.pow(2, -20 * x + 10) / 2
	}
}

pub fn ease_in_back(x f64) f64 {
	return 2.70158 * x * x * x - 1.70158 * x * x
}

pub fn ease_out_back(x f64) f64 {
	return 1 + 2.70158 * math.pow(x - 1, 3) + 1.70158 * math.pow(x - 1, 2)
}

pub fn ease_in_out_back(x f64) f64 {
	if x < 0.5 {
		return (math.pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2
	} else {
		return (math.pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2
	}
}

pub fn ease_out_bounce(x f64) f64 {
	if x < 1 / 2.75 {
		return 7.5625 * x * x
	} else if x < 2 / 2.75 {
		return 7.5625 * (x - 1.5 / 2.75) * (x - 1.5) + 0.75
	} else if x < 2.5 / 2.75 {
		return 7.5625 * (x - 2.25 / 2.75) * (x - 2.25) + 0.9375
	} else {
		return 7.5625 * (x - 2.625 / 2.75) * (x - 2.625) + 0.984375
	}
}

pub fn ease_in_bounce(x f64) f64 {
	return 1 - ease_out_bounce(1 - x)
}

pub fn ease_in_out_bounce(x f64) f64 {
	if x < 0.5 {
		return (1 - ease_out_bounce(1 - 2 * x)) / 2
	} else {
		return (1 + ease_out_bounce(2 * x - 1)) / 2
	}
}
