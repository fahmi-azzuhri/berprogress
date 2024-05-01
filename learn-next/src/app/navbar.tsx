import Link from "next/link";
import React from "react";

export default function Navbar() {
  return (
    <nav className="bg-gray-800 flex py-2 px-4">
      <Link href={"/"}>
        <h1 className="text-white py-2 px-4 cursor-pointer">Navbar</h1>
      </Link>
      <ul className="flex flex-row text-white items-center">
        <Link href={"/about"}>
          <li className="ml-4">About</li>
        </Link>
        <Link href={"/about/profile"}>
          <li className="ml-4">Profile</li>
        </Link>
      </ul>
    </nav>
  );
}
