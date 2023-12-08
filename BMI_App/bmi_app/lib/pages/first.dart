import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _First();
}

class _First extends State<FirstPage> {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  var t3 = TextEditingController();
  var result = "";
  var bgcolor = Colors.deepPurple.shade100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('BMI'),
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: t1,
                  decoration: InputDecoration(
                      label: Text('Enter your weight (in kgs) '),
                      prefixIcon: Icon(Icons.line_weight_rounded)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: t2,
                  decoration: InputDecoration(
                      label: Text('Enter your height (in feet)'),
                      prefixIcon: Icon(Icons.height_rounded)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: t3,
                  decoration: InputDecoration(
                      label: Text('Enter your height(inches)'),
                      prefixIcon: Icon(Icons.height_rounded)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    var wt = t1.text.toString();
                    var hf = t2.text.toString();
                    var hi = t3.text.toString();

                    if (wt != "" && hf != "" && hi != "") {
                      var iwt = int.parse(wt);
                      var ihf = int.parse(hf);
                      var ihi = int.parse(hi);

                      var tInch = (ihf * 12) + ihi;
                      var tCm = ihi * 2.54;
                      var tM = tCm / 100;
                      var bmi = iwt / (tM * tM);

                      var msg = "";

                      if (bmi > 25) {
                        msg = "You're over weight";
                        bgcolor = Colors.orange.shade200;
                      } else if (bmi < 18) {
                        msg = "You're under weight";
                        bgcolor = Colors.red.shade200;
                      } else {
                        msg = "You're healthy";
                        bgcolor = Colors.green.shade200;
                      }

                      setState(() {
                        result =
                            "$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please fill all the required fields!";
                      });
                    }
                  },
                  child: Text('Calculate'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  result,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
