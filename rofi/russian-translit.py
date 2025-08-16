#!/usr/bin/env python3

import sys

charmap = {
    "shh": "щ",
    "sh": "ш",
    "zh": "ж",
    "ch": "ч",
    "kh": "х",
    "ja": "я",
    "eh": "э",
    "jo": "ё",
    "ju": "ю",
    "a": "а",
    "b": "б",
    "v": "в",
    "g": "г",
    "d": "д",
    "e": "е",
    "z": "з",
    "i": "и",
    "j": "й",
    "k": "к",
    "l": "л",
    "m": "м",
    "n": "н",
    "o": "о",
    "p": "п",
    "r": "р",
    "s": "с",
    "t": "т",
    "u": "у",
    "f": "ф",
    "c": "ц",
    "y": "ы",
    "'": "ь",
    '"': "ъ"
}

def translit(text):
    for i in charmap.keys():
        text = text.replace(i.capitalize(), charmap[i].upper()) # e.g. Zh
        text = text.replace(i.upper(), charmap[i].upper()) # e.g. ZH
        text = text.replace(i, charmap[i]) # e.g. zh

    return text

def main():
    input = sys.stdin.read().strip()
    
    if len(input) > 0:
        print(translit(input), end="")

if __name__ == "__main__":
    main()