import { GodownItemProps, ifetch, ItemProps } from "@/utils";
import { useEffect, useState } from "react";
import { toast } from "react-toastify";

export default function GodownItem({ id,
  label,
  list,
  type,
  status,
  setItem,
  itemLoading,
  setItemLoading,
}: {
  id: string,
  label: string,
  list: GodownItemProps[],
  type: "godown" | "item",
  status: "loaded" | "loading" | "not loaded",
  setItem: (item: ItemProps) => void,
  itemLoading: boolean,
  setItemLoading: (loading: boolean) => void,
}) {
  const [isOpen, setIsOpen] = useState(false);
  const [subgodowns, setSubgodowns] = useState<GodownItemProps[]>(list);
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    setSubgodowns(list);
  }, [list]);

  return (
    <div className="p-1 pr-0 select-none">
      <div
        className="label flex items-center gap-2 cursor-pointer p-2 rounded-md border hover:border-blue-400 transition-all duration-200"
        onClick={() => {
          try {
            if (type === "item") {
              setItemLoading(true);
              ifetch(`${process.env.NEXT_PUBLIC_BACKEND_URL}/api/item/${id}`).then((data) => {
                if (data.success) setItem({ ...data.data });
                else toast.error(data.error);
                setItemLoading(false);
              });
            }
          } catch (error) {
            console.error("Error fetching godowns:", error);
            toast.error("Failed to fetch godowns");
            setItemLoading(false);
          }
          setIsOpen(!isOpen);
          console.log(status);
          console.log(subgodowns);
          if (!isOpen && status == "not loaded" && type == "godown") {
            console.log("fetching data");
            setLoading(true);
            try {
              ifetch(`${process.env.NEXT_PUBLIC_BACKEND_URL}/api/subgodowns/${id}`).then((data) => {
                if (!data.success) {
                  toast.error(data.error);
                  setLoading(false);
                  return;
                }
                const newData = [...data.data.subgodowns.map((godown: { id: string, name: string }) => ({
                  id: godown.id,
                  label: godown.name,
                  type: "godown",
                  list: [],
                  status: "not loaded"
                })), ...data.data.items.map((item: ItemProps) => ({
                  id: item.id,
                  label: item.name,
                  type: "item",
                  list: [],
                  status: "not loaded"
                }))];
                console.log("Here's new data:", newData);
                setSubgodowns(newData);
                setLoading(false);
              });
            } catch (error) {
              console.error("Error fetching godowns:", error);
              toast.error("Failed to fetch");
              setLoading(false);
            }
          }
        }}
      >
        <div className={`transform transition-transform duration-500 ${isOpen ? "rotate-90" : ""}`}>
          {type === "godown" ? <>&gt;</> : "-"}
        </div>
        <div className="font-medium text-gray-700">{label}</div>
      </div>
      <div className={`ml-4 overflow-auto transition-all duration-500 ${isOpen ? "max-h-[10000px] opacity-100" : "max-h-0 opacity-0"}`}>
        {loading ? <div className="text-gray-500">Loading...</div> : subgodowns.map((item, index) => (
          <GodownItem key={index} {...item} setItem={setItem} itemLoading={itemLoading} setItemLoading={setItemLoading} />
        ))}
      </div>
    </div>
  );
}