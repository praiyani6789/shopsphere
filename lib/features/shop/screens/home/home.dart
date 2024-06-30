import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  SAppBar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
