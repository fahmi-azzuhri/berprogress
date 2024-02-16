import { createSlice } from "@reduxjs/toolkit";
import axios from "axios";

const initialState = {
  users: [],
};

export const userSlice = createSlice({
  name: "userSlice",
  initialState,
  reducers: {
    addUser: (state, action) => {
      state.users = action.payload;
    },
  },
});

export const { addUser } = userSlice.actions;

export const fetchUser = () => {
  return (dispatch) => {
    axios
      .get("https://jsonplaceholder.typicode.com/users")
      .then((res) => {
        console.log(res.data);
        dispatch(addUser(res.data));
      })
      .catch((err) => {
        console.log(err);
      });
  };
};
