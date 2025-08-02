fn add_values_tuple(tuple: &(i32, i32)) -> i32 {
    tuple.0 + tuple.1
}

fn add_values_tuple_destructured((a, b): &(i32, i32)) -> i32 {
    a + b
}

struct Arguments {
    a: i32,
    b: i32,
}

fn add_values_struct(arguments: &Arguments) -> i32 {
    arguments.a + arguments.b
}

fn add_values_struct_destructured(Arguments { a, b }: &Arguments) -> i32 {
    a + b
}

fn main() {
    add_values_tuple(&(1000, 1001));
    add_values_tuple_destructured(&(1000, 1001));
    add_values_struct(&Arguments { a: 1000, b: 1001 });
    add_values_struct_destructured(&Arguments { a: 1000, b: 1001 });
}
