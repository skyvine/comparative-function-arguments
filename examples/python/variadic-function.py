def add_positional_values(*vals):
    return sum(vals)

def add_named_values(**named_vals):
    return sum(named_vals.values())

def add_values(*vals, **named_vals):
    return sum(vals) + sum(named_vals.values())

add_positional_values(1000, 1001, 1002, 1003)
add_values(1000, 1001, 1002, 1003)

add_named_values(named_val0=1000, named_val1=1001, named_val2=1002, named_val3=1003)
add_values(named_val0=1000, named_val1=1001, named_val2=1002, named_val3=1003)

add_all_values(1002, 1003, named_val0=1000, named_val1=1001)
