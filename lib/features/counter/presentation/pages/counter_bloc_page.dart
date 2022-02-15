import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/fluttertoast/widgets/fluttertoast_widget.dart';
import '../../logic/logic.dart';

class CounterBlocPage extends StatelessWidget {
  static const routeName = '/counterBlocPage';

  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Bloc Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterBloc, CounterState>(
            listener: (context, state) {
              if (state.wasIncremented == true) {
                showFlutterToastWidget(msg: "Increment");
              } else {
                showFlutterToastWidget(msg: "Decrement");
              }
            },
            builder: (context, state) {
              return Text(
                state.counterValue.toString(),
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: "Button_Decrement",
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(Decrement());
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 40,
              ),
              FloatingActionButton(
                heroTag: "Button_Increment",
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(Increment());
                },
                child: const Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
    );
  }
}
