import React from "react";
import { useDispatch, useSelector } from "react-redux";
import { fetchUser } from "../store/slices/userSlice";

export default function User() {
  const { users } = useSelector((state) => state.userSlice);
  const dispatch = useDispatch();
  return (
    <div>
      <button onClick={() => dispatch(fetchUser())}>Get</button>
      {/* <p> {users.map((user) => user.name)} </p> */}
      {JSON.stringify(users.map((user) => user.name))}
    </div>
  );
}
