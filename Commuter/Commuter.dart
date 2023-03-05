import "../Vehicle/Vehicle.dart";

abstract class Commuter {
  void ride(
      String destination,
      Vehicle
          vehicle); // lets the commute ride a vehicle if the conditions are met.
  get ID; // getter for ID of commuter.
  get balance; // getter for the remaining balance of commuter.
  get LOG; // getter for the travel log of commuter.
}
