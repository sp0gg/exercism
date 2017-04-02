import re


def is_isogram(string):
    upper_letters = ''.join(re.findall('[a-zA-Z]', string)).upper()
    return len(set(upper_letters)) == len(upper_letters)
