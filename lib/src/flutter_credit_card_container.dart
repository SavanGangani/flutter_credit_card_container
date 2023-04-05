import 'package:flutter/material.dart';

class FlutterCreditCard extends StatefulWidget {
  const FlutterCreditCard(
      {Key? key,
        required this.cardNumber,
        required this.startMonth,
        required this.startYears,
        required this.endMonth,
        required this.endYears,
        required this.cvvNumber,
        required this.cardHolderName,
        this.backgroundColor,
        this.width,
        this.height,
        this.fontColor})
      : super(key: key);


  final String? cardNumber;
  final int? startMonth;
  final int? startYears;
  final int? endMonth;
  final int? endYears;
  final int? cvvNumber;
  final String? cardHolderName;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Color? fontColor;

  @override
  State<FlutterCreditCard> createState() => _FlutterCreditCardState();
}

class _FlutterCreditCardState extends State<FlutterCreditCard> {
  bool cvvShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                color: widget.backgroundColor??Colors.blueAccent.shade100,
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            height: widget.height ?? 200,
            width: widget.width ?? 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    "${widget.cardNumber}",
                    style: TextStyle(
                        color: widget.fontColor??Colors.white, letterSpacing: 4.5, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "VALID \nFROM",
                        style: TextStyle(color: widget.fontColor??Colors.white, fontSize: 10
                          // letterSpacing: 4.5
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${widget.startMonth}/${widget.startYears}",
                        style: TextStyle(
                          color: widget.fontColor??Colors.white,
                          // fontSize: 10
                          // letterSpacing: 4.5
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        "VALID \nTHRU",
                        style: TextStyle(color:widget.fontColor?? Colors.white, fontSize: 10
                          // letterSpacing: 4.5
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${widget.endMonth}/${widget.endYears}",
                        style: TextStyle(
                          color: widget.fontColor??Colors.white,
                          // letterSpacing: 4.5
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "CVV",
                        style: TextStyle(
                            color:widget.fontColor?? Colors.white,
                            // letterSpacing: 4.5,
                            fontSize: 15),
                      ),
                      Visibility(
                        visible: cvvShow,
                        child: Text(
                          "     ${widget.cvvNumber}",
                          style: TextStyle(
                              color:widget.fontColor?? Colors.white,
                              fontSize: 15),
                        ),
                      ),
                      Visibility(
                        visible: !cvvShow,
                        child: Text(
                          "     ****",
                          style: TextStyle(
                              color:widget.fontColor?? Colors.white,
                              fontSize: 15),
                        ),
                      ),
                      IconButton(
                          alignment: AlignmentDirectional.centerEnd,
                          onPressed: () {
                            setState(() {
                              if (cvvShow) {
                                cvvShow = false;
                              } else {
                                cvvShow = true;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye_rounded,
                            color:widget.fontColor?? Colors.white,
                            size: 16,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    "${widget.cardHolderName}",
                    style: const TextStyle(
                        color: Colors.white, letterSpacing: 2.5, fontSize: 15),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
