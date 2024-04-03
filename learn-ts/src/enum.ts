export enum CustomerType {
  BRONZE,
  SILVER,
  GOLD,
}
export type Customer = { id: number; name: string; type: CustomerType };
