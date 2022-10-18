def brackets_validity_check(input_value :str) -> bool:
    pairs = ('()', '[]', '{}')
    while input_value:
        bool_flag = True
        for pair in pairs:
            if pair in input_value:
                input_value = input_value.replace(pair, '')
                bool_flag = False
        if bool_flag:
            return False
    return True

