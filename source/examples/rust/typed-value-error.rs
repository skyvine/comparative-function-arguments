fn add_values(a: i32, b: i32) -> i32 {
    a + b
}

fn add_unsigned_values(a: u32, b: u32) -> u32 {
    a + b
}

fn main() {
    let a = 1000;
    let b = 1001;
    add_values(a, b);
    add_unsigned_values(a, b);
    add_values("1000", "1001");
}

