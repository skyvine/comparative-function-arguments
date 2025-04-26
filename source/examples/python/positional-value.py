def add_values(positional, named_or_positional):
    return positional + named_or_positional

def add_values_positional(positional, named_or_positional, /):
    return positional + named_or_positional

def add_values_mixed(positional, /, named_or_positional):
    return positional + named_or_positional

add_values(1000, 1001)
add_values_positional(1000, 1001)
add_values_mixed(1000, 1001)
add_values_mixed(1000, b=1001)
