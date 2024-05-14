import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BytePage extends StatelessWidget {
  const BytePage({
    super.key,
    @PathParam('id') required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Byte'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Some byte with id: $id'),
          ],
        ),
      ),
    );
  }
}
