"use client";
import React, { useState } from "react";

export default function Template({
  children,
}: Readonly<{ children: React.ReactNode }>) {
  const [state, setState] = useState(0);
  return (
    <div>
      {/* <h1>Count {state} </h1>
      <button
        className="btn btn-primary py-2 px-4 cursor-pointer"
        onClick={() => setState(state + 1)}
      >
        Klik +1
      </button> */}
      {children}
    </div>
  );
}
