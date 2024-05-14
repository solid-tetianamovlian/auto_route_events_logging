import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/models/logs/logs_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class LogsPage extends StatelessWidget {
  const LogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logs = GetIt.instance.get<LogsModel>().logs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Logs'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView.builder(
          itemCount: logs.length,
          itemBuilder: (context, index) {
            return Text(logs[index]);
          },
        ),
      ),
    );
  }
}
