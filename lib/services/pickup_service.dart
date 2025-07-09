

import 'package:cart_example_app/features/checkout/models/date_reserve_model.dart';
import 'package:cart_example_app/features/checkout/models/pickup_model.dart';
import 'package:cart_example_app/repositories/pickup_repository.dart';

class PickupService implements PickupRepository {
  List<Pickup> pickups = [
    Pickup(id: "1", date: DateTime(2023, 2, 26), dateReserves: [
      DateReserve(
          id: "1",
          startDate: DateTime(2023, 2, 26, 10, 0, 0),
          endDate: DateTime(2023, 2, 26, 11, 0, 0),
          reserved: false),
      DateReserve(
          id: "2",
          startDate: DateTime(2023, 2, 26, 11, 0, 0),
          endDate: DateTime(2023, 2, 26, 12, 0, 0),
          reserved: true),
      DateReserve(
          id: "3",
          startDate: DateTime(2023, 2, 26, 12, 0, 0),
          endDate: DateTime(2023, 2, 26, 13, 0, 0),
          reserved: false),
      DateReserve(
          id: "4",
          startDate: DateTime(2023, 2, 26, 13, 0, 0),
          endDate: DateTime(2023, 2, 26, 14, 0, 0),
          reserved: false),
    ]),
    Pickup(id: "2", date: DateTime(2023, 2, 27), dateReserves: [
      DateReserve(
          id: "5",
          startDate: DateTime(2023, 2, 27, 10, 0, 0),
          endDate: DateTime(2023, 2, 27, 11, 0, 0),
          reserved: true),
      DateReserve(
          id: "6",
          startDate: DateTime(2023, 2, 27, 11, 0, 0),
          endDate: DateTime(2023, 2, 27, 12, 0, 0),
          reserved: false),
      DateReserve(
          id: "7",
          startDate: DateTime(2023, 2, 27, 12, 0, 0),
          endDate: DateTime(2023, 2, 27, 13, 0, 0),
          reserved: false),
      DateReserve(
          id: "8",
          startDate: DateTime(2023, 2, 27, 13, 0, 0),
          endDate: DateTime(2023, 2, 27, 14, 0, 0),
          reserved: true),
      DateReserve(
          id: "8",
          startDate: DateTime(2023, 2, 27, 14, 0, 0),
          endDate: DateTime(2023, 2, 27, 15, 0, 0),
          reserved: true),
      DateReserve(
          id: "8",
          startDate: DateTime(2023, 2, 27, 15, 0, 0),
          endDate: DateTime(2023, 2, 27, 16, 0, 0),
          reserved: false),
    ]),
    Pickup(id: "3", date: DateTime(2023, 2, 28), dateReserves: [
      DateReserve(
          id: "9",
          startDate: DateTime(2023, 2, 28, 10, 0, 0),
          endDate: DateTime(2023, 2, 28, 11, 0, 0),
          reserved: false),
      DateReserve(
          id: "10",
          startDate: DateTime(2023, 2, 28, 11, 0, 0),
          endDate: DateTime(2023, 2, 28, 12, 0, 0),
          reserved: false),
      DateReserve(
          id: "11",
          startDate: DateTime(2023, 2, 28, 12, 0, 0),
          endDate: DateTime(2023, 2, 28, 13, 0, 0),
          reserved: false),
      DateReserve(
          id: "12",
          startDate: DateTime(2023, 2, 28, 13, 0, 0),
          endDate: DateTime(2023, 2, 28, 14, 0, 0),
          reserved: true),
    ]),
    Pickup(id: "4", date: DateTime(2023, 3, 1), dateReserves: [
      DateReserve(
          id: "13",
          startDate: DateTime(2023, 3, 1, 10, 0, 0),
          endDate: DateTime(2023, 3, 1, 11, 0, 0),
          reserved: false),
      DateReserve(
          id: "14",
          startDate: DateTime(2023, 3, 1, 11, 0, 0),
          endDate: DateTime(2023, 3, 1, 12, 0, 0),
          reserved: false),
      DateReserve(
          id: "15",
          startDate: DateTime(2023, 3, 1, 12, 0, 0),
          endDate: DateTime(2023, 3, 1, 13, 0, 0),
          reserved: false),
      DateReserve(
          id: "16",
          startDate: DateTime(2023, 3, 1, 13, 0, 0),
          endDate: DateTime(2023, 3, 1, 14, 0, 0),
          reserved: true),
    ]),
  ];

  @override
  Future<void> addPickup(Pickup pickup) async {
    // TODO: implement addPickup
    throw UnimplementedError();
  }

  @override
  Future<void> deletePickup(Pickup pickup) async {
    // TODO: implement deletePickup
    throw UnimplementedError();
  }

  @override
  Future<List<Pickup>> getPickups() async {
    return Future.value(pickups);
  }

  @override
  Future<List<Pickup>> getPickupsByDate(DateTime date) async {
    // TODO: implement getPickupsByDate
    throw UnimplementedError();
  }

  @override
  Future<void> updatePickup(Pickup pickup) async {
    //update a DateReserve of a Pickup
    for (var element in pickups) {
      if (element.id == pickup.id) {
        for (var dateReserve in element.dateReserves) {
          if (dateReserve.id == pickup.dateReserves.first.id) {
            dateReserve.reserved = pickup.dateReserves.first.reserved;
          }
        }
      }
    }
  }

  @override
  Future<bool> verifyPickup(Pickup pickup) async {
    return Future.value(true);
  }
}
