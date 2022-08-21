import 'package:flutter/material.dart';

import 'MATH.dart';

class A extends StatefulWidget {
  const A({Key? key}) : super(key: key);

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  final controller = TextEditingController();
  var temp = 0.0;
  var str= "Please enter a value to convert.";
  var m = Math();
  void CtoF(){
      if(double.tryParse(controller.text)==null){
        setState(() {
        str = "input Error!!";
        });
      }else {
      setState(() {
        temp = double.tryParse(controller.text)!;
        setState(() {
         double sum= m.cal1(temp);
         str = "$temp Celsius = $sum Fahrenheit";
        });
      });
      }
  }
  void CtoK(){
    if(double.tryParse(controller.text)==null){
      setState(() {
        str = "input Error!!";
      });
    }else {
      setState(() {
        temp = double.tryParse(controller.text)!;
        setState(() {
          double sum= m.cal2(temp);
          str = "$temp Celsius = $sum Kelvin";
        });
      });
    }
  }
  void FtoC(){
    if(double.tryParse(controller.text)==null){
      setState(() {
        str = "input Error!!";
      });
    }else {
      setState(() {
        temp = double.tryParse(controller.text)!;
        setState(() {
          double sum= m.cal3(temp);
          str = "$temp Fahrenheit = $sum Celsius";
        });
      });
    }
  }
  void FtoK(){
    if(double.tryParse(controller.text)==null){
      setState(() {
        str = "input Error!!";
      });
    }else {
      setState(() {
        temp = double.tryParse(controller.text)!;
        setState(() {
          double sum= m.cal4(temp);
          str = "$temp Fahrenheit = $sum Kelvin";
        });
      });
    }
  }
  void KtoC(){
    if(double.tryParse(controller.text)==null){
      setState(() {
        str = "input Error!!";
      });
    }else {
      setState(() {
        temp = double.tryParse(controller.text)!;
        setState(() {
          double sum= m.cal5(temp);
          str = "$temp Kelvin = $sum Celsius";
        });
      });
    }
  }
  void KtoF(){
    if(double.tryParse(controller.text)==null){
      setState(() {
        str = "input Error!!";
      });
    }else {
      setState(() {
        temp = double.tryParse(controller.text)!;
        setState(() {
          double sum= m.cal6(temp);
          str = "$temp Kelvin to  = $sum Fahrenheit";
        });
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MIDTERM 630710763")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                 child:Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("TEMPERATURE CONVERTER",style: TextStyle(fontSize: 40)),
                   ],
                 ),
              ),
            ),
            SizedBox(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                     height: 220,
                    width: 700,
      decoration: BoxDecoration(
                      color: Colors.white, //สีพื้นหลังของ Container
                      border: Border.all(
                        width: 5.0,
                        color: Colors.deepPurple.shade200,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: controller,

                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter a temparature value to convert',
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: CtoF, child: Text("Celsius to Fahrenheit")),
                            ),
                            ElevatedButton(onPressed: CtoK, child: Text("Celsius to Kelvein")),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: FtoC, child: Text("Fahrenheit to Celsius")),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: FtoK, child: Text("Fahrenheit to Kelvein")),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: KtoC, child: Text("Kelvin to Celsius")),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ElevatedButton(onPressed: KtoF, child: Text("Kelvein to Fahrenheit")),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(str,style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),
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
