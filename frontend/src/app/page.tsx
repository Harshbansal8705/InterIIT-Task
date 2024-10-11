'use client';
import GodownItem from "@/components/GodownItem";
import ItemDetails from "@/components/ItemDetails";
import { GodownItemProps, ifetch, ItemProps } from "@/utils";
import { useRouter } from "next/navigation";
import { useEffect, useState } from "react";
import { toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

export default function Home() {
  const [godowns, setGodowns] = useState<GodownItemProps[]>([]);
  const [item, setItem] = useState<ItemProps>();
  const [isMenuOpen, setIsMenuOpen] = useState(false); // To control the mobile menu
  const router = useRouter();
  const [userEmail, setUserEmail] = useState(null);

  useEffect(() => {
    if (!userEmail) return;
    try {
      ifetch(`${process.env.NEXT_PUBLIC_BACKEND_URL}/api/godowns`)
      .then((data) => {
        if (data.success)
          setGodowns(data.data.map((godown: any) => ({
              id: godown.id,
              label: godown.name,
              type: "godown",
              list: [],
              status: "not loaded"
            })))
            else toast.error(data.error);
        });
    } catch (error) {
      console.error("Error fetching godowns:", error);
      toast.error("Failed to fetch godowns");
    }
  }, [userEmail])
  
  useEffect(() => {
    try {
      ifetch(`${process.env.NEXT_PUBLIC_BACKEND_URL}/api/user`)
      .then((data) => {
        console.log("Here's the data", data);
          if (data.success) setUserEmail(data.data.email);
          else toast.error(data.error);
        });
      } catch (error) {
      console.error("Error fetching user:", error);
      toast.error("Failed to fetch user");
    }
  }, []);

  let token = null;
  if (typeof window != undefined) {
    token = localStorage.getItem("token");
    if (!token) {
      return router.push("/auth");
    }
  }
  
  if (!userEmail) {
    return "Loading...";
  }

  return (
    <div className="flex flex-col md:flex-row w-screen h-screen overflow-hidden bg-gray-50">
      {/* Hamburger Icon for Mobile */}
      <button
        className="block md:hidden p-4 text-gray-700 focus:outline-none"
        onClick={() => setIsMenuOpen(!isMenuOpen)}
      >
        <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M4 6h16M4 12h16m-7 6h7"></path>
        </svg>
      </button>

      {/* Sidebar - Only visible when the menu is open on mobile */}
      <nav
        className={`fixed top-0 left-0 z-40 w-64 h-full bg-gradient-to-b from-gray-100 to-gray-200 shadow-md p-3 transition-transform transform ${isMenuOpen ? "translate-x-0" : "-translate-x-full"
          } md:translate-x-0 md:relative md:w-1/4 md:border-r-2 border-gray-300 overflow-y-auto`}
      >
        <button
          className="block md:hidden p-2 mb-4 text-gray-700 focus:outline-none"
          onClick={() => setIsMenuOpen(false)}
        >
          <svg
            className="w-6 h-6"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M6 18L18 6M6 6l12 12"></path>
          </svg>
        </button>

        {/* Sidebar Header */}
        <div className="mb-6">
          <h2 className="text-lg font-bold text-gray-700 mb-2">Inventory</h2>
          <hr className="border-t border-gray-300" />
        </div>

        {/* Godown and Item List */}
        <GodownItem
          id="root"
          label="Godowns"
          type="godown"
          list={godowns}
          status="loaded"
          setItem={setItem}
        />
      </nav>

      {/* Main content */}
      <main className="flex-1 p-4 bg-white overflow-auto">
        <ItemDetails item={item} />
      </main>

      {/* Background overlay when the menu is open on mobile */}
      {isMenuOpen && (
        <div
          className="fixed inset-0 bg-black opacity-50 z-30 md:hidden"
          onClick={() => setIsMenuOpen(false)}
        ></div>
      )}
    </div>
  );
}
