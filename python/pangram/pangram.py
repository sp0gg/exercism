import re


def is_pangram(string):
    return len(set(re.findall('[a-zA-Z]', string.upper()))) == 26
