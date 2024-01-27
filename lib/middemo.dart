import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _num = "                                ";
  String _add = "+";
  String _delete = "-";
  String _mul = "x";
  String _per = "\u00F7";
  // get int target = _num.length();
  Widget shownum(
    String number,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 650.0,
          height: 70.0,
          margin: EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: const Color.fromARGB(255, 13, 13, 13),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget setnum(String number) {
    String sym = "";
    return InkWell(
      // botton
      onTap: () {
        setState(() {
          TextStyle(
            color: Colors.amber,
          );
          // int to String use .toString()
          if (_num[0] == "0") {
            _num = _num.replaceRange(0, 1, number);
          } else if (_num[1] == " ") {
            _num = _num.replaceRange(1, 2, number);
          } else if (_num[2] == " ") {
            _num = _num.replaceRange(2, 3, number);
          } else if (_num[3] == " ") {
            _num = _num.replaceRange(3, 4, number);
          } else if (_num[4] == " ") {
            _num = _num.replaceRange(4, 5, number);
          } else if (_num[5] == " ") {
            _num = _num.replaceRange(5, 6, number);
          } else if (_num[6] == " ") {
            _num = _num.replaceRange(6, 7, number);
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 70.0,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 101, 163),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: const Color.fromARGB(255, 13, 13, 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottonremove() {
    return InkWell(
      onTap: () {
        setState(() {
          _num = "0";
          shownum(_num);
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 225.0,
          height: 80.0,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 238, 178),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 16),
              width: 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "C",
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottonper() {
    return InkWell(
      onTap: () {
        setState(() {
          _num + _per;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 80.0,
          height: 75.0,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 238, 178),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 16),
              width: 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _per,
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottonmul() {
    return InkWell(
      onTap: () {
        setState(() {
          _num + _mul;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 80.0,
          height: 75.0,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 238, 178),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 16),
              width: 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "x",
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottonneg() {
    return InkWell(
      onTap: () {
        setState(() {
          _num + _delete;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 80.0,
          height: 75.0,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 238, 178),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 16),
              width: 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "-",
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottonadd() {
    return InkWell(
      onTap: () {
        setState(() {
          _num + _add;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 80.0,
          height: 75.0,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 238, 178),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 16),
              width: 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "+",
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget BottonSum() {
    return InkWell(
      onTap: () {
        setState(() {
          _num = "                                ";
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 300.0,
          height: 90.0,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 157, 50),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 15),
              width: 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "=",
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Bottondelete() {
    return InkWell(
      onTap: () {
        setState(() {
          if (_num[5] != " ") {
            _num = _num.replaceRange(5, 6, " ");
          } else if (_num[4] != "_") {
            _num = _num.replaceRange(4, 5, " ");
          } else if (_num[3] != "_") {
            _num = _num.replaceRange(3, 4, " ");
          } else if (_num[2] != "_") {
            _num = _num.replaceRange(2, 3, " ");
          } else if (_num[1] != "_") {
            _num = _num.replaceRange(1, 2, " ");
          } else if (_num[0] != "_") {
            _num = _num.replaceRange(0, 1, " ");
          }
          shownum(_num);
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 225.0,
          height: 80.0,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 225, 238, 178),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 16),
              width: 0,
            ),
          ),
          child: Icon(
            Icons.backspace_outlined,
            size: 28,
            color: Color.fromARGB(183, 34, 33, 33),
          ),
        ),
      ),
    );
  }

  Widget Bottonzero() {
    return InkWell(
      onTap: () {
        setState(() {
          _num + "0";
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 275.0,
          height: 70.0,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 221, 101, 163),
            border: Border.all(
              color: Color.fromARGB(255, 16, 16, 16),
              width: 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0",
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(183, 34, 33, 33),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // _buildBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [shownum('0')],
              ),
              SizedBox(width: 1),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Bottonremove(),
                      Row(
                        children: [
                          setnum("7"),
                          setnum("8"),
                        ],
                      ),
                      Row(
                        children: [
                          setnum("4"),
                          setnum("5"),
                        ],
                      ),
                      Row(
                        children: [
                          setnum("1"),
                          setnum("2"),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Bottondelete(),
                      Row(
                        children: [
                          setnum("9"),
                          Bottonper(),
                        ],
                      ),
                      Row(
                       
                        children: [
                          setnum("6"),
                          Bottonmul(),
                        ],
                      ),
                      Row(
                        children: [
                          setnum("3"),
                          Bottonneg(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Bottonzero(),
                  Bottonadd(),
                  SizedBox(width: 1),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottonSum(),
          
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
