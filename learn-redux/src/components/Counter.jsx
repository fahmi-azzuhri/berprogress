import React from "react";
import { useSelector } from "react-redux";

export default function Counter() {
  const { counter } = useSelector((state) => state.counterSlice);
  //   console.log("counter", counter);
  return (
    <>
      <p> {counter}</p>
    </>
  );
}
