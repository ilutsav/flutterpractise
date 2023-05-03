import 'package:flutter/material.dart';

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
            debugPrint('pressed.');
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            ListTile(
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
            ),
            const Divider(),
            ListTile(
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
            ),
            const Chip(
              label: Text('hello'),
              avatar: Icon(Icons.add),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.search), label: '')
        ]),
      ),
    );
  }
}
