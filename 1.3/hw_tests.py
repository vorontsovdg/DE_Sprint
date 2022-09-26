from palindrome import palindrome
from arabib_to_roman import arabic_to_roman


"Test 1"
testwords_dict = {'taco cat': True, 'rotator': True, 'black cat': False}
for word, boolvalue in testwords_dict.items():
    assert palindrome(word) == boolvalue, f'word "{word}" is not a palindrome -- > test failed!'


"Test 2"
testdict = {3: 'III', 9: 'IX', 1945: 'MCMXLV'}
for arabic, roman in testdict.items():
    assert arabic_to_roman(arabic) == roman, \
        f'number:{arabic} returns {arabic_to_roman(arabic)}, must be {roman} -- > test failed!'



print('All tests OK!')