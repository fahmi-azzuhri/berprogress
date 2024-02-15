import React from "react";
import { useSelector, useDispatch } from "react-redux";
import { increment, decrement, addButton } from "../store";
export default function Counter() {
  const { counter } = useSelector((state) => state.counterSlice);
  const dispatch = useDispatch();
  //   console.log("counter", counter);
  return (
    <>
      <p> {counter}</p>
      <button onClick={() => dispatch(increment())}>Increment</button>
      <button onClick={() => dispatch(decrement())}>Decrement</button>
      <button onClick={() => dispatch(addButton(700))}>Add</button>
    </>
  );
}
