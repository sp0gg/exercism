import re


def word_count(string):
    words = re.findall('[a-zA-Z0-9]+', string.lower())
    return {w: words.count(w) for w in set(words)}
