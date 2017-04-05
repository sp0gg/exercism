import re


def word_count(string):
    words = [word.lower() for word in re.findall('[a-zA-Z0-9]+', string)]
    return {w: words.count(w) for w in set(words)}
