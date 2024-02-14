import { createSlice } from "@reduxjs/toolkit";
import { decrement } from "..";

const initialState = {
  counter: 0,
};

export const counterSlice = createSlice({
  name: "counterSlice",
  initialState,
  reducers: {
    increment: (state) => {
      state.counter = state.counter + 1;
    },
    decrement: (state) => {
      state.counter = state.counter - 1;
      if (decrement) {
        state.counter <= 0 ? (state.counter = 0) : state.counter;
      }
    },
  },
});

console.log(counterSlice);
