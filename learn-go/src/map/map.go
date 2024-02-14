package main

import "fmt"

func main() {

	mapp()
	detect()
	combine()
}

func mapp() {
	chicken := map[string]int{
		"januari":  50,
		"februari": 40,
		"maret":    34,
		"april":    67,
		"mei":      23,
	}

	// fmt.Println("januari", chicken["januari"])

	//iterasi for-range

	for key, val := range chicken {
		fmt.Println(key, val)
	}

	//delete

	delete(chicken, "februari")

	fmt.Println(chicken)
}

func detect() {
	chicken := map[string]int{
		"januari":  50,
		"februari": 40,
		"maret":    34,
		"april":    67,
		"mei":      23,
	}

	var value, isExist = chicken["mei"]

	if isExist {
		fmt.Println(value)
	} else {
		fmt.Println("data tidak ditemukan")
	}
}

func combine() {
	students := []map[string]string{
		{"name": "fahmi", "gender": "male"},
		{"name": "efki", "gender": "male"},
		{"name": "siti", "gender": "female"},
	}

	for _, student := range students {
		fmt.Println(student["name"], student["gender"])
	}
}
