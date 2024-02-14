package main

import "fmt"

func main() {
	const value = (((2+6)%3)*4 - 2) / 3
	const isEqual = (value == 6)

	fmt.Printf("nilai %d (%t) \n", value, isEqual)

}
