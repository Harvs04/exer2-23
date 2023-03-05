/* 
  TODO:
    Import the necessary files
*/

import "Vehicle/Bus.dart";
import "Vehicle/Taxi.dart";
import "Commuter/Regular.dart";
import "Commuter/Discounted.dart";

main() {
  /* 
  TODO:
    Instantiate 2 buses and 2 taxis with the following initial values:
      - bus capacity: 3 and 5
      - taxi capacity: 1 and 2
  */
  Bus bus0 = new Bus(3);
  Bus bus1 = new Bus(5);
  Taxi taxi0 = new Taxi(1);
  Taxi taxi1 = new Taxi(2);

  /* 
  TODO:
    Instantiate 5 regular commuters and 3 senior/pwd commuters with the following initial values:
      - regular wallets: 500, 400, 100, 20, 150
      - senior/pwd wallets: 1000, 200, 80
  */
  Regular regular0 = new Regular(500);
  Regular regular1 = new Regular(400);
  Regular regular2 = new Regular(100);
  Regular regular3 = new Regular(20);
  Regular regular4 = new Regular(150);
  Discounted seniorpwd0 = new Discounted(1000);
  Discounted seniorpwd1 = new Discounted(200);
  Discounted seniorpwd2 = new Discounted(80);

  // print the fare matrix
  bus0.printFareMatrix();
  taxi0.printFareMatrix();

  // ======================

  print("\n|| RIDING BUS 0 ||");
  regular0.ride("Taft", bus0);
  regular1.ride("Magallanes", bus0);
  regular2.ride("Guadalupe", bus0);
  seniorpwd0.ride("Taft", bus0);

  print("\nBus 0 Passengers:");
  bus0.printPassengers();

  // ======================

  print("\n|| RIDING BUS 1 ||");
  regular3.ride("Buendia", bus1);
  regular4.ride("Ayala", bus1);
  regular0.ride("Ayala", bus1);
  regular1.ride("Ayala", bus1);
  seniorpwd1.ride("Guadalupe", bus1);
  seniorpwd2.ride("Ayala", bus1);

  print("\nBus 1 Passengers: ");
  bus1.printPassengers();

  // ======================

  print("\n|| RIDING TAXI 0 ||");
  seniorpwd0.ride("Guadalupe", taxi0);
  seniorpwd1.ride("Ayala", taxi0);

  print("\nTaxi 0 Passengers");
  taxi0.printPassengers();

  // ======================

  print("\n|| RIDING TAXI 1 ||");
  seniorpwd2.ride("Guadalupe", taxi1);
  seniorpwd0.ride("Ayala", taxi1);
  regular2.ride("Taft", taxi1);

  print("\nTaxi 1 Passengers");
  taxi1.printPassengers();

  // ======================

  // TODO: fill in the needed values
  print('''
    [ LOG ]
    Number of Vehicles: ${Bus.busCount + Taxi.taxiCount}
    Number of Buses: ${Bus.busCount}
    Number of Taxis: ${Taxi.taxiCount}
    
    Number of Passengers: ${Regular.count + Discounted.count}
    Number of Regular Passengers: ${Regular.count}
    Number of Senior/PWD Passengers: ${Discounted.count}
''');
}
