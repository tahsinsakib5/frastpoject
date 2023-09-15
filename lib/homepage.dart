// ignore_for_file: must_be_immutable, unused_import

import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController controller =TextEditingController();
  Box?contybox;
  @override
  void initState() {
 contybox = Hive.box("countryname");
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
            ElevatedButton(onPressed: (){
             final userdata=controller.text;
             contybox!.add(userdata);
            }, child: Text("save")),
           

           Expanded(child: ValueListenableBuilder(valueListenable: Hive.box("countryname").listenable(), builder: (context, box, Widget) {
             return ListView.builder(itemCount: contybox!.keys.toString().length,itemBuilder: (context, index) {
               return Card(child: ListTile(title: Text(contybox!.getAt(index).toString()),),);
             },);
           },))

          ],
        ),
      ),
    );
  }
}