package main

import "fmt"

func main() {
	var fruits = [4]string{"apple", "banana", "melon", "mangga"}

	fmt.Println(fruits)
	fmt.Println(len(fruits)) //len untuk mencari panjang data dalam array

	//perulangan array for

	var fruitss = [4]string{"apple", "banana", "melon", "mangga"}
	for i := 0; i < len(fruitss); i++ {
		fmt.Println("elemen ke", i, "adalah", fruitss[i])
	}

	perulangan array for-range
	var fruits = [4]string{"apple", "banana", "melon", "mangga"}

	for index, fruit := range fruits {
		fmt.Println("elemen ke", index, "adalah", fruit) //jika tidak ingin menampilkan index, ganti index dengan _
	}

	//alokasi elemen array

	var fruits = make([]string, 2)

	fruits[0] = "apple"
	fruits[1] = "banana"

	fmt.Println("fruits", fruits)

}
