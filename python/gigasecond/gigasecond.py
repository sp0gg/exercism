import datetime

GIGASECOND = 10**9


def add_gigasecond(date):
    return date + datetime.timedelta(seconds=GIGASECOND)
