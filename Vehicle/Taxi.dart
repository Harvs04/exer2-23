import "../Commuter/Commuter.dart";
import "Vehicle.dart";

class Taxi extends Vehicle {
  int? capacity; // maximum capacity of a taxi instance.
  static int taxiCount = 0; // count of all taxi instances

  Map<String, num> fareMatrix = {
    // fare matrix
    "Taft": 70,
    "Magallanes": 80,
    "Ayala": 90,
    "Buendia": 100,
    "Guadalupe": 110
  };
  List<Commuter> passengers =
      []; // contains the list of passengers / commuters.
  int passengerCount = 0; // keep track of the number of passengers.
  int waitingTime = 5;
  String ID = "TAXI"; // for ID

  // taxi constructor
  Taxi(capacity) {
    this.capacity = capacity;
    ID += taxiCount.toString();
    taxiCount++;
  }

  // prints the fare for each destination.
  @override
  void printFareMatrix() {
    print("***** TAXI FARE MATRIX *****");
    fareMatrix.forEach((key, value) {
      print("\t$key: P$value");
    });
    print("***************************");
  }

  // taxi is full or not
  @override
  bool isFull() {
    if (this.passengerCount != this.capacity)
      return false;
    else
      return true;
  }

  // prints the list of passengers.
  @override
  void printPassengers() {
    print("[$ID] - Max Capacity: $capacity");
    for (int i = 0; i < passengerCount; i++) {
      print(
          "[${this.passengers[i].ID}] Wallet balance: ${this.passengers[i].balance} | Travel Log: ${this.passengers[i].LOG}");
    }
    print("=============\n");
  }

  // retruns the id of the vehicle.
  @override
  String vehicleID() {
    return this.ID;
  }

  // increment method
  @override
  void addPassengerCount() {
    this.passengerCount++;
  }

  // inserts a Commuter class to a list of passengers.
  @override
  void addPassenger(Commuter passenger) {
    this.passengers.insert((this.passengerCount - 1), passenger);
  }
}
