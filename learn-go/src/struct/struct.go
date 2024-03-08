package main

import (
	"fmt"
)

type student struct {
	name   string
	gender string
	grade  int
}

type person struct {
	name string
	age  int
}

type students struct {
	person
	age   int
	grade int
}

func main() {
	// penerapanStruct()
	// objectStruct()
	// embedStruct()
	subStruct()

}

func penerapanStruct() {
	var s1 student
	s1.name = "fahmi"
	s1.gender = "male"
	s1.grade = 1

	fmt.Println("name :", s1.name)
	fmt.Println("gender :", s1.gender)
	fmt.Println("grade :", s1.grade)
}

func objectStruct() {
	var s1 = student{}
	s1.name = "fahmi"
	s1.gender = "male"
	s1.grade = 1

	var s2 = student{
		"Fahmi", "male", 1,
	}

	var s3 = student{
		name:   "fahmi",
		gender: "male",
		grade:  1,
	}

	fmt.Println("student 1 :", s1)
	fmt.Println("student 2 :", s2)
	fmt.Println("student 3 :", s3)
}

func embedStruct() {
	var s1 = students{}
	s1.person.name = "fahmi"
	s1.age = 19
	s1.person.age = 19

	fmt.Println("name :", s1.person.name)
	fmt.Println("age :", s1.age)
	fmt.Println("age :", s1.person.age)
}

func subStruct() {
	var p1 = person{name: "fahmi", age: 19}
	var s1 = students{person: p1, grade: 2}

	fmt.Println("name :", s1.name)
	fmt.Println("age :", s1.age)
	fmt.Println("grade :", s1.grade)
}
