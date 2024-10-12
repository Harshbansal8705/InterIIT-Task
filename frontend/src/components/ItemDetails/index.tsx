import { ifetch, ItemProps } from "@/utils";
import { useEffect, useState } from "react";
import { toast } from "react-toastify";
import Loading from "../Loading";

export default function ItemDetails({ item, itemLoading }: { item: ItemProps | undefined, itemLoading: boolean }) {
  const [address, setAddress] = useState<string>("");
  useEffect(() => {
    if (!item) return;
    try {
      ifetch(`${process.env.NEXT_PUBLIC_BACKEND_URL}/api/address/${item.godownId}`).then((data) => {
        if (data.success) setAddress(data.data);
        else toast.error(data.error);
      });
    } catch (error) {
      console.error("Error fetching godowns:", error);
      toast.error("Failed to fetch godowns");
    }
  }, [item]);

  if (itemLoading) {
    return <Loading />;
  } else if (!item) {
    return (
      <div className="flex items-center justify-center h-screen">
        <p className="text-2xl text-gray-500">Select an item to view details</p>
      </div>
    );
  } else {
    return (
      <div className="max-w-6xl mx-auto bg-white shadow-lg rounded-lg overflow-hidden my-4">
        <div className="flex flex-col lg:flex-row">
          <div className="lg:w-2/5 w-full p-4">
            <img src={item.imageUrl} alt={item.name} className="w-full h-auto object-cover rounded-md" />
          </div>

          <div className="lg:w-3/5 w-full p-6">
            <div className="flex flex-col lg:flex-row justify-between items-baseline mb-4">
              <h2 className="text-3xl font-bold text-gray-800">{item.name}</h2>
              <span className="text-2xl text-green-600 font-bold mt-2 lg:mt-0">${item.price}</span>
            </div>

            <div className="flex items-center space-x-4 mb-6">
              <span className="text-gray-500 text-sm">{item.brand}</span>
              <span className={`px-3 py-1 text-sm font-medium ${item.inStock ? 'bg-green-100 text-green-700' : 'bg-red-100 text-red-700'} rounded-full`}>
                {item.inStock ? "In Stock" : "Out of Stock"}
              </span>
            </div>

            <div className="mb-6">
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div className="p-2 border rounded-md shadow-sm">
                  <p className="font-semibold text-gray-600 capitalize">Category</p>
                  <p className="text-gray-700">{item.category}</p>
                </div>
                <div className="p-2 border rounded-md shadow-sm">
                  <p className="font-semibold text-gray-600 capitalize">Quantity</p>
                  <p className="text-gray-700">{item.quantity}</p>
                </div>
                {Object.entries(item.attributes).map(([key, value]) => (
                  <div key={key} className="p-2 border rounded-md shadow-sm">
                    <p className="font-semibold text-gray-600 capitalize">{key.split("_").join(" ")}</p>
                    <p className="text-gray-700">{value as string || ""}</p>
                  </div>
                ))}
              </div>
            </div>

            <div className="mb-6">
              <h3 className="text-lg font-medium text-gray-700">Address:</h3>
              <p className="text-gray-600">{address || "Loading..."}</p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
