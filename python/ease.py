from math import cos, sin, sqrt, pow, pi

def ease_in_sine(x):
    return 1 - cos((x * pi) / 2)


def ease_out_sine(x):
    return sin((x * pi) / 2)


def ease_in_out_sine(x):
    return -(cos(pi * x) - 1) / 2


def ease_in_cubic(x):
    return x * x * x


def ease_out_cubic(x):
    return 1 - pow(1 - x, 3)


def ease_in_out_cubic(x):
    if x < 0.5:
        return 4 * x * x * x
    else:
        return 1 - pow(-2 * x + 2, 3) / 2


def ease_in_quint(x):
    return x * x * x * x


def ease_out_quint(x):
    return 1 - pow(1 - x, 5)


def ease_in_out_quint(x):
    if x < 0.5:
        return 16 * x * x * x * x * x
    else:
        return 1 - pow(-2 * x + 2, 5) / 2


def ease_in_circ(x):
    return 1 - sqrt(1 - (x * x))


def ease_out_circ(x):
    return sqrt(1 - pow(x - 1, 2))


def ease_in_out_circ(x):
    if x < 0.5:
        return (1 - sqrt(1 - pow(2 * x, 2))) / 2
    else:
        return (sqrt(1 - pow(-2 * x + 2, 2)) + 1) / 2


def ease_in_elastic(x):
    if x == 0:
        return 0
    elif x == 1:
        return 1
    else:
        return -pow(2, 10 * x - 10) * sin(
            (x * 10 - 10.75) * ((2 * pi) / 3)
        )


def ease_out_elastic(x):
    if x == 0:
        return 0
    elif x == 1:
        return 1
    else:
        return (
            pow(2, -10 * x) * sin((x * 10 - 0.75) * ((2 * pi) / 3)) + 1
        )


def ease_in_out_elastic(x):
    if x == 0:
        return 0
    elif x == 1:
        return 1
    elif x < 0.5:
        return (
            -(
                pow(2, 20 * x - 10)
                * sin((20 * x - 11.125) * ((2 * pi) / 4.5))
            )
            / 2
        )
    else:
        return (
            pow(2, -20 * x + 10)
            * sin((20 * x - 11.125) * ((2 * pi) / 4.5))
        ) / 2 + 1


def ease_in_quad(x):
    return x * x


def ease_out_quad(x):
    return 1 - (1 - x) * (1 - x)


def ease_in_out_quad(x):
    if x < 0.5:
        return 2 * x * x
    else:
        return 1 - pow(-2 * x + 2, 2) / 2


def ease_in_quart(x):
    return x * x * x * x


def ease_out_quart(x):
    return 1 - pow(1 - x, 4)


def ease_in_out_quart(x):
    if x < 0.5:
        return 8 * x * x * x * x
    else:
        return 1 - pow(-2 * x + 2, 4) / 2


def ease_in_expo(x):
    if x == 0:
        return 0
    else:
        return pow(2, 10 * x - 10)


def ease_out_expo(x):
    if x == 1:
        return 1
    else:
        return 1 - pow(2, -10 * x)


def ease_in_out_expo(x):
    if x == 0:
        return 0
    elif x == 1:
        return 1
    elif x < 0.5:
        return pow(2, 20 * x - 10) / 2
    else:
        return 2 - pow(2, -20 * x + 10) / 2


def ease_in_back(x):
    return 2.70158 * x * x * x - 1.70158 * x * x


def ease_out_back(x):
    return 1 + 2.70158 * pow(x - 1, 3) + 1.70158 * pow(x - 1, 2)


def ease_in_out_back(x):
    if x < 0.5:
        return (pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2
    else:
        return (pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2


def ease_out_bounce(x):
    if x < 1 / 2.75:
        return 7.5625 * x * x
    elif x < 2 / 2.75:
        return 7.5625 * (x - 1.5 / 2.75) * (x - 1.5) + 0.75
    elif x < 2.5 / 2.75:
        return 7.5625 * (x - 2.25 / 2.75) * (x - 2.25) + 0.9375
    else:
        return 7.5625 * (x - 2.625 / 2.75) * (x - 2.625) + 0.984375


def ease_in_bounce(x):
    return 1 - ease_out_bounce(1 - x)


def ease_in_out_bounce(x):
    if x < 0.5:
        return (1 - ease_out_bounce(1 - 2 * x)) / 2
    else:
        return (1 + ease_out_bounce(2 * x - 1)) / 2
