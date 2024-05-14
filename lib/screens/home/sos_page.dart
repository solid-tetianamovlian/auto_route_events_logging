import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SosPage extends StatelessWidget {
  const SosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOS'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('SOS'),
          ],
        ),
      ),
    );
  }
}
