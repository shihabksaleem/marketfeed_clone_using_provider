import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/provider_classes/leaderboard_parovider.dart';
import 'package:marketfeeed/resources/widgets/reusable_button.dart';
import 'package:provider/provider.dart';

Future<dynamic> indicesOptionBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
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
          value.onIndicesResetPressed();
          Navigator.pop(context);
          return true;
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.65,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
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
                        value.onIndicesResetPressed();

                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close_sharp))
                ],
              ),
              const Divider(
                height: 0,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.indexOptions.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: InkWell(
                        onTap: () {
                          value.onRadioButtonPressed(index);
                        },
                        child: Row(
                          children: [
                            Radio(
                              activeColor: Color(0xFF4266c7),
                              value: value.indexOptions[index],
                              groupValue: value.indicesRadioValue,
                              onChanged: (newValue) {
                                value.onRadioButtonPressed(index);
                              },
                            ),
                            Text(value.indexOptions[index])
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
                        value.onIndicesResetPressed();
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
                        value.onIndicesConfirmPressed();
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
    ),
  );
}
