easeInSine <- function(x) {
    return(1 - cos((x * math.Pi) / 2))
}

easeOutSine <- function(x) {
    return(sin((x * math.Pi) / 2))
}

easeInOutSine <- function(x) {
    return(0 - (cos(math.Pi * x) - 1) / 2)
}

easeInCubic <- function(x) {
    return(x * x * x)
}

easeOutCubic <- function(x) {
    return(1 - pow(1 - x, 3))
}

easeInOutCubic <- function(x) {
    if (x < 0.5) {
        return(4 * x * x * x)
    } else {
        return(1 - pow(-2 * x + 2, 3) / 2)
    }
}

easeInQuint <- function(x) {
    return(x * x * x * x)
}

easeOutQuint <- function(x) {
    return(1 - pow(1 - x, 5))
}

easeInOutQuint <- function(x) {
    if (x < 0.5) {
        return(16 * x * x * x * x * x)
    } else {
        return(1 - pow(-2 * x + 2, 5) / 2)
    }
}

easeInCirc <- function(x) {
    return(1 - sqrt(1 - (x * x)))
}

easeOutCirc <- function(x) {
    return(sqrt(1 - pow(x - 1, 2)))
}

easeInOutCirc <- function(x) {
    if (x < 0.5) {
        return((1 - sqrt(1 - pow(2 * x, 2))) / 2)
    } else {
        return((sqrt(1 - pow(-2 * x + 2, 2)) + 1) / 2)
    }
}

easeInElastic <- function(x) {
    if (x == 0) {
        return(0)
    } else if (x == 1) {
        return(1)
    } else {
        return(0 - pow(2, 10 * x - 10) * sin((x * 10 - 10.75) * ((2 * math.Pi) / 3)))
    }
}

easeOutElastic <- function(x) {
    if (x == 0) {
        return(0)
    } else if (x == 1) {
        return(1)
    } else {
        return(pow(2, -10 * x) * sin((x * 10 - 0.75) * ((2 * math.Pi) / 3)) + 1)
    }
}

easeInOutElastic <- function(x) {
    if (x == 0) {
        return(0)
    } else if (x == 1) {
        return(1)
    } else if (x < 0.5) {
        return(0 - (pow(2, 20 * x - 10) * sin((20 * x - 11.125) * ((2 * math.Pi) / 4.5))) / 2)
    } else {
        return((pow(2, -20 * x + 10) * sin((20 * x - 11.125) * ((2 * math.Pi) / 4.5))) / 2 + 1)
    }
}

easeInQuad <- function(x) {
    return(x * x)
}

easeOutQuad <- function(x) {
    return(1 - (1 - x) * (1 - x))
}

easeInOutQuad <- function(x) {
    if (x < 0.5) {
        return(2 * x * x)
    } else {
        return(1 - pow(-2 * x + 2, 2) / 2)
    }
}

easeInQuart <- function(x) {
    return(x * x * x * x)
}

easeOutQuart <- function(x) {
    return(1 - pow(1 - x, 4))
}

easeInOutQuart <- function(x) {
    if (x < 0.5) {
        return(8 * x * x * x * x)
    } else {
        return(1 - pow(-2 * x + 2, 4) / 2)
    }
}

easeInExpo <- function(x) {
    if (x == 0) {
        return(0)
    } else {
        return(pow(2, 10 * x - 10))
    }
}

easeOutExpo <- function(x) {
    if (x == 1) {
        return(1)
    } else {
        return(1 - pow(2, -10 * x))
    }
}

easeInOutExpo <- function(x) {
    if (x == 0) {
        return(0)
    } else if (x == 1) {
        return(1)
    } else if (x < 0.5) {
        return(pow(2, 20 * x - 10) / 2)
    } else {
        return(2 - pow(2, -20 * x + 10) / 2)
    }
}

easeInBack <- function(x) {
    return(2.70158 * x * x * x - 1.70158 * x * x)
}

easeOutBack <- function(x) {
    return(1 + 2.70158 * pow(x - 1, 3) + 1.70158 * pow(x - 1, 2))
}

easeInOutBack <- function(x) {
    if (x < 0.5) {
        return((pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2)
    } else {
        return((pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2)
    }
}

easeOutBounce <- function(x) {
    if (x < 1 / 2.75) {
        return(7.5625 * x * x)
    } else if (x < 2 / 2.75) {
        return(7.5625 * (x - 1.5 / 2.75) * (x - 1.5) + 0.75)
    } else if (x < 2.5 / 2.75) {
        return(7.5625 * (x - 2.25 / 2.75) * (x - 2.25) + 0.9375)
    } else {
        return(7.5625 * (x - 2.625 / 2.75) * (x - 2.625) + 0.984375)
    }
}

easeInBounce <- function(x) {
    return(1 - easeOutBounce(1 - x))
}

easeInOutBounce <- function(x) {
    if (x < 0.5) {
        return((1 - easeOutBounce(1 - 2 * x)) / 2)
    } else {
        return((1 + easeOutBounce(2 * x - 1)) / 2)
    }
}
