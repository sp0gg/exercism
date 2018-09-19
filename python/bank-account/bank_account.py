from functools import wraps
from threading import Lock
lock = Lock()


def validate_open(fn):
    @wraps(fn)
    def _validate_open(self, *args, **kwargs):
        if not self._is_open:
            raise ValueError('u dun goofed')
        return fn(self, *args, **kwargs)
    return _validate_open


def validate_amount(fn):
    @wraps(fn)
    def _validate_amount(self, *args, **kwargs):
        if args[0] <= 0:
            raise ValueError('wtf hax0r?')
        return fn(self, *args, **kwargs)
    return _validate_amount


def validate_sufficient_funds(fn):
    @wraps(fn)
    def _validate_sufficient_funds(self, *args, **kwargs):
        if self._balance < args[0]:
            raise ValueError('u broke son')
        return fn(self, *args, **kwargs)
    return _validate_sufficient_funds


class BankAccount(object):
    def __init__(self):
        self._balance = 0
        self._is_open = False

    @validate_open
    def get_balance(self):
        return self._balance

    @validate_amount
    @validate_open
    def deposit(self, amount):
        with lock:
            self._balance += amount

    @validate_sufficient_funds
    @validate_amount
    @validate_open
    def withdraw(self, amount):
        with lock:
            self._balance -= amount

    def open(self):
        self._is_open = True

    def close(self):
        self._is_open = False
