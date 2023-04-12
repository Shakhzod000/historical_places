import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/regions/regions_controller.dart';

class RegionView extends GetView<RegionsController> {
  const RegionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Regions'),
      ),
    );
  }
}
