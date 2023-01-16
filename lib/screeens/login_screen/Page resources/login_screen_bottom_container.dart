// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketfeeed/resources/Colors/colors.dart';
import 'package:marketfeeed/resources/provider_classes/provider_model.dart';
import 'package:marketfeeed/resources/widgets/drop_down_button.dart';
import 'package:marketfeeed/resources/widgets/input_text_field.dart';
import 'package:marketfeeed/resources/widgets/reusable_button.dart';
import 'package:marketfeeed/screeens/screen_home/screen_home.dart';
import 'package:provider/provider.dart';

class LoginScreenBottonContainer extends StatelessWidget {
  // form field key
  final _formKey = GlobalKey<FormState>();
  //to switch between button get otp and continue button

  // for displaying mobile number contents

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderModel>(
      builder: (context, value, child) => Form(
        key: _formKey,
        child: Container(
            decoration: const BoxDecoration(
                color: kSetupcontainercolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: value.button1
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Login with Mobile Number',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'All your stock market needs in one place',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 12),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Mobile Number',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 11),
                      ),
                      Row(
                        children: [
                          const CustomDropDownButton(),
                          Expanded(
                              child: InputTextFormFieldWidget(
                                  Validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter mobile number';
                                    } else if (value.length < 10) {
                                      return 'Please enter valid mobile number';
                                    }
                                    return null;
                                  },
                                  inputkeyboardType: TextInputType.number,
                                  hintText: 'Enter Mobile Number')),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ReusableButton(
                          buttonText: 'Get OTP',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              value.onOtpPressed();
                            }
                          },
                        ),
                      )
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Setup Your Account',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'All your stock market needs in one place',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 12),
                      ),
                      const SizedBox(height: 25),
                      Column(
                        children: [
                          InputTextFormFieldWidget(
                            Validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your Full name ';
                              }
                              return null;
                            },
                            hintText: ('Full Name'),
                          ),
                          const SizedBox(height: 15),
                          InputTextFormFieldWidget(
                            Validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!value.contains(RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'))) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            inputkeyboardType: TextInputType.emailAddress,
                            hintText: 'Email Address',
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ReusableButton(
                          buttonText: 'Continue',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(
                                  context, ScreenHome.id);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    backgroundColor: Colors.red,
                                    content:
                                        Text('please enter proper details')),
                              );
                            }
                          },
                        ),
                      )
                    ],
                  )),
      ),
    );
  }
}
