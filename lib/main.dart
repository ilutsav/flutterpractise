import 'package:flutter/material.dart';
import 'package:practiseapp/learn_flutter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('pressed .');
          },
          child: const Icon(Icons.add),
        ),
        body: Builder(builder: (context) {
          return Column(
            children: [
              const msgBox(),
              const Divider(),
              const msgBox(),
              const Chip(
                label: Text('Messages'),
                avatar: Icon(Icons.add),
              ),
              Center(
                child: ElevatedButton(
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Text('learn flutter'),
                ),
              ),
            ],
          );
        }),
        bottomNavigationBar: NavigationBar(destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.search), label: '')
        ]),
      ),
    );
  }
}

class msgBox extends StatelessWidget {
  const msgBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Utsav',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      subtitle: const Text('how are you'),
      leading: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          color: Colors.black12,
        ),
      ),
      trailing: const Icon(Icons.forward),
    );
  }
}
