#[derive(std::fmt::Debug)]
struct Point {
  x: i64,
  y: i64,
}

fn jump_plain(starting: &Point) -> Point {
  Point {
    x: starting.x,
    y: starting.y * 2
  }
}

fn jump_pattern(Point {
                  x: h, // horizontal
                  y: v  // vertical
                }: &Point)
  -> Point {

  Point {
    x: *h,
    y: *v * 2
  }
}

fn main() {
  let uut: Point = Point { x: 1, y: 1 };
  println!("{:?}", jump_plain(&uut));
  println!("{:?}", jump_pattern(&uut));
}
