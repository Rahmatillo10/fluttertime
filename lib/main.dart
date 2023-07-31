import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NewApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class NewApp extends StatefulWidget {
  const NewApp({super.key});

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  List<String> isimlar = [];
  TextEditingController txtController = TextEditingController();
  List<String> familya = [];
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home page"),
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(8),
                child: TextField(
                  controller: txtController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "ism"),
                )),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(9),
                    child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Information"),
                    )),
              ],
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  isimlar.add(txtController.value.text);
                  familya.add(textEditingController.value.text);
                });
              },
              child: Text("Saqlash"),
              color: Colors.cyan,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: isimlar.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.teal[100],
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: Text(isimlar[index]),
                      );
                    })),
            Expanded(
                child: ListView.builder(
                    itemCount: familya.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        color: Colors.teal[100],
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: Text(familya[index]),
                      );
                    }))
          ],
        ));
  }
}
