def normal_params(one, two, three):
    if one:
        two
    else:
        three

def all_default(one=True, two="Two", three="Three"):
    if one:
        two
    else:
        three

def all_positional(one, two, three, /):
    if one:
        two
    else:
        three

def all_keyword(*, one, two, three):
    if one:
        two
    else:
        three

def mixed(one, /, two, *, three):
    if one:
        two
    else:
        three
