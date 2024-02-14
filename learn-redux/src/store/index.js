import { configureStore } from "@reduxjs/toolkit";
import { counterSlice } from "./slices/counterSlices";
export const store = configureStore({
  reducer: {
    counterSlice: counterSlice.reducer,
  },
});

export const { increment, decrement } = counterSlice.actions;
