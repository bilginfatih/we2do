import 'package:flutter/material.dart';

import '../screens/home_page.dart';

class Polls extends StatefulWidget {
  const Polls({Key? key}) : super(key: key);

  @override
  State<Polls> createState() => _PollsState();
}

class _PollsState extends State<Polls> {
  bool mon = false;
  bool tues = false;
  bool wed = false;
  bool bir = false;
  bool iki = false;
  bool uc = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"), centerTitle: true, backgroundColor: Colors.black38),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("İlgi Alanlarınız İşaretleyiniz.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(height: 30),
          CheckboxListTile(
            value: mon,
            onChanged: (val) {
              setState(() {
                mon = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Yemek"),
          ),
          CheckboxListTile(
            value: tues,
            onChanged: (val) {
              setState(() {
                tues = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Tiyatro"),
          ),
          CheckboxListTile(
            value: wed,
            onChanged: (val) {
              setState(() {
                wed = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Sinema"),
          ),
          CheckboxListTile(
            value: bir,
            onChanged: (val) {
              setState(() {
                bir = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Spor"),
          ),
          CheckboxListTile(
            value: iki,
            onChanged: (val) {
              setState(() {
                iki = val!;
              });
            },
            activeColor: Colors.green,
            title: Text("Sanat"),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text("Bitir"),
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black38)),
          )
        ],
      ),
    );
  }
}
