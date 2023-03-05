import "../Commuter/Commuter.dart";

abstract class Vehicle {
  void printFareMatrix(); // prints fare in each destination
  void printPassengers(); // prints list of passengers.
  bool isFull(); // checks if the vehicle is full.
  String vehicleID(); // returns ID of the vehicle.
  void addPassenger(Commuter commuter); // inserts the passenger to a list.
  void addPassengerCount(); // increment number of passenger.
}
