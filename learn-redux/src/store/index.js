import { configureStore } from "@reduxjs/toolkit";
import { counterSlice } from "./slices/counterSlices";
import { userSlice } from "./slices/userSlice";

export const store = configureStore({
  reducer: {
    counterSlice: counterSlice.reducer,
    userSlice: userSlice.reducer,
  },
});
