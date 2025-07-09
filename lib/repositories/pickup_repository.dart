import '../features/checkout/models/pickup_model.dart';

abstract class PickupRepository {
  Future<List<Pickup>> getPickups();
  Future<List<Pickup>> getPickupsByDate(DateTime date);

  //update
  Future<void> updatePickup(Pickup pickup);

  //create
  Future<void> addPickup(Pickup pickup);

  //delete
  Future<void> deletePickup(Pickup pickup);

  //verify
  Future<bool> verifyPickup(Pickup pickup);
}
