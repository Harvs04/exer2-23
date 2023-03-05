import "Commuter.dart";
import "../Vehicle/Vehicle.dart";
import "../Vehicle/Taxi.dart";
import "../Vehicle/Bus.dart";

class Regular extends Commuter {
  static int count = 0; // count of all regular commuter
  late String destination; // destination of each regular commuter instance.

  Map<String, String> _log =
      {}; // will contain the travel log of commuter. (vehicleID: destination)
  String _ID = "REG"; // for commuter ID
  num _budget; // Money of the commuter for travelling.

  // regular commuter constructor
  Regular(this._budget) {
    _ID += count.toString();
    count++;
  }

  // lets the commuter ride the vehicle.
  @override
  void ride(String destination, Vehicle vehicle) {
    num fare;

    // checking if the vehicle is at full capacity.
    if (vehicle.isFull() == false) {
      // not full
      // checking the type of vehicle
      if (vehicle is Taxi) {
        // taxi
        if (destination == "Taft") {
          // Taft:70
          fare = 70;
          // check if the budget is sufficient
          if ((_budget) >= fare) {
            // sufficient
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle
                .addPassengerCount(); // increments the number of passenger of the vehicle.
            vehicle.addPassenger(
                this); // adds the passenger to the list of passengers of that vehicle.
            _budget -= fare; // deduct the fare to commuter's money.
            _log["${vehicle.vehicleID()}"] =
                destination; // insert ID of vehicle and its destination to a map.
          } else {
            // not enough money
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Magallanes") {
          // Magallanes:80
          fare = 80;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Ayala") {
          // Ayala:90
          fare = 90;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Buendia") {
          // Buendia:100
          fare = 100;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Guadalupe") {
          // Guadalupe:110
          fare = 110;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        }
      } else if (vehicle is Bus) {
        // bus is the vehicle.
        if (destination == "Taft") {
          fare = 20;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Magallanes") {
          fare = 30;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Ayala") {
          fare = 40;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Buendia") {
          fare = 50;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Guadalupe") {
          fare = 60;
          if ((_budget) >= fare) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P$fare");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare;
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        }
      }
    } else {
      // the vehicle is at full capacity.
      print("Sorry, the vehicle ${vehicle.vehicleID()} is already full");
    }
  }

  // gets the commuter's ID
  @override
  get ID => this._ID;

  // gets the commuter's balance.
  @override
  get balance => this._budget;

  // gets the commuter's travel log
  @override
  get LOG {
    int i = 0;
    String log = "[";
    _log.forEach((key, value) {
      if (i == _log.length - 1) {
        log += "$key - $value]";
      } else {
        log += "$key - $value, ";
      }
      i++;
    });
    return log;
  }
}
