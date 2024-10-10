import 'package:calculator_app/commit/color.dart';
import 'package:calculator_app/ui/views/colculator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = FocusNode();
  Calculator _calculator = Calculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: anaRenk,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  height: 90,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: ikinciRenk,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Text(
                          "HESAP MAKİNESİ",
                          style: TextStyle(
                              fontFamily: "popi",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ))),

            ],
          ),
          Column(
            children: [
              Container(
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  showCursor: true,
                  readOnly: true, // Klavye açılmasın
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: anaRenk,
                  ),
                ),
              ),
              Container(
                height: 480,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildCustomContainer(
                            child: Text(
                              "AC",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _controller.clear(); // TextField'ı temizler
                            },
                          ),
                          SizedBox(width: 16), // İki öğe arasına boşluk ekliyoruz
                          buildCustomContainer(
                            child: Icon(
                              FontAwesomeIcons.deleteLeft,
                              size: 35,
                            ),
                            onTap: () {
                              if (_controller.text.isNotEmpty) {
                                setState(() {
                                  _controller.text = _controller.text
                                      .substring(0, _controller.text.length - 1);
                                });
                              }
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Icon(
                              FontAwesomeIcons.percent,
                              size: 35,
                            ),
                            onTap: () {
                              _addToDisplay("%");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Icon(
                              FontAwesomeIcons.divide,
                              size: 35,
                            ),
                            onTap: () {
                              _addToDisplay("/");
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildCustomContainer(
                            child: Text(
                              "7",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("7");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              "8",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("8");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              "9",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("9");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Icon(
                              FontAwesomeIcons.xmark,
                              size: 35,
                            ),
                            onTap: () {
                              _addToDisplay("*");
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildCustomContainer(
                            child: Text(
                              "4",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("4");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              "5",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("5");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              "6",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("6");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("-");
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildCustomContainer(
                            child: Text(
                              "1",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("1");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              "2",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("2");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              "3",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("3");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Icon(
                              FontAwesomeIcons.add,
                              size: 35,
                            ),
                            onTap: () {
                              _addToDisplay("+");
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildCustomContainer(
                            child: Text(
                              "0",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay("0");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Text(
                              ",",
                              style: TextStyle(
                                fontFamily: "popi",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _addToDisplay(".");
                            },
                          ),
                          SizedBox(width: 16),
                          buildCustomContainer(
                            child: Icon(
                              FontAwesomeIcons.equals,
                              size: 35,
                            ),
                            onTap: () {
                              _calculateResult();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }

  // Tuşa tıklayınca textField'a veri ekleme
  void _addToDisplay(String value) {
    setState(() {
      _controller.text += value;
    });
  }

  // Hesaplama işlemi
  void _calculateResult() {
    String result = _calculator.calculate(_controller.text); // Call the calculate method
    setState(() {
      _controller.text = result;
    });
  }

  Widget buildCustomContainer({
    required Widget child,
    required Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: child,
        ),
        height: 67,
        width: 67,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
