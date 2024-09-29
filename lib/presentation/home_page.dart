import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_bloc/controller/bloc_event.dart';
import 'package:state_management_bloc/controller/bloc_state.dart';
import 'package:state_management_bloc/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocHomePage, CounterState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.counter.toString()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          context.read<BlocHomePage>().add(Increment());
                        },
                        child: Text("Arttır")),
                    ElevatedButton(
                        onPressed: () {
                          context.read<BlocHomePage>().add(Decrement());
                        },
                        child: Text("Azalt")),
                    ElevatedButton(
                        onPressed: () {
                          context.read<BlocHomePage>().add(Reset());
                        },
                        child: Text("Sıfırla")),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
