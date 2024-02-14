package main

import "fmt"

func main() {

	//if else
	const nilai = 8

	if nilai == 10 {
		fmt.Println("Sangat Memuaskan")
	} else if nilai == 8 {
		fmt.Println("Memuaskan")
	} else {
		fmt.Println("Tidak Memuaskan")
	}

	//variabel temporary

	const point = 10000

	if percent := point / 100; percent == 100 {
		fmt.Println("perfect")
	} else if percent >= 80 {
		fmt.Println("good")
	} else {
		fmt.Println("not bad")
	}

	//switch case

	const points = 6

	switch points {
	case 8:
		fmt.Println("perfect")
	case 7:
		fmt.Println("awesome")
	default:
		fmt.Println("not bad")
	}

	//switch gaya if-else

	const score = 2

	switch {
	case score == 8:
		fmt.Println("perfect")
	case (score < 8) && (score > 3):
		fmt.Println("awesome")
	default:
		{
			fmt.Println("not bad")
			fmt.Println("you need to learn more")
		}
	}

	//kondisi bersarang

	const poin = 10

	if poin > 7 {
		switch poin {
		case 10:
			fmt.Println("perfect")
		default:
			fmt.Println("nice")
		}
	} else {
		if poin == 5 {
			fmt.Println("not bad")
		} else if poin == 3 {
			fmt.Println("keep trying")
		} else {
			fmt.Println("you need to learn more")
			if poin == 0 {
				fmt.Println("sorry")
			}
		}
	}
}
