def distance(strand1, strand2):
    if len(strand1) is not len(strand2): raise ValueError
    return len([x for i, x in enumerate(strand1) if strand2[i] is not x])
