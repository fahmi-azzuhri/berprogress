import React, { useState, useEffect, createContext } from "react";
import Cookies from "js-cookie";

export const AuthContext = createContext();
export const AuthProvider = () => {
  const [isAuthenticated, setIsAuthenticated] = useState(
    !!Cookies.get("token")
  );
  useEffect(() => {
    const handleTokenChange = () => {
      setIsAuthenticated(!!Cookies.get("token"));
    };
    window.addEventListener("storage", handleTokenChange);
    return () => {
      window.removeEventListener("storage", handleTokenChange);
    };
  }, []);

  return (
    <AuthContext.Provider
      value={{ isAuthenticated, setIsAuthenticated }}
    ></AuthContext.Provider>
  );
};
