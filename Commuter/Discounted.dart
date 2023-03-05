import "Commuter.dart";
import "../Vehicle/Vehicle.dart";
import "../Vehicle/Taxi.dart";
import "../Vehicle/Bus.dart";

class Discounted extends Commuter {
  static int count = 0; // count of all instances of this class.
  late String destination; // destination of commuter.

  Map<String, String> _log = {}; // will contain the travel log of commuter
  String _ID = "SENPWD"; // for ID
  num _budget;
  final num DISCOUNT = 0.20; // discount to fare (20%)

  // senior/pwd class constructor.
  Discounted(this._budget) {
    _ID += count.toString();
    count++;
  }

  // commuter boards the vehicle.
  @override
  void ride(String destination, Vehicle vehicle) {
    int fare;
    // not full
    if (vehicle.isFull() == false) {
      if (vehicle is Taxi) {
        // vehicle is taxi
        if (destination == "Taft") {
          fare = 70;
          // new fare = fare - discount*fare
          if (fare - (fare * DISCOUNT) <= _budget) {
            // sufficient budget.
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle
                .addPassengerCount(); // increment passenger count of the vehicle.
            vehicle.addPassenger(this); // insert the commuter to list.
            _budget -= (fare -
                (fare * DISCOUNT)); // deduct the fare to commuter's budget
            _log["${vehicle.vehicleID()}"] =
                destination; // add the info to the travel log
          } else {
            // insufficient money.
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Magallanes") {
          // Magallanes: 80 - (80*0.20)
          fare = 80;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Ayala") {
          // Ayala: 90 - (90*0.20)
          fare = 90;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Buendia") {
          // Buendia: 100 - (100 * 0.20)
          fare = 100;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Guadalupe") {
          // Guadalupe: 110 - (110*0.20)
          fare = 110;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        }
      } else if (vehicle is Bus) {
        // vehicle is bus
        if (destination == "Taft") {
          // Taft: 20 - (20 * 0.20)
          fare = 20;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Magallanes") {
          // Magallanes: 30 - (30 * 0.20)
          fare = 30;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Ayala") {
          // Ayala: 40 - (40 * 0.20)
          fare = 40;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Buendia") {
          // Buendia: 50 - (50 * 0.20)
          fare = 50;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        } else if (destination == "Guadalupe") {
          // Guadalupe: 60 - (60 * 0.20)
          fare = 60;
          if (fare - (fare * DISCOUNT) <= _budget) {
            print(
                "Passenger $_ID successfully boarded ${vehicle.vehicleID()} with a fare of P${fare - (fare * DISCOUNT)}");
            vehicle.addPassengerCount();
            vehicle.addPassenger(this);
            _budget -= fare - (fare * DISCOUNT);
            _log["${vehicle.vehicleID()}"] = destination;
          } else {
            print(
                "Passenger $_ID does not have enough fare to ride ${vehicle.vehicleID()}!");
          }
        }
      }
    } else {
      // full capacity
      print("Sorry, the vehicle ${vehicle.vehicleID()} is already full");
    }
  }

  // returns commuter ID
  @override
  get ID => this._ID;

  // returns commuter balance (budget for fares)
  @override
  get balance => this._budget;

  // returns commuter's travel log
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
