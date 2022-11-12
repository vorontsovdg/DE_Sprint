def brackets_validity_check(input_value :str) -> bool:
    input_value = input_value.strip()
    while True:
        if '()' in input_value:
            input_value = input_value.replace('()', '')
        elif '[]' in input_value:
            input_value = input_value.replace('[]', '')
        elif '{}' in input_value:
            input_value = input_value.replace('{}', '')
        else:
            break
    return not bool(input_value)
