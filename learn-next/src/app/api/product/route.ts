import { NextRequest, NextResponse } from "next/server";

const data = [
  {
    id: 1,
    name: "Sepatu Lari",
    price: 100000,
    stock: 10,
  },
  {
    id: 2,
    name: "Sepatu Tenis",
    price: 200000,
    stock: 20,
  },
  {
    id: 3,
    name: "Sepatu Basket",
    price: 300000,
    stock: 30,
  },
];
export async function GET(request: NextRequest) {
  console.log(request);
  const { searchParams } = new URL(request.url);
  const id = searchParams.get("id");

  if (id) {
    const detailProduct = data.find((item) => item.id === Number(id));
    if (detailProduct) {
      return NextResponse.json({
        status: 200,
        message: "success",
        data: detailProduct,
      });
    }
    return NextResponse.json({
      status: 404,
      message: "data not found",
      data: null,
    });
  }

  return NextResponse.json({ status: 200, message: "success", data: data });
}
