def reverse(text=''):
    if len(text) <= 1:
        return text

    return text[-1] + reverse(text[1:-1]) + text[0]
