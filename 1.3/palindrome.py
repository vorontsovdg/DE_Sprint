def palindrome(input_string : str) -> bool:
    input_string = input_string.lower().replace(' ','')
    return input_string == input_string[::-1]