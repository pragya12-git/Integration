import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  TextEditingController num1ctrl = TextEditingController();
  TextEditingController num2ctrl = TextEditingController();
  TextEditingController resultctrl = TextEditingController();

  String num1 = "";
  String num2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.all(20),
          child: ListView(
            primary: true,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Num1',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: num1ctrl,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Num1',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: num2ctrl,
                  ),
                )
              ]),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Result',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                controller: resultctrl,
              ),
              SizedBox(
                height: 10,
              ),
              GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, crossAxisSpacing: 16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          onPressed: (() {
                            if (num1ctrl.text.isEmpty) {
                              setState(() {
                                num1 = "7";
                                num1ctrl.text = num1;
                              });
                            } else {
                              setState(() {
                                num2 = "7";
                                num2ctrl.text = num2;
                              });
                            }
                          }),
                          child: Text("7")),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "8";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "8";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("8"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "9";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "9";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("9"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isNotEmpty &&
                                  num2ctrl.text.isNotEmpty) {
                                setState(() {
                                  resultctrl.text = (int.parse(num1ctrl.text) /
                                          int.parse(num2ctrl.text))
                                      .toString();
                                });
                              }
                            }),
                            child: Text("÷"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "4";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "4";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("4"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "5";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "5";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("5"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "6";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "6";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("6"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isNotEmpty &&
                                  num2ctrl.text.isNotEmpty) {
                                setState(() {
                                  resultctrl.text = (int.parse(num1ctrl.text) *
                                          int.parse(num2ctrl.text))
                                      .toString();
                                });
                              }
                              ;
                            }),
                            child: Text("*"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "1";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "1";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("1"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "2";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "2";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("2"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "3";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "3";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("3"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isNotEmpty &&
                                  num2ctrl.text.isNotEmpty) {
                                setState(() {
                                  resultctrl.text = (int.parse(num1ctrl.text) +
                                          int.parse(num2ctrl.text))
                                      .toString();
                                });
                              }
                            }),
                            child: Text("+"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = "0";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = "0";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("0"))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isEmpty) {
                                setState(() {
                                  num1 = ".";
                                  num1ctrl.text = num1;
                                });
                              } else {
                                setState(() {
                                  num2 = ".";
                                  num2ctrl.text = num2;
                                });
                              }
                            }),
                            child: Text("."))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            TextButton(onPressed: (() {}), child: Text("="))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: (() {
                              if (num1ctrl.text.isNotEmpty &&
                                  num2ctrl.text.isNotEmpty) {
                                setState(() {
                                  resultctrl.text = (int.parse(num1ctrl.text) -
                                          int.parse(num2ctrl.text))
                                      .toString();
                                });
                              }
                            }),
                            child: Text("_"))),
                  ]),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blue,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(300, 150),
                  ),
                  onPressed: (() {
                    clear();
                  }),
                  child: Text("clear"))
            ],
          )),
    );
  }

  void clear() {
    setState(() {
      num1ctrl.clear();
      num2ctrl.clear();
      resultctrl.clear();
    });
  }
}
