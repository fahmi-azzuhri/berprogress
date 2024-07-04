import React, { useContext } from "react";
import { Routes, Route, Navigate } from "react-router-dom";
import { AuthContext } from "../context/AuthContext";
import Login from "../views/auth/Login";
import Home from "../views/home";
import Register from "../views/auth/Register";
import Dashboard from "../views/admin/dashboard/index.jsx";

//import view users index
import UsersIndex from "../views/admin/users/index.jsx";

//import view users create
import UsersCreate from "../views/admin/users/create.jsx";

//import view users edit
import UsersEdit from "../views/admin/users/edit.jsx";
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
      <Route
        path="/admin/dashboard"
        element={
          isAuthenticated ? <Dashboard /> : <Navigate to="/login" replace />
        }
      />
      {/* route "/admin/users" */}
      <Route
        path="/admin/users"
        element={
          isAuthenticated ? <UsersIndex /> : <Navigate to="/login" replace />
        }
      />

      {/* route "/admin/users/create" */}
      <Route
        path="/admin/users/create"
        element={
          isAuthenticated ? <UsersCreate /> : <Navigate to="/login" replace />
        }
      />

      {/* route "/admin/users/edit/:id" */}
      <Route
        path="/admin/users/edit/:id"
        element={
          isAuthenticated ? <UsersEdit /> : <Navigate to="/login" replace />
        }
      />
    </Routes>
  );
}
