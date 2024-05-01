import React from "react";

export default function LayoutAbout({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  return (
    <>
      <nav className="fixed right-0 top-0 z-10 h-screen w-60 bg-gray-700">
        <ul className="text-white p-5">
          <li>Lorem</li>
          <li>Lorem</li>
          <li>Lorem</li>
        </ul>
      </nav>
      <div>{children}</div>
    </>
  );
}
