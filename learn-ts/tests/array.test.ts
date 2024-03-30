describe("array", () => {
  it("describe", () => {
    const names: string[] = ["hello", "world"]; //bisa juga const name:Array<string> = ["hello", "world"];
    const ages: number[] = [1, 2, 3];

    console.log(names);
    console.log(ages);
  });

  it("readonly", () => {
    const hobbies: ReadonlyArray<string> = ["membaca", "main game"];
    console.log(hobbies);

    //   hobbies[0] = "menyanyi" //nah ini gabisa diubah data nya
  });

  it("tuple", () => {
    const person: readonly [string, string, number] = ["fahmi", "bekasi", 44];
    console.log(person[0]);
    console.log(person[1]);
    console.log(person[2]);
  });
});
