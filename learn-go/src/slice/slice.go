package main

import "fmt"

func main() {
	//slice
	var fruits = []string{"apple", "banana", "melon", "mangga"}
	fmt.Println(fruits[1])

	//append

	var fruits = []string{"apple", "banana", "melon", "mangga"}
	var cFruits = append(fruits, "jambu")

	fmt.Println("fruits", cFruits)

	//copy

	dst := make([]string, 4)
	src := []string{"apple", "banana", "melon", "mangga"}
	n := copy(dst, src)

	fmt.Println(n)
	fmt.Println(dst) //akan mengcopy yang ada di src sesuai jumlah

}
