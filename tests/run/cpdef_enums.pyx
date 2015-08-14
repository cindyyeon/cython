"""
>>> ONE, TEN, HUNDRED
(1, 10, 100)
>>> THOUSAND        # doctest: +ELLIPSIS
Traceback (most recent call last):
NameError: ...name 'THOUSAND' is not defined

>>> TWO == 2 or TWO
True
>>> THREE == 3 or THREE
True
>>> FIVE == 5 or FIVE
True
>>> SEVEN           # doctest: +ELLIPSIS
Traceback (most recent call last):
NameError: ...name 'SEVEN' is not defined

>>> FOUR == 4 or FOUR
True
>>> EIGHT == 8 or EIGHT
True
>>> SIXTEEN        # doctest: +ELLIPSIS
Traceback (most recent call last):
NameError: ...name 'SIXTEEN' is not defined

>>> RANK_0 == 11 or RANK_0
True
>>> RANK_1 == 37 or RANK_1
True
>>> RANK_2 == 389 or RANK_2
True
>>> RANK_3         # doctest: +ELLIPSIS
Traceback (most recent call last):
NameError: ...name 'RANK_3' is not defined
"""


cdef extern from *:
    cpdef enum: # ExternPyx
        ONE "1"
        TEN "10"
        HUNDRED "100"

    cdef enum: # ExternSecretPyx
        THOUSAND "1000"

cpdef enum PyxEnum:
    TWO = 2
    THREE = 3
    FIVE = 5

cdef enum SecretPyxEnum:
    SEVEN = 7
