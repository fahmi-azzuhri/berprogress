import { configureStore } from "@reduxjs/toolkit";
import { counterSlice } from "./slices/counterSlices";

export const store = configureStore({
  reducer: {
    counterSlice: counterSlice.reducer,
  },
});
