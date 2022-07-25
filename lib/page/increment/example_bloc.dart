import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sumar_app/bloc/counter/counter_cubit.dart';

class ExampleBloc extends StatefulWidget {
  const ExampleBloc({Key? key}) : super(key: key);

  @override
  State<ExampleBloc> createState() => _ExampleBlocState();
}

class _ExampleBlocState extends State<ExampleBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
          child: Text("$count"),
        ),
      ),
      floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 8,
            ),
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: const Icon(Icons.remove),
            )
          ]),
    );
  }
}
