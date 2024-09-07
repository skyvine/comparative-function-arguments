import collections

def add_values(a, b, c):
    return a + b + c

add_values(1000, 1001, 1002)
add_values(a=1000, b=1001, c=1002)

l = [ 1000, 1001, 1002 ]
add_values(*l)

l = [ 1001, 1002 ]
add_values(1000, *l)

l = [ 1000, 1001 ]
add_values(*l, 1002)

t = ( 1000, 1001, 1002 )
add_values(*t)

t = ( 1001, 1002 )
add_values(1000, *t)

t0 = ( 1001, )
t1 = ( 1002, )
add_values(1000, *t0, *t1)

t = ( 1000, 1001 )
add_values(*t, 1002)

d = { 'a': 1000, 'b': 1001, 'c': 1002 }
add_values(**d)

d = { 'b': 1001, 'c': 1002 }
add_values(a=1000, **d)

d = { 'a': 1000, 'b': 1001 }
add_values(**d, c=1002)

d0 = { 'a': 1000 }
d1 = { 'a': 1001 }
d2 = { 'a': 1002 }
add_values(**d0, **d1, **d2)

c = collections.Counter(['a', 'b', 'c', 'a', 'b', 'a'])
add_values(**c)

c = collections.Counter(['b', 'c', 'b'])
add_values(a=1, **c)

l = [ 1000 ]
d = { 'c': 1002 }
add_values(*l, 1001, **d)
