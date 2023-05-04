import 'package:flutter/material.dart';
import 'package:practiseapp/helper/dummy_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 16,
              itemBuilder: (context, index) => Chatbox(
                //                     image: dummyData[index].image,
                name: dummyData[index].name,
                subtitle: dummyData[index].subtitle,
              ),
            ),
            // Container(
            //   height: 200,

            //   color: Colors.red,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: ''),
        NavigationDestination(icon: Icon(Icons.search), label: '')
      ]),
    );
  }
}

class Chatbox extends StatelessWidget {
  Chatbox(
      {super.key,
      // required this.image,
      required this.name,
      required this.subtitle});
  // String image;
  String name;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(subtitle),
          leading: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(22)),
          ),
          trailing: const Icon(Icons.mic_off),
        ),
        const Divider(),
      ],
    );
  }
}
