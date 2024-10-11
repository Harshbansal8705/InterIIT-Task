import { GodownItemProps, ifetch } from "@/utils";
import { useEffect, useState } from "react";
import { toast } from "react-toastify";

export default function GodownItem({ id,
  label,
  list,
  type,
  status,
  setItem,
}: {
  id: string,
  label: string,
  list: GodownItemProps[],
  type: "godown" | "item",
  status: "loaded" | "loading" | "not loaded",
  setItem: any,
}) {
  const [isOpen, setIsOpen] = useState(false);
  const [subgodowns, setSubgodowns] = useState<GodownItemProps[]>(list);

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
              ifetch(`${process.env.NEXT_PUBLIC_BACKEND_URL}/api/item/${id}`).then((data) => {
                if (data.success) setItem({ ...data.data });
                else toast.error(data.error);
              });
            }
          } catch (error) {
            console.error("Error fetching godowns:", error);
            toast.error("Failed to fetch godowns");
          }
          setIsOpen(!isOpen);
          console.log(status);
          console.log(subgodowns);
          if (!isOpen && status == "not loaded" && type == "godown") {
            console.log("fetching data");
            try {
              ifetch(`${process.env.NEXT_PUBLIC_BACKEND_URL}/api/subgodowns/${id}`).then((data) => {
                if (!data.success) {
                  toast.error(data.error);
                  return;
                }
                const newData = [...data.data.subgodowns.map((godown: any) => ({
                  id: godown.id,
                  label: godown.name,
                  type: "godown",
                  list: [],
                  status: "not loaded"
                })), ...data.data.items.map((item: any) => ({
                  id: item.id,
                  label: item.name,
                  type: "item",
                  list: [],
                  status: "not loaded"
                }))];
                console.log("Here's new data:", newData);
                setSubgodowns(newData);
              });
            } catch (error) {
              console.error("Error fetching godowns:", error);
              toast.error("Failed to fetch");
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
        {subgodowns.map((item, index) => (
          <GodownItem key={index} {...item} setItem={setItem} />
        ))}
      </div>
    </div>
  );
}