from telnetlib import BINARY


def binary_muitiply(a:str, b:str) -> str:
    int_a = int(a, base=2)
    int_b = int(b, base=2)
    return format(int_a * int_b, 'b')
