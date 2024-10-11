export interface GodownItemProps {
  id: string;
  label: string;
  type: "godown" | "item";
  list: GodownItemProps[];
  status: "loaded" | "loading" | "not loaded";
}

export interface ItemProps {
  id: string;
  name: string;
  quantity: number;
  price: number;
  godownId: string;
  brand: string;
  attributes: any;
  category: string;
  inStock: boolean;
  imageUrl: string;
}

export async function ifetch(url: string) {
  const res = await fetch(url, {
    headers: {
      Authorization: `Bearer ${localStorage.getItem("token")}`,
    },
  });
  return res.json();
}