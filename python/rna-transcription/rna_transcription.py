import re


def to_rna(string):
    if len(re.findall('[^ACTG]', string)) > 0: return ''

    replacements = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}
    regexp = re.compile('|'.join(map(re.escape, replacements)))
    return regexp.sub(lambda match: replacements[match.group(0)], string)
