package main

import "fmt"

func main() {
	var number int = 4
	fmt.Println("before", number)

	change(&number, 19)
	fmt.Println("after", number)
}
func change(original *int,value int)  {
	*original = value
}
