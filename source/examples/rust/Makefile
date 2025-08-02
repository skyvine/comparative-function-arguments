all: intro-example simple

intro-example: intro-example.rs
	rustc -C linker=gcc intro-example.rs

simple: simple.rs
	rustc -C linker=gcc simple.rs

simple.dis: simple
	objdump -M intel -d simple > simple.dis
