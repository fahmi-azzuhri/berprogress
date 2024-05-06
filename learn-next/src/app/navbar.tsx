"use client";
import Link from "next/link";
import React from "react";
import { usePathname, useRouter } from "next/navigation";

export default function Navbar() {
  const pathname = usePathname();
  const router = useRouter();
  return (
    <nav className="bg-gray-800 flex py-2 px-4 items-center">
      <Link href={"/"}>
        <h1
          className={`py-2 px-4 cursor-pointer ${
            pathname === "/" ? "text-blue-500" : "text-white"
          } `}
        >
          Home
        </h1>
      </Link>
      <ul className="flex ml-5">
        <Link href={"/about"}>
          <li
            className={`cursor-pointer mr-3 ${
              pathname === "/about" ? "text-blue-500" : "text-white"
            }`}
          >
            About
          </li>
        </Link>
        <Link href={"/about/profile"}>
          <li
            className={`cursor-pointer mr-3 ${
              pathname === "/about/profile" ? "text-blue-500" : "text-white"
            }`}
          >
            Profile
          </li>
        </Link>
      </ul>
      <div>
        <button
          className="py-2 px-4 cursor-pointer text-white bg-blue-500 rounded"
          onClick={() => router.push("/login")}
        >
          Login
        </button>
      </div>
    </nav>
  );
}
