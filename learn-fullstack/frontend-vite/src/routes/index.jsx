import React, { useContext } from "react";
import { Routes, Route, Navigate } from "react-router-dom";
import { AuthContext } from "../context/AuthContext";
import Login from "../views/auth/Login";
import Home from "../views/home";
import Register from "../views/auth/Register";

export default function AppRoutes() {
  const { isAuthenticated } = useContext(AuthContext);
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route
        path="/login"
        element={
          isAuthenticated ? (
            <Navigate to="admin/dashboard" replace />
          ) : (
            <Login />
          )
        }
      />
      <Route
        path="/register"
        element={
          isAuthenticated ? (
            <Navigate to="admin/dashboard" replace />
          ) : (
            <Register />
          )
        }
      />
    </Routes>
  );
}
