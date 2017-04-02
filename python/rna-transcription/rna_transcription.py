import re


def to_rna(string):
    if re.findall('[^ACTG]', string): return ''

    trans = string.maketrans('ACTG', 'UGAC')
    return string.translate(trans)
