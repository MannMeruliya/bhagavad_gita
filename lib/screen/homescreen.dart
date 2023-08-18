import 'package:departure/provider/gita_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<GitaProvider>(context).jsondata();
    return Consumer<GitaProvider>(
      builder: (context, provider, child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "Bhagavad Gita",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.brown.shade400,
        ),
        body: ListView.builder(
          itemCount: provider.bhagavadgitalist.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('detailscreen',
                  arguments: provider.bhagavadgitalist.elementAt(index));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 100,
              decoration: BoxDecoration(
                  // color: const Color(0xfffcf5c7),
                  color: Colors.brown.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${provider.bhagavadgitalist[index]['id']}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${provider.bhagavadgitalist[index]['name']}",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "${provider.bhagavadgitalist[index]['name_translation']}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// Column(
// children: [
// Container(
// child: Column(
// children: [
// Image.asset(
// "assets/image/photo.jpg",
// ),
