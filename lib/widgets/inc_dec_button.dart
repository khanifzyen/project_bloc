import 'package:flutter/material.dart';

class IncDecButton extends StatelessWidget {
  const IncDecButton({
    super.key,
    required this.counterCubit,
  });

  final CounterCubit counterCubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: counterCubit.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: counterCubit.decrement,
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
