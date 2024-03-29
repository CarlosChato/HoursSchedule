import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hourscheck/pages/calendar.dart';
import 'package:hourscheck/pages/money.dart';
import 'package:hourscheck/tools/add_event.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _selectedItem = 0;
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Bienvenido"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print("hello");
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      extendBody: true,
      body: Padding(
          padding: EdgeInsets.all(16),
          child: PageView(
            controller: pageController,
            children: [Calendar(), Money()],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addEvent(context);
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _selectedItem = index;
                pageController.jumpToPage(_selectedItem);
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromARGB(255, 23, 54, 109),
            selectedItemColor: const Color.fromARGB(255, 57, 214, 253),
            unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
            currentIndex: _selectedItem,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.money_dollar), label: '')
            ],
          ),
        ),
      ),
    );
  }
}
