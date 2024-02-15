import { createSlice } from "@reduxjs/toolkit";

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
    addButton: (state, actions) => {
      state.counter = state.counter + actions.payload;
    },
  },
});

console.log(counterSlice);
