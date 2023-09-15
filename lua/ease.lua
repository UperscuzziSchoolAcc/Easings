function EaseInSine(x)
    return 1 - cos((x * pi) / 2)
end

function EaseOutSine(x)
    return sin((x * pi) / 2)
end

function EaseInOutSine(x)
    return -(cos(pi * x) - 1) / 2
end

function EaseInCubic(x)
    return x * x * x
end

function EaseOutCubic(x)
    return 1 - pow(1 - x, 3)
end

function EaseInOutCubic(x)
    if x < 0.5 then
        return 4 * x * x * x
    else
        return 1 - pow(-2 * x + 2, 3) / 2
    end
end

function EaseInQuint(x)
    return x * x * x * x
end

function EaseOutQuint(x)
    return 1 - pow(1 - x, 5)
end

function EaseInOutQuint(x)
    if x < 0.5 then
        return 16 * x * x * x * x * x
    else
        return 1 - pow(-2 * x + 2, 5) / 2
    end
end

function EaseInCirc(x)
    return 1 - sqrt(1 - (x * x))
end

function EaseOutCirc(x)
    return sqrt(1 - pow(x - 1, 2))
end

function EaseInOutCirc(x)
    if x < 0.5 then
        return (1 - sqrt(1 - pow(2 * x, 2))) / 2
    else
        return (sqrt(1 - pow(-2 * x + 2, 2)) + 1) / 2
    end
end

function EaseInElastic(x)
    if x == 0 then
        return 0
    elseif x == 1 then
        return 1
    else
        return -pow(2, 10 * x - 10) * sin(
            (x * 10 - 10.75) * ((2 * pi) / 3)
        )
    end
end

function EaseOutElastic(x)
    if x == 0 then
        return 0
    elseif x == 1 then
        return 1
    else
        return (
            pow(2, -10 * x) * sin((x * 10 - 0.75) * ((2 * pi) / 3)) + 1
        )
    end
end


function EaseInOutElastic(x)
    if x == 0 then
        return 0
    elseif x == 1 then
        return 1
    elseif x < 0.5 then
        return (
            -(
                pow(2, 20 * x - 10)
                * sin((20 * x - 11.125) * ((2 * pi) / 4.5))
            )
            / 2
        )
    else
        return (
            pow(2, -20 * x + 10)
            * sin((20 * x - 11.125) * ((2 * pi) / 4.5))
        ) / 2 + 1
    end
end

function EaseInQuad(x)
    return x * x
end

function EaseOutQuad(x)
    return 1 - (1 - x) * (1 - x)
end

function EaseInOutQuad(x)
    if x < 0.5 then
        return 2 * x * x
    else
        return 1 - pow(-2 * x + 2, 2) / 2
    end
end

function EaseInQuart(x)
    return x * x * x * x
end

function EaseOutQuart(x)
    return 1 - pow(1 - x, 4)
end

function EaseInOutQuart(x)
    if x < 0.5 then
        return 8 * x * x * x * x
    else
        return 1 - pow(-2 * x + 2, 4) / 2
    end
end

function EaseInExpo(x)
    if x == 0 then
        return 0
    else
        return pow(2, 10 * x - 10)
    end
end


function EaseOutExpo(x)
    if x == 1 then
        return 1
    else
        return 1 - pow(2, -10 * x)
    end
end


function EaseInOutExpo(x)
    if x == 0 then
        return 0
    elseif x == 1 then
        return 1
    elseif x < 0.5 then
        return pow(2, 20 * x - 10) / 2
    else
        return 2 - pow(2, -20 * x + 10) / 2
    end
end

function EaseInBack(x)
    return 2.70158 * x * x * x - 1.70158 * x * x
end


function EaseOutBack(x)
    return 1 + 2.70158 * pow(x - 1, 3) + 1.70158 * pow(x - 1, 2)
end


function EaseInOutBack(x)
    if x < 0.5 then
        return (pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2
    else
        return (pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2
    end
end


function EaseOutBounce(x)
    if x < 1 / 2.75 then
        return 7.5625 * x * x
    elseif x < 2 / 2.75 then
        return 7.5625 * (x - 1.5 / 2.75) * (x - 1.5) + 0.75
    elseif x < 2.5 / 2.75 then
        return 7.5625 * (x - 2.25 / 2.75) * (x - 2.25) + 0.9375
    else
        return 7.5625 * (x - 2.625 / 2.75) * (x - 2.625) + 0.984375
    end
end

function EaseInBounce(x)
    return 1 - EaseOutBounce(1 - x)
end

function EaseInOutBounce(x)
    if x < 0.5 then
        return (1 - EaseOutBounce(1 - 2 * x)) / 2
    else
        return (1 + EaseOutBounce(2 * x - 1)) / 2
    end
end
