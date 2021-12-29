package main

import "fmt" //  which contains functions for formatting text, including printing to the console. This package is one of the standard library packages you got when you installed Go.

func main() {
	fmt.Println("Hello World!")
}

// To run the program, put the code in hello-world.go and use go run.

// $ go run hello-world.go

// Sometimes we’ll want to build our programs into binaries. We can do this using go build.

// $ go build hello-world.go
// $ ls
// hello-world.exe    hello-world.go
// We can then execute the built binary directly.
