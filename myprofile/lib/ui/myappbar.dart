import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  myphot() {
    debugPrint('Photo as been added');
  }

  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              debugPrint("$value");
            },
            items: [
              BottomNavigationBarItem(
                  label: "AC Unit", icon: Icon(Icons.ac_unit)),
              BottomNavigationBarItem(
                  label: "Call", icon: Icon(Icons.call_made_rounded)),
              BottomNavigationBarItem(
                  label: "Phone", icon: Icon(Icons.phone_bluetooth_speaker))
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.amber,
          child: Icon(Icons.chat),
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            color: Colors.amberAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 10.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(140),
                      border: Border.all(width: 8, color: Colors.white)),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("images/IMG_2534.jpeg"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                mystate(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Divider(
                    color: Colors.amber,
                    height: 10,
                    thickness: 5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    //debugPrint('I m Datta');
                    const Snackbar = SnackBar(
                        backgroundColor: Colors.amber,
                        content: Text("I m Datta"));

                    // Scaffold.of(context).show;
                    ScaffoldMessenger.of(context).showSnackBar(Snackbar);
                  },
                  child: Container(
                    width: 200,
                    height: 30,
                    //color: Colors.amber,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            color: Colors.amber,
                            spreadRadius: 1,
                            blurRadius: 1.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(width: 2, color: Colors.black)),
                    child: Text('Know Us'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  child: Card(
                    color: Colors.blueAccent,
                    child: ListTile(
                      tileColor: Colors.yellowAccent,
                      onLongPress: () {},
                      title: Text(
                        "91+ 9324038616",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(Icons.phone),
                      trailing: FlutterLogo(),
                      subtitle: Text("official phone no"),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Card(
                    color: Colors.blueAccent,
                    child: ListTile(
                      tileColor: Colors.yellowAccent,
                      onLongPress: () {},
                      title: Text(
                        "datta@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Icon(Icons.email),
                      trailing: FlutterLogo(),
                      subtitle: Text("official email"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('DP'),
          ),
          toolbarHeight: 60,
          backgroundColor: Colors.amber,
          title: Text("Datta Profile App"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: myphot,
              icon: Icon(Icons.add_a_photo),
            ),
          ],
        ));
  }
}

// class MyWidget extends StatelessWidget {
//   List s = ['Human Being','I exits','IM me'];
//   MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text(s[0]);
//   }
// }

class mystate extends StatefulWidget {
  const mystate({super.key});

  @override
  State<mystate> createState() => _mystateState();
}

class _mystateState extends State<mystate> {
  List me = ['Human Being', 'I exits', 'IM me'];

  var y = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            //debugPrint("$y");
            setState(() {
              y++;
            });

            //debugPrint("$y");
          },
          onDoubleTap: () {
           setState(() {
              y--;
            });

          },
          child: Text(
            'Datta',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Text(me[y % me.length ]),
      ],
    );
  }
}
