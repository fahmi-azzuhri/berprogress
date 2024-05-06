import React from "react";

type DetailProductProps = {
  params: {
    slug: string[];
  };
};
export default function DetailProductPage(props: DetailProductProps) {
  const { params } = props;
  return (
    <div>
      <h1> {params.slug ? "Detail Product" : "Product Page"}</h1>
      {params.slug && (
        <>
          <h3>bchdvcwh : {params.slug[0]}</h3>
          <p>kvcahj : {params.slug[1]} </p>
          <p>kqhfe : {params.slug[2]} </p>
        </>
      )}
    </div>
  );
}
