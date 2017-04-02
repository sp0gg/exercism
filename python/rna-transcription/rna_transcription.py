import re


def to_rna(string):
    if len(re.findall('[^ACTG]', string)) > 0: return ''

    trans = string.maketrans('ACTG', 'UGAC')
    return string.translate(trans)
