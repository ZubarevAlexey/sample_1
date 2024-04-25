import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_1/presentation/components/counter_actions_component.dart';
import 'package:sample_1/presentation/screens/home/home_screen_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeScreenViewModel>();
    return Scaffold(
      appBar: AppBar(

        title: Text("jhbjhb"),
        actions: [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            model.getCurrentValue(),
            style: Theme.of(context).textTheme.titleLarge,
          )),
          CounterActionsComponent(
            onIncrement: model.onIncrement,
            onDecrement: model.onDecrement,
          )
        ],
      ),
    );
  }
}
