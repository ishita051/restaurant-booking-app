import React from 'react';
import { Link } from 'react-router-dom';
import { Calendar, Clock, Users } from 'lucide-react';

export default function Home() {
  return (
    <div className="max-w-7xl mx-auto">
      <div className="text-center mb-16">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          Book Your Perfect Dining Experience
        </h1>
        <p className="text-xl text-gray-600 max-w-2xl mx-auto">
          Discover and reserve tables at the finest restaurants in your area.
          Simple, fast, and convenient booking at your fingertips.
        </p>
      </div>

      <div className="grid md:grid-cols-3 gap-8 mb-16">
        <div className="bg-white p-6 rounded-lg shadow-md text-center">
          <Calendar className="w-12 h-12 text-blue-600 mx-auto mb-4" />
          <h3 className="text-xl font-semibold mb-2">Easy Booking</h3>
          <p className="text-gray-600">
            Book your table in seconds with our streamlined reservation system
          </p>
        </div>

        <div className="bg-white p-6 rounded-lg shadow-md text-center">
          <Clock className="w-12 h-12 text-blue-600 mx-auto mb-4" />
          <h3 className="text-xl font-semibold mb-2">Real-time Availability</h3>
          <p className="text-gray-600">
            See instant updates on table availability and booking times
          </p>
        </div>

        <div className="bg-white p-6 rounded-lg shadow-md text-center">
          <Users className="w-12 h-12 text-blue-600 mx-auto mb-4" />
          <h3 className="text-xl font-semibold mb-2">Special Offers</h3>
          <p className="text-gray-600">
            Get exclusive deals and promotions for loyal customers
          </p>
        </div>
      </div>

      <div className="text-center">
        <Link
          to="/restaurants"
          className="bg-blue-600 text-white px-8 py-3 rounded-md text-lg font-semibold hover:bg-blue-700 transition-colors"
        >
          Find a Restaurant
        </Link>
      </div>

      <div className="mt-16">
        <img
          src="https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
          alt="Restaurant interior"
          className="w-full h-96 object-cover rounded-lg shadow-lg"
        />
      </div>
    </div>
  );
}