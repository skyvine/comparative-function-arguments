section = "DEFINITIONS"

def add_values(a, b):
    return a + b

def add_values_mixed(named_or_positional, *, named):
    return named_or_positional + named

def add_values_all_named(*, a, b):
    return a + b

section = "PURE POSITIONAL CALL"

add_values(1000, 1001)

section = "PURE NAMED CALLS"

add_values(b=1001, a=1000)
add_values_mixed(named=1001, named_or_positional=1000)
add_values_all_named(b=1001, a=1000)

section = "MIXED CALLS"

add_values(1000, b=1001)
add_values_mixed(1000, named=1001)
add_values_all_named(a=1000, b=1001)
