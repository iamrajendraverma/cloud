import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    var language_support  =  AppLocalizations.of(context);

    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment : MainAxisAlignment.center,

        children: [
        Text(language_support!.you_have_click_button_this_many_time,style: textTheme.displayMedium,),
        Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.displaySmall,);
          },
        ),
      )],)

      ,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Colors.red,

            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add,color: Colors.white,),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            shape: CircleBorder(),

            backgroundColor: Colors.red,
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove,color: Colors.white,),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}