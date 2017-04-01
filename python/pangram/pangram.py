import re


def is_pangram(string):
    reg = re.compile('[a-zA-Z]')
    return len(set(reg.findall(string.upper()))) == 26
