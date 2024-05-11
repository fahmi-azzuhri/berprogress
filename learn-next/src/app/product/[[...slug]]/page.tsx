import React from "react";

type ProductPageProps = {
  params: {
    slug: string[];
  };
};

async function getData() {
  const res = await fetch("https://fakestoreapi.com/products");

  if (!res.ok) {
    throw new Error("Failed to fetch data");
  }

  return res.json();
}

export default async function ProductPage(props: ProductPageProps) {
  const data = await getData();
  console.log(data);

  return (
    <div>
      {/* <h1> {params.slug ? "Detail Product" : "Product Page"}</h1>
      {params.slug && (
        <>
          <h3>bchdvcwh : {params.slug[0]}</h3>
          <p>kvcahj : {params.slug[1]} </p>
          <p>kqhfe : {params.slug[2]} </p>
        </>
      )} */}
    </div>
  );
}
