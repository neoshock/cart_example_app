

import 'package:cart_example_app/models/deparment_model.dart';
import 'package:cart_example_app/repositories/deparment_repository.dart';

class DepartmentService implements DepartmentRepository {
  final List<Department> initData = [
    Department(
        id: "1",
        name: "Bakery",
        image: "assets/imgs/deparments/BAKERY.png",
        description: ""),
    Department(
        id: "2",
        name: "Dairy",
        image: "assets/imgs/deparments/DAIRY.png",
        description: ""),
    Department(
        id: "3",
        name: "Deli",
        image: "assets/imgs/deparments/DELY.png",
        description: ""),
    Department(
        id: "4",
        name: "Floral",
        image: "assets/imgs/deparments/FLORAL.png",
        description: ""),
    Department(
        id: "5",
        name: "Frozen",
        image: "assets/imgs/deparments/FROZEN.png",
        description: ""),
    Department(
        id: "6",
        name: "Grocery",
        image: "assets/imgs/deparments/GROCERY.png",
        description: ""),
    Department(
        id: "7",
        name: "Meat",
        image: "assets/imgs/deparments/MEAT.png",
        description: ""),
    Department(
        id: "8",
        name: "Produce",
        image: "assets/imgs/deparments/PRODUCE.png",
        description: ""),
    Department(
        id: "9",
        name: "Seafood",
        image: "assets/imgs/deparments/SEAFOOD.png",
        description: ""),
  ];

  @override
  Future<List<Department>> getDepartments() {
    return Future.delayed(Duration(seconds: 1), () => initData);
  }
}
