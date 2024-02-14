package main

import "fmt"

func main() {
	//looping for

	var x = 0

	for x < 5 {
		fmt.Println("angka", x)
		x++
	}

	//tanpa argument
	var i = 0

	for {
		if i == 100 {
			break
		}

		fmt.Println("Angka", i)
		i++
	}

	//continue-break

	for a := 0; a < 10; a++ {
		if a%2 == 0 { //Jika a genap, maka dilewati ke iterasi berikutnya menggunakan continue
			continue
		}

		if a > 8 {
			break
		}

		fmt.Println("Angka", a)
	}
}
