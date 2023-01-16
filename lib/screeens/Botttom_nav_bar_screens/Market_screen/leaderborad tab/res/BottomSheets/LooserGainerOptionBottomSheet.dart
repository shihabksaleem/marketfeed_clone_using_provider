import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/provider_classes/leaderboard_parovider.dart';
import 'package:marketfeeed/resources/widgets/reusable_button.dart';
import 'package:provider/provider.dart';

Future<dynamic> looserGainerOptionBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => Consumer<leaderboardProviderModel>(
            builder: (context, value, child) => WillPopScope(
              onWillPop: () async {
                value.onLGResetPressed();
                Navigator.pop(context);
                return true;
              },
              child: Container(
                height: 250,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Choose an option',
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {
                              value.onLGResetPressed();
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close_sharp))
                      ],
                    ),
                    Divider(
                      height: 0,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.looserGainer.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: InkWell(
                              onTap: () {
                                value.onLGRadioPressed(index);
                              },
                              child: Row(
                                children: [
                                  Radio(
                                    activeColor: Color(0xFF4266c7),
                                    value: value.looserGainer[index],
                                    groupValue: value.LGRadioValue,
                                    onChanged: (newValue) {
                                      value.onLGRadioPressed(index);
                                    },
                                  ),
                                  Text(value.looserGainer[index])
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ReusableButton(
                            buttoncolor: false,
                            buttonText: 'Reset',
                            onPressed: () {
                              value.onLGResetPressed();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: ReusableButton(
                            buttonText: 'Confirm',
                            onPressed: () {
                              value.onLGConfirmPressed();
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ));
}
