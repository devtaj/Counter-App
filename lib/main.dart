import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "dev",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int brazil = 0;
  int france = 0;
  String result = '';
  String win = "Winner"; // declaring string for win or lose
  //if condition end

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Brazil",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "$brazil",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                brazil++;
                              });
                            },
                            child: Icon(Icons.add)),
                        SizedBox(
                          width: 3.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (brazil == 0) return;
                            setState(() {
                              brazil--;
                            });
                          },
                          child: Icon(Icons.remove),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      "France",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "$france",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                france++;
                              });
                            },
                            child: Icon(Icons.add)),
                        SizedBox(
                          width: 3.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (france == 0) return;
                            setState(() {
                              france--;
                            });
                          },
                          child: Icon(Icons.remove),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            //these is for print
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$result"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  minWidth: 250,
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      if (brazil > france) {
                        result = 'Brazil Is Winner Now';
                      } else if (brazil == france) {
                        result = 'Draw now';
                      } else {
                        result = 'France Is Winner Now!';
                      }
                    });
                  },
                  child: Text(
                    "Result",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  minWidth: 250,
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      france = 0;
                      brazil = 0;
                      result = 'Game Not Started Yet!';
                    });
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
