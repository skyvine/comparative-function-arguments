def normal_params(one, two, three):
    if one:
        two
    else:
        three

def all_positional():
    normal_params(1, 2, 3)

def all_keyword():
    normal_params(one=1, two=2, three=3)

def mixed():
    normal_params(1, three=3, two=2)
