import 'package:bloc/bloc.dart';
import 'package:cloud/modules/count/view/CounterPage.dart';
import 'package:cloud/modules/infinite_list/posts/bloc/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'modules/count/bloc/counter_observer.dart';
import 'modules/infinite_list/posts/view/posts_page.dart';
import 'modules/ticker/view/timer_page.dart';

void main() {
  // Bloc.observer = const CounterObserver();
  Bloc.observer  = const SimpleBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var localization = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(localization!.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CounterPage();
                  }));
                },
                child: Text(localization.bloc_counter)),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const TimerPage();
                  }));
                },
                child: Text(localization.bloc_timer)),

        TextButton(
        onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const PostsPage();
      }));
    },
    child: Text(localization.infinite_list)),
          ],
        ),
      ),
    );
  }
}
