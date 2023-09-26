package ease

import (
    "math"
)

func easeInSine(x float64) float64 {
    return 1 - math.Cos((x * math.Pi) / 2)
}

func easeOutSine(x float64) float64 {
    return math.Sin((x * math.Pi) / 2)
}

func easeInOutSine(x float64) float64 {
    return 0 - (math.Cos(math.Pi * x) - 1) / 2
}

func easeInCubic(x float64) float64 {
    return x * x * x
}

func easeOutCubic(x float64) float64 {
    return 1 - math.Pow(1 - x, 3)
}

func easeInOutCubic(x float64) float64 {
    if (x < 0.5) {
        return 4 * x * x * x
    } else {
        return 1 - math.Pow(-2 * x + 2, 3) / 2
    }
}

func easeInQuint(x float64) float64 {
    return x * x * x * x
}

func easeOutQuint(x float64) float64 {
    return 1 - math.Pow(1 - x, 5)
}

func easeInOutQuint(x float64) float64 {
    if (x < 0.5) {
        return 16 * x * x * x * x * x
    } else {
        return 1 - math.Pow(-2 * x + 2, 5) / 2
    }
}

func easeInCirc(x float64) float64 {
    return 1 - math.Sqrt(1 - (x * x))
}

func easeOutCirc(x float64) float64 {
    return math.Sqrt(1 - math.Pow(x - 1, 2))
}

func easeInOutCirc(x float64) float64 {
    if (x < 0.5) {
        return (1 - math.Sqrt(1 - math.Pow(2 * x, 2))) / 2
    } else {
        return (math.Sqrt(1 - math.Pow(-2 * x + 2, 2)) + 1) / 2
    }
}

func easeInElastic(x float64) float64 {
    if (x == 0) {
        return 0
    } else if (x == 1) {
        return 1
    } else {
        return 0 - math.Pow(2, 10 * x - 10) * math.Sin((x * 10 - 10.75) * ((2 * math.Pi) / 3))
    }
}

func easeOutElastic(x float64) float64 {
    if (x == 0) {
        return 0
    } else if (x == 1) {
        return 1
    } else {
        return math.Pow(2, -10 * x) * math.Sin((x * 10 - 0.75) * ((2 * math.Pi) / 3)) + 1
    }
}

func easeInOutElastic(x float64) float64 {
    if (x == 0) {
        return 0
    } else if (x == 1) {
        return 1
    } else if (x < 0.5) {
        return 0 - (math.Pow(2, 20 * x - 10) * math.Sin((20 * x - 11.125) * ((2 * math.Pi) / 4.5))) / 2
    } else {
        return (math.Pow(2, -20 * x + 10) * math.Sin((20 * x - 11.125) * ((2 * math.Pi) / 4.5))) / 2 + 1
    }
}

func easeInQuad(x float64) float64 {
    return x * x
}

func easeOutQuad(x float64) float64 {
    return 1 - (1 - x) * (1 - x)
}

func easeInOutQuad(x float64) float64 {
    if (x < 0.5) {
        return 2 * x * x
    } else {
        return 1 - math.Pow(-2 * x + 2, 2) / 2
    }
}

func easeInQuart(x float64) float64 {
    return x * x * x * x
}

func easeOutQuart(x float64) float64 {
    return 1 - math.Pow(1 - x, 4)
}

func easeInOutQuart(x float64) float64 {
    if (x < 0.5) {
        return 8 * x * x * x * x
    } else {
        return 1 - math.Pow(-2 * x + 2, 4) / 2
    }
}

func easeInExpo(x float64) float64 {
    if (x == 0) {
        return 0
    } else {
        return math.Pow(2, 10 * x - 10)
    }
}

func easeOutExpo(x float64) float64 {
    if (x == 1) {
        return 1
    } else {
        return 1 - math.Pow(2, -10 * x)
    }
}

func easeInOutExpo(x float64) float64 {
    if (x == 0) {
        return 0
    } else if (x == 1) {
        return 1
    } else if (x < 0.5) {
        return math.Pow(2, 20 * x - 10) / 2
    } else {
        return 2 - math.Pow(2, -20 * x + 10) / 2
    }
}

func easeInBack(x float64) float64 {
    return 2.70158 * x * x * x - 1.70158 * x * x
}

func easeOutBack(x float64) float64 {
    return 1 + 2.70158 * math.Pow(x - 1, 3) + 1.70158 * math.Pow(x - 1, 2)
}

func easeInOutBack(x float64) float64 {
    if (x < 0.5) {
        return (math.Pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2
    } else {
        return (math.Pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2
    }
}

func easeOutBounce(x float64) float64 {
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

func easeInBounce(x float64) float64 {
    return 1 - easeOutBounce(1 - x)
}

func easeInOutBounce(x float64) float64 {
    if (x < 0.5) {
        return (1 - easeOutBounce(1 - 2 * x)) / 2
    } else {
        return (1 + easeOutBounce(2 * x - 1)) / 2
    }
}
