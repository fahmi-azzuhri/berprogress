// type Person =  {
//     name: string
//     age: number
//     address?: string
// }
interface Person {
    name: string
    age: number
    address?: string
}
const person : Person = {
    name: "John",
    age: 30
}

console.log(person)