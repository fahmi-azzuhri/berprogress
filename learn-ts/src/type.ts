//type alias

type Orang =  {
    name: string
    age: number
    address?: string
}

const orang : Orang = {
    name: "John",
    age: 30
}

//union type
type Hewan = "cat" | "dog" | "bird"
let kucing : Hewan = "cat"

//intersection type
type Karyawan = {
    name: string
    age: number
}

type KaryawanTetap = {
    id : number,
    salary: number
}

type KaryawanTerbaik = Karyawan & KaryawanTetap;
let karyawanTerbaik : KaryawanTerbaik = {
    name: "John",
    age: 30,
    id: 1,
    salary: 100000
}