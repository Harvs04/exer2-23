// importing necessary files.
import "../Commuter/Commuter.dart";
import "Vehicle.dart";


class Bus extends Vehicle {
  static int busCount = 0; // class attribute
  int? capacity; // will contain the capacity for each instance.

  List<Commuter> passengers = []; // list of commuters for each
  Map<String, num> fareMatrix = {
    // map containing the fare matrix (destination: fare)
    "Taft": 20,
    "Magallanes": 30,
    "Ayala": 40,
    "Buendia": 50,
    "Guadalupe": 60
  };
  int passengerCount = 0; // number of passengers in an instance.
  int waitingTime = 30;
  String ID = "BUS"; // for ID (BUS1, BUS2)

  // Bus constructor
  Bus(capacity) {
    this.capacity = capacity;
    ID += busCount
        .toString(); // concatenating the busCount to ID. (starting at BUS0)
    busCount++;
  }

  // overriding the printFareMatrix method in superclass vehicle.
  @override
  void printFareMatrix() {
    print("***** BUS FARE MATRIX *****");
    fareMatrix.forEach((key, value) {
      print("\t$key: P$value");
    });
    print("***************************");
  }

  // checks if the vehicle is in full capacity or not.
  @override
  bool isFull() {
    if (this.passengerCount != this.capacity) {
      return false;
    } else
      return true;
  }

  // prints all passengers in the vehicle using the list of passengers.
  @override
  void printPassengers() {
    print("[$ID] - Max Capacity: $capacity");
    for (int i = 0; i < passengerCount; i++) {
      print(
          "[${this.passengers[i].ID}] Wallet balance: ${this.passengers[i].balance} | Travel Log: ${this.passengers[i].LOG}");
    }
    print("=============\n");
  }

  // returns the ID of the bus instance.
  @override
  String vehicleID() {
    return this.ID;
  }

  // increment method
  @override
  void addPassengerCount() {
    this.passengerCount++;
  }

  // inserts the passenger to the List of passengers.
  @override
  void addPassenger(Commuter passenger) {
    this.passengers.insert((this.passengerCount - 1), passenger);
  }
}
