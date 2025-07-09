import 'package:cart_example_app/features/explore/widgets/deparment_item.dart';
import 'package:cart_example_app/features/explore/widgets/department_item_skeleton.dart';
import 'package:cart_example_app/models/deparment_model.dart';
import 'package:cart_example_app/providers/deparment_provider.dart'
    show DepartmentProvider;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  void initState() {
    super.initState();
    final departmentProvider = Provider.of<DepartmentProvider>(
      context,
      listen: false,
    );
    departmentProvider.loadDepartments();
  }

  @override
  Widget build(BuildContext context) {
    List<Department> deparmentsFromProviders = Provider.of<DepartmentProvider>(
      context,
    ).departments;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Find Products',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'OUR WEEKLY FLYER',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Departments',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: GridView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: deparmentsFromProviders.isNotEmpty
                      ? deparmentsFromProviders.length
                      : 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) =>
                      deparmentsFromProviders.isNotEmpty
                      ? DeparmentItem(
                          department: deparmentsFromProviders[index],
                        )
                      : DepartmentItemSkeleton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
