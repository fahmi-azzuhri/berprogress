package main

import "fmt"
func main() {
	var firstName string
	firstName = "Fahmi"

	var middleName string = "Azzuhri"

	lastName := "Efki" //tanpa perantara sepert var,const. tapi diganti dengan := tapi harus di dalam blok fungsi

	fmt.Println(firstName,middleName,lastName)


	//deklarasi multi variabel
	first,second,third := "satu","dua","tiga"
	fmt.Println(first,second,third)

}
