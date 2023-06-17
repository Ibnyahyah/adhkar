import 'package:adhkar/adhkar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Adhkar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _getAllAdhkarId() {
    final get_adhkar = AdhkarFactory.getAllAdhkarId();
    print(get_adhkar);
  }

  void _getASingleAdhkar() {
    Adhkar adhkar = AdhkarFactory.getAdhkar(adhkarId: "c1");
    print(adhkar.title);
  }

  void _getAllAdhkar() {
    List<Adhkar> adhkars = AdhkarFactory.getAdhkar();
    print(adhkars.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Example Adhkar"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The data was extracted from hisnu-l-muslim, This package is brought to you by Ridwanullahi and a contributor, may Allah grant us good life and Al-jannah.',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getAllAdhkar,
        tooltip: 'Adhkar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
