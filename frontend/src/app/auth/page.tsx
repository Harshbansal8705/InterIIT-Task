'use client';
import { useRouter, useSearchParams } from "next/navigation";
import { Suspense, useEffect } from "react";
import { toast } from "react-toastify";

export default function Login() {
  return (
    <Suspense>
      <Auth />
    </Suspense>
  )
}

function Auth() {
  const params = useSearchParams();
  const router = useRouter();
  const token = params.get("token");
  const error = params.get("error");
  console.log(params);
  useEffect(() => {
    if (token) {
      if (typeof window != 'undefined') {
        localStorage.setItem("token", token.toString());
        router.push("/");
      }
    } else if (error) {
      toast.error(error);
    }
  }, [])
  return (
    <div className="flex flex-col items-center justify-center h-screen bg-gradient-to-br from-blue-200 to-indigo-300">
      <div className="bg-white p-8 rounded-lg shadow-lg max-w-sm w-full text-center">
        <h1 className="text-3xl font-extrabold mb-4 text-gray-800">Welcome to Inventory</h1>
        <p className="text-gray-500 mb-8">Manage your inventory with ease.</p>
        <button
          className="flex items-center justify-center w-full py-3 px-4 bg-red-500 text-white rounded-md shadow hover:bg-red-600 transition-colors duration-300 ease-in-out"
          onClick={() => window.location.href = `${process.env.NEXT_PUBLIC_BACKEND_URL}/auth/google`}
        >
          <img
            src="https://developers.google.com/identity/images/g-logo.png"
            alt="Google logo"
            className="w-8 h-8 mr-2 rounded-full"
          />
          Login with Google
        </button>
      </div>
    </div>
  );
}