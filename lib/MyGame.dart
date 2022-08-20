import 'package:flutter/material.dart';

class Pig extends StatefulWidget {
  const Pig({Key? key}) : super(key: key);

  @override
  State<Pig> createState() => _PigState();
}

class _PigState extends State<Pig> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  var length = 0.0;
  var girth = 0.0;
  var weight;

  void math() {
    setState(() {
      length = double.tryParse(_controller1.text)! / 100.0;
      girth = double.tryParse(_controller2.text)! / 100.0;
      weight = girth * girth * length * 69.3;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Y",style: TextStyle(fontSize: 30,color: Colors.black)),
                        Text("X")
                      ],
                    ),
                    Text("Z"),
                  ],
                ),
              ),
            ],
          );
        },
      );
      print(weight);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(" PIG WEIGHT\nCALCULATOR",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.pink,
                          )),
                    ),
                  ),
                ),
                Container(
                  child: Image.asset("assets/img/pig.png",
                      width: 300, height: 200),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          width: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.black54,
                                height: 100,
                                width: 230,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("LENGTH",
                                          style: TextStyle(fontSize: 17)),
                                      Text("(cm)",
                                          style: TextStyle(fontSize: 15)),
                                      TextField(
                                        controller: _controller1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150,
                          width: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.black54,
                                height: 100,
                                width: 230,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("GIRTH",
                                          style: TextStyle(fontSize: 17)),
                                      Text("(cm)",
                                          style: TextStyle(fontSize: 15)),
                                      TextField(
                                        controller: _controller2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: math,
                      child: Text("CLICK"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.all(20.0),
// child: Text(" PIG WEIGHT\nCALCULATOR",
// style: TextStyle(
// fontSize: 40,
// color: Colors.pink,
// )),
// ),
