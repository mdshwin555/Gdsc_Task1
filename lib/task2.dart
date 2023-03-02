import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Login.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  final items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();

  void addItem() {
    items.insert(0, 'item ${items.length + 1}');

    key.currentState!.insertItem(
      0,
      duration: Duration(seconds: 1),
    );
  }

  void removeItem(int index) {
    key.currentState?.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(12),
          color: Colors.red,
          child: ListTile(
            title: Text(
              "Deleted",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      duration: Duration(milliseconds: 500),
    );
    items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Map"),
        centerTitle: true,
        toolbarHeight: 13.h,
        backgroundColor: Color.fromARGB(255, 29, 29, 35),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Login());
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 7, 15, 119),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            IconButton(
              onPressed: addItem,
              icon: Icon(Icons.add),
            ),
            Expanded(
              child: AnimatedList(
                key: key,
                initialItemCount: 0,
                padding: EdgeInsets.all(12),
                itemBuilder: (context, index, animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    key: UniqueKey(),
                    child: Card(
                      margin: EdgeInsets.all(12),
                      color: Color.fromARGB(255, 241, 170, 15),
                      child: ListTile(
                        title: Text(
                          items[index],
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            removeItem(index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
