from palindrome import palindrome
from arabib_to_roman import arabic_to_roman
from brackets_validity_check import brackets_validity_check
from binary_muitiply import binary_muitiply

"Test 1"
testwords_dict = {'taco cat': True, 'rotator': True, 'black cat': False}
for word, boolvalue in testwords_dict.items():
    assert palindrome(word) == boolvalue, f'word "{word}" is not a palindrome -- > test failed!'


"Test 2"
testdict = {3: 'III', 9: 'IX', 1945: 'MCMXLV'}
for arabic, roman in testdict.items():
    assert arabic_to_roman(arabic) == roman, \
        f'number:{arabic} returns {arabic_to_roman(arabic)}, must be {roman} -- > test failed!'



"Test 3"
testdict = {'[{}({})]':True, '{]':False, '{':False, ')()(':False}
for brackets_string, bool_flag in testdict.items():
    assert brackets_validity_check(brackets_string) == bool_flag, \
        f'{brackets_string} validity test failed!'


"Test 4"
x1 = '111'
x2 = '101'
assert binary_muitiply(x1, x2) == '100011', f'Test for {x1=} and {x2=} failed!'

print('All tests OK!')