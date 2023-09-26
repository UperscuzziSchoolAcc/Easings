function easeInSine(x) {
    return 1 - Math.cos((x * Math.PI) / 2)
}

function easeOutSine(x) {
    return Math.sin((x * Math.PI) / 2)
}

function easeInOutSine(x) {
    return 0 - (Math.cos(Math.PI * x) - 1) / 2
}

function easeInCubic(x) {
    return x * x * x
}

function easeOutCubic(x) {
    return 1 - Math.pow(1 - x, 3)
}

function easeInOutCubic(x) {
    return x < 0.5 ? 4 * x * x * x : 1 - Math.pow(-2 * x + 2, 3) / 2
}

function easeInQuint(x) {
    return x * x * x * x
}

function easeOutQuint(x) {
    return 1 - Math.pow(1 - x, 5)
}

function easeInOutQuint(x) {
    return x < 0.5 ? 16 * x * x * x * x * x : 1 - Math.pow(-2 * x + 2, 5) / 2
}

function easeInCirc(x) {
    return 1 - Math.sqrt(1 - x * x)
}

function easeOutCirc(x) {
    return Math.sqrt(1 - Math.pow(x - 1, 2))
}

function easeInOutCirc(x) {
    return x < 0.5 ?
        (1 - Math.sqrt(1 - Math.pow(2 * x, 2))) / 2 :
        (Math.sqrt(1 - Math.pow(-2 * x + 2, 2)) + 1) / 2
}

function easeInElastic(x) {
    const c4 = (2 * Math.PI) / 3

    return x === 0 ?
        0 :
        x === 1 ?
        1 :
        -Math.pow(2, 10 * x - 10) * Math.sin((x * 10 - 10.75) * c4)
}

function easeOutElastic(x) {
    const c4 = (2 * Math.PI) / 3

    return x === 0 ?
        0 :
        x === 1 ?
        1 :
        Math.pow(2, -10 * x) * Math.sin((x * 10 - 0.75) * c4) + 1
}

function easeInOutElastic(x) {
    const c5 = (2 * Math.PI) / 4.5

    return x === 0 ?
        0 :
        x === 1 ?
        1 :
        x < 0.5 ?
        -(Math.pow(2, 20 * x - 10) * Math.sin((20 * x - 11.125) * c5)) / 2 :
        (Math.pow(2, -20 * x + 10) * Math.sin((20 * x - 11.125) * c5)) / 2 + 1
}

function easeInQuad(x) {
    return x * x
}

function easeOutQuad(x) {
    return 1 - (1 - x) * (1 - x)
}

function easeInOutQuad(x) {
    return x < 0.5 ? 2 * x * x : 1 - Math.pow(-2 * x + 2, 2) / 2
}

function easeInQuart(x) {
    return x * x * x * x
}

function easeOutQuart(x) {
    return 1 - Math.pow(1 - x, 4)
}

function easeInOutQuart(x) {
    return x < 0.5 ? 8 * x * x * x * x : 1 - Math.pow(-2 * x + 2, 4) / 2
}

function easeInExpo(x) {
    return x === 0 ? 0 : Math.pow(2, 10 * x - 10)
}

function easeOutExpo(x) {
    return x === 1 ? 1 : 1 - Math.pow(2, -10 * x)
}

function easeInOutExpo(x) {
    return x === 0 ?
        0 :
        x === 1 ?
        1 :
        x < 0.5 ?
        Math.pow(2, 20 * x - 10) / 2 :
        (2 - Math.pow(2, -20 * x + 10)) / 2
}

function easeInBack(x) {
    return 2.70158 * x * x * x - 1.70158 * x * x
}

function easeOutBack(x) {
    return 1 + 2.70158 * Math.pow(x - 1, 3) + 1.70158 * Math.pow(x - 1, 2)
}

function easeInOutBack(x) {
    const c1 = 1.70158
    const c2 = c1 * 1.525

    return x < 0.5 ?
        (Math.pow(2 * x, 2) * ((c2 + 1) * 2 * x - c2)) / 2 :
        (Math.pow(2 * x - 2, 2) * ((c2 + 1) * (x * 2 - 2) + c2) + 2) / 2
}

function easeOutBounce(x) {
    const n1 = 7.5625
    const d1 = 2.75

    if (x < 1 / d1) {
        return n1 * x * x
    } else if (x < 2 / d1) {
        return n1 * (x -= 1.5 / d1) * x + 0.75
    } else if (x < 2.5 / d1) {
        return n1 * (x -= 2.25 / d1) * x + 0.9375
    } else {
        return n1 * (x -= 2.625 / d1) * x + 0.984375
    }
}

function easeInBounce(x) {
    return 1 - easeOutBounce(1 - x)
}

function easeInOutBounce(x) {
    return x < 0.5 ?
        (1 - easeOutBounce(1 - 2 * x)) / 2 :
        (1 + easeOutBounce(2 * x - 1)) / 2
}
