class Ease {
    public double easeInSine(double x) {
        return 1 - Math.cos((x * Math.PI) / 2);
    }

    public double easeOutSine(double x) {
        return Math.sin((x * Math.PI) / 2);
    }

    public double easeInOutSine(double x) {
        return 0 - (Math.cos(Math.PI * x) - 1) / 2;
    }

    public double easeInCubic(double x) {
        return x * x * x;
    }

    public double easeOutCubic(double x) {
        return 1 - Math.pow(1 - x, 3);
    }

    public double easeInOutCubic(double x) {
        if (x < 0.5) {
            return 4 * x * x * x;
        } else {
            return 1 - Math.pow(-2 * x + 2, 3) / 2;
        }
    }

    public double easeInQuint(double x) {
        return x * x * x * x;
    }

    public double easeOutQuint(double x) {
        return 1 - Math.pow(1 - x, 5);
    }

    public double easeInOutQuint(double x) {
        if (x < 0.5) {
            return 16 * x * x * x * x * x;
        } else {
            return 1 - Math.pow(-2 * x + 2, 5) / 2;
        }
    }

    public double easeInCirc(double x) {
        return 1 - Math.sqrt(1 - (x * x));
    }

    public double easeOutCirc(double x) {
        return Math.sqrt(1 - Math.pow(x - 1, 2));
    }

    public double easeInOutCirc(double x) {
        if (x < 0.5) {
            return (1 - Math.sqrt(1 - Math.pow(2 * x, 2))) / 2;
        } else {
            return (Math.sqrt(1 - Math.pow(-2 * x + 2, 2)) + 1) / 2;
        }
    }

    public double easeInElastic(double x) {
        if (x == 0) {
            return 0;
        } else if (x == 1) {
            return 1;
        } else {
            return 0 - Math.pow(2, 10 * x - 10) * Math.sin((x * 10 - 10.75) * ((2 * Math.PI) / 3));
        }
    }

    public double easeOutElastic(double x) {
        if (x == 0) {
            return 0;
        } else if (x == 1) {
            return 1;
        } else {
            return Math.pow(2, -10 * x) * Math.sin((x * 10 - 0.75) * ((2 * Math.PI) / 3)) + 1;
        }
    }

    public double easeInOutElastic(double x) {
        if (x == 0) {
            return 0;
        } else if (x == 1) {
            return 1;
        } else if (x < 0.5) {
            return 0 - (Math.pow(2, 20 * x - 10) * Math.sin((20 * x - 11.125) * ((2 * Math.PI) / 4.5))) / 2;
        } else {
            return (Math.pow(2, -20 * x + 10) * Math.sin((20 * x - 11.125) * ((2 * Math.PI) / 4.5))) / 2 + 1;
        }
    }

    public double easeInQuad(double x) {
        return x * x;
    }

    public double easeOutQuad(double x) {
        return 1 - (1 - x) * (1 - x);
    }

    public double easeInOutQuad(double x) {
        if (x < 0.5) {
            return 2 * x * x;
        } else {
            return 1 - Math.pow(-2 * x + 2, 2) / 2;
        }
    }

    public double easeInQuart(double x) {
        return x * x * x * x;
    }

    public double easeOutQuart(double x) {
        return 1 - Math.pow(1 - x, 4);
    }

    public double easeInOutQuart(double x) {
        if (x < 0.5) {
            return 8 * x * x * x * x;
        } else {
            return 1 - Math.pow(-2 * x + 2, 4) / 2;
        }
    }

    public double easeInExpo(double x) {
        if (x == 0) {
            return 0;
        } else {
            return Math.pow(2, 10 * x - 10);
        }
    }

    public double easeOutExpo(double x) {
        if (x == 1) {
            return 1;
        } else {
            return 1 - Math.pow(2, -10 * x);
        }
    }

    public double easeInOutExpo(double x) {
        if (x == 0) {
            return 0;
        } else if (x == 1) {
            return 1;
        } else if (x < 0.5) {
            return Math.pow(2, 20 * x - 10) / 2;
        } else {
            return 2 - Math.pow(2, -20 * x + 10) / 2;
        }
    }

    public double easeInBack(double x) {
        return 2.70158 * x * x * x - 1.70158 * x * x;
    }

    public double easeOutBack(double x) {
        return 1 + 2.70158 * Math.pow(x - 1, 3) + 1.70158 * Math.pow(x - 1, 2);
    }

    public double easeInOutBack(double x) {
        if (x < 0.5) {
            return (Math.pow(2 * x, 2) * (7.189819 * x - 2.5949095)) / 2;
        } else {
            return (Math.pow(2 * x - 2, 2) * (3.5949095 * (x * 2 - 2) + 2.5949095) + 2) / 2;
        }
    }

    public double easeOutBounce(double x) {
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

    public double easeInBounce(double x) {
        return 1 - easeOutBounce(1 - x);
    }

    public double easeInOutBounce(double x) {
        if (x < 0.5) {
            return (1 - easeOutBounce(1 - 2 * x)) / 2;
        } else {
            return (1 + easeOutBounce(2 * x - 1)) / 2;
        }
    }
}
