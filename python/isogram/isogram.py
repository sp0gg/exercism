import re


def is_isogram(string):
    reg = re.compile('[a-zA-Z]')
    upper_letters = ''.join(reg.findall(string)).upper()
    return len(set(upper_letters)) == len(upper_letters)
