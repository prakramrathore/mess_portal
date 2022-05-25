import 'package:flutter/material.dart';
import 'package:mess_portal/themeing/notifier.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:mess_portal/data/dataContainer.dart';

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  _feedbackState createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  String review = "";
  double ratingValue = 0.0;
  String tag = "";
  bool isSelected = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  bool isSelected6 = false;
  late Color _mycolor = Colors.transparent;
  late Color _mytext = Colors.white;
  late Color _mycolor2 = Colors.transparent;
  late Color _mytext2 = Colors.white;
  late Color _mycolor3 = Colors.transparent;
  late Color _mytext3 = Colors.white;
  late Color _mycolor4 = Colors.transparent;
  late Color _mytext4 = Colors.white;
  late Color _mycolor5 = Colors.transparent;
  late Color _mytext5 = Colors.white;
  late Color _mycolor6 = Colors.transparent;
  late Color _mytext6 = Colors.white;

  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

  @override
  Widget Rating() {
    return RatingBar(
      initialRating: ratingValue,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 60,
      glow: false,
      ratingWidget: RatingWidget(
        full: Icon(
          Icons.star,
          color: Colors.white,
        ),
        half: Icon(Icons.star_half, color: Colors.white),
        empty: Icon(Icons.star_border_purple500_sharp, color: Colors.white),
      ),
      onRatingUpdate: (value) {
        setState(() {
          ratingValue = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 140),
              child: Text(
                "Mess Feedback",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Rate Your Experience",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Are you Satisfied with the Service?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Rating(),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Tell us what can be improved?",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            decoration: BoxDecoration(
                                color: _mycolor,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Overall Service",
                              style: TextStyle(fontSize: 10, color: _mytext),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              isSelected = true;
                              if (isSelected == true) {
                                tag += "Overall Services";
                              }
                              if (_mycolor == Colors.transparent) {
                                _mycolor = Colors.white;
                                _mytext = Colors.black;
                              } else {
                                _mycolor = Colors.transparent;
                                _mytext = Colors.white;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            decoration: BoxDecoration(
                                color: _mycolor2,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Food Quality",
                              style: TextStyle(fontSize: 10, color: _mytext2),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              if (_mycolor2 == Colors.transparent) {
                                _mycolor2 = Colors.white;
                                _mytext2 = Colors.black;
                              } else {
                                _mycolor2 = Colors.transparent;
                                _mytext2 = Colors.white;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            decoration: BoxDecoration(
                                color: _mycolor3,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Maintainence",
                              style: TextStyle(fontSize: 10, color: _mytext3),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              if (_mycolor3 == Colors.transparent) {
                                _mycolor3 = Colors.white;
                                _mytext3 = Colors.black;
                              } else {
                                _mycolor3 = Colors.transparent;
                                _mytext3 = Colors.white;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            decoration: BoxDecoration(
                                color: _mycolor4,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Hygine",
                              style: TextStyle(fontSize: 10, color: _mytext4),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              if (_mycolor4 == Colors.transparent) {
                                _mycolor4 = Colors.white;
                                _mytext4 = Colors.black;
                              } else {
                                _mycolor4 = Colors.transparent;
                                _mytext4 = Colors.white;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            decoration: BoxDecoration(
                                color: _mycolor5,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Speed and Efficiency",
                              style: TextStyle(fontSize: 10, color: _mytext5),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              if (_mycolor5 == Colors.transparent) {
                                _mycolor5 = Colors.white;
                                _mytext5 = Colors.black;
                              } else {
                                _mycolor5 = Colors.transparent;
                                _mytext5 = Colors.white;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            decoration: BoxDecoration(
                                color: _mycolor6,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "Transperancy",
                              style: TextStyle(fontSize: 10, color: _mytext6),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              if (_mycolor6 == Colors.transparent) {
                                _mycolor6 = Colors.white;
                                _mytext6 = Colors.black;
                              } else {
                                _mycolor6 = Colors.transparent;
                                _mytext6 = Colors.white;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      minLines: 5,
                      maxLines: 10,
                      onChanged: (e) {
                        review = e;
                      },
                      controller: fieldText,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Enter your review here.'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: _mycolor6,
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: TextButton(
                            onPressed: () {
                              // dataContainer.mess.sheet.writeData(
                              //     DateTime.now().toString(),
                              //     review,
                              //     tag,
                              //     ratingValue);
                              setState(() {
                                review = '';
                                tag = '';
                                ratingValue = 0;
                              });
                              clearText();
                              _mycolor = Colors.transparent;
                              _mytext = Colors.white;
                              _mycolor2 = Colors.transparent;
                              _mytext2 = Colors.white;
                              _mycolor3 = Colors.transparent;
                              _mytext3 = Colors.white;
                              _mycolor4 = Colors.transparent;
                              _mytext4 = Colors.white;
                              _mycolor5 = Colors.transparent;
                              _mytext5 = Colors.white;
                              _mycolor6 = Colors.transparent;
                              _mytext6 = Colors.white;
                            },
                            child: Text(
                              "Submit",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            )),
                      ),
                    )
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
