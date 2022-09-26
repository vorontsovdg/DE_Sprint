def arabic_to_roman(number : int) -> str:
    arabic_numbers = (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1)
    roman_numbers = ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I')
    result = ''
    for arabic, roman in zip(arabic_numbers, roman_numbers):
        result += roman * (number // arabic)
        number %= arabic
    return result