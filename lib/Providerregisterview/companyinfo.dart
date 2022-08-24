import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampleproj/ProviderLogin.dart';
import 'package:sampleproj/Providerregisterview/Aadharinfo.dart';
import 'package:sampleproj/Providerregisterview/PersonalInfo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../Controller/Authcontroller.dart';

class CompanyinfoAuthform extends GetView<Authcontroller> {
  CompanyinfoAuthform({Key? key}) : super(key: key);
  Authcontroller controller = Get.put(Authcontroller());
  @override
  Widget build(BuildContext context) {
    // fin prefs =
    SharedPreferences prefs;

    GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();
    double _value;
    String countryValue = "";
    String? stateValue = "";
    String? cityValue = "";
    String address = "";

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/backgnd.png'), fit: BoxFit.cover),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0, 30, 0),
                child: Image(
                    image: AssetImage('assets/images/splashlogoregister.png')),
              ),
              // Generated code for this Card Widget...
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SfSlider(
                                stepSize: 5,
                                min: 20.0,
                                max: 100.0,
                                value: 60,
                                interval: 20,
                                showTicks: true,
                                showLabels: true,
                                enableTooltip: true,
                                minorTicksPerInterval: 0,
                                onChanged: (value) {
                                  setState() {
                                    _value = 100;
                                  }
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Generated code for this Card Widget...

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15.0, 8, 15, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ImageIcon(AssetImage(
                                              'assets/images/register_icon.png')),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Company Info',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 30,
                                                color: Color(0xff3b3a3a),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Form(
                                      key: controller.formKey1,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12.0, 0, 0, 4),
                                                child: Text(
                                                  'Please fill the below form',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    color: Color(0xff9a9a9a),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              validator: (value) {
                                                return controller
                                                    .Companynamevalidator(
                                                        value!);
                                              },
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                hintText: "Company name",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.companyname = value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              //  controller: emailController,
                                              validator: (value) {
                                                return controller
                                                    .Companyaddressvalidator(
                                                        value!);
                                              },
                                              keyboardType:
                                                  TextInputType.multiline,
                                              minLines: 1,
                                              maxLines: 5,
                                              decoration: InputDecoration(
                                                hintText: "company Address",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.companyaddress =
                                                    value!;
                                              },
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              //  controller: emailController,
                                              validator: (value) {
                                                return controller
                                                    .countryvalidator(value!);
                                              },
                                              keyboardType: TextInputType.text,

                                              decoration: InputDecoration(
                                                hintText: "Choose Country",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.countrystr = value!;
                                              },
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              //  controller: emailController,
                                              validator: (value) {
                                                return controller
                                                    .statevalidator(value!);
                                              },
                                              keyboardType: TextInputType.text,

                                              decoration: InputDecoration(
                                                hintText: "Choose State",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.statestr = value!;
                                              },
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              //  controller: emailController,
                                              validator: (value) {
                                                return controller
                                                    .cityvalidator(value!);
                                              },
                                              keyboardType: TextInputType.text,

                                              decoration: InputDecoration(
                                                hintText: "Choose City",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.citystr = value!;
                                              },
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              //  controller: emailController,
                                              validator: (value) {
                                                return controller
                                                    .pincodevalidator(value!);
                                              },
                                              keyboardType:
                                                  TextInputType.number,

                                              decoration: InputDecoration(
                                                hintText: "Enter Pincode",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.pincodestr = value!;
                                              },
                                            ),
                                          ),
                                          // Container(
                                          //   child: Column(
                                          //     children: [
                                          //       CSCPicker(
                                          //         ///Enable disable state dropdown [OPTIONAL PARAMETER]
                                          //         showStates: true,

                                          //         /// Enable disable city drop down [OPTIONAL PARAMETER]
                                          //         showCities: true,

                                          //         ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                                          //         flagState:
                                          //             CountryFlag.DISABLE,

                                          //         ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                                          //         dropdownDecoration:
                                          //             BoxDecoration(
                                          //                 borderRadius:
                                          //                     BorderRadius.all(
                                          //                         Radius
                                          //                             .circular(
                                          //                                 10)),
                                          //                 color: Colors.white,
                                          //                 border: Border.all(
                                          //                     color: Colors.grey
                                          //                         .shade300,
                                          //                     width: 1)),

                                          //         ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                                          //         disabledDropdownDecoration:
                                          //             BoxDecoration(
                                          //                 borderRadius:
                                          //                     BorderRadius.all(
                                          //                         Radius
                                          //                             .circular(
                                          //                                 10)),
                                          //                 color: Colors
                                          //                     .grey.shade300,
                                          //                 border: Border.all(
                                          //                     color: Colors.grey
                                          //                         .shade300,
                                          //                     width: 1)),

                                          //         ///placeholders for dropdown search field
                                          //         countrySearchPlaceholder:
                                          //             "Country",
                                          //         stateSearchPlaceholder:
                                          //             "State",
                                          //         citySearchPlaceholder: "City",

                                          //         ///labels for dropdown
                                          //         countryDropdownLabel:
                                          //             "*Country",
                                          //         stateDropdownLabel: "*State",
                                          //         cityDropdownLabel: "*City",

                                          //         ///Default Country
                                          //         //defaultCountry: DefaultCountry.India,

                                          //         ///Disable country dropdown (Note: use it with default country)
                                          //         //disableCountry: true,

                                          //         ///selected item style [OPTIONAL PARAMETER]
                                          //         selectedItemStyle: TextStyle(
                                          //           color: Colors.black,
                                          //           fontSize: 14,
                                          //         ),

                                          //         ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                                          //         dropdownHeadingStyle:
                                          //             TextStyle(
                                          //                 color: Colors.black,
                                          //                 fontSize: 17,
                                          //                 fontWeight:
                                          //                     FontWeight.bold),

                                          //         ///DropdownDialog Item style [OPTIONAL PARAMETER]
                                          //         dropdownItemStyle: TextStyle(
                                          //           color: Colors.black,
                                          //           fontSize: 14,
                                          //         ),

                                          //         ///Dialog box radius [OPTIONAL PARAMETER]
                                          //         dropdownDialogRadius: 10.0,

                                          //         ///Search bar radius [OPTIONAL PARAMETER]
                                          //         searchBarRadius: 10.0,

                                          //         ///triggers once country selected in dropdown
                                          //         onCountryChanged: (value) {
                                          //           setState(() {
                                          //             ///store value in country variable
                                          //             countryValue = value;
                                          //           });
                                          //         },

                                          //         ///triggers once state selected in dropdown
                                          //         onStateChanged: (value) {
                                          //           setState(() {
                                          //             ///store value in state variable
                                          //             stateValue = value;
                                          //           });
                                          //         },

                                          //         ///triggers once city selected in dropdown
                                          //         onCityChanged: (value) {
                                          //           setState(() {
                                          //             ///store value in city variable
                                          //             cityValue = value;
                                          //             print("hcjsabh");
                                          //             print(cityValue);
                                          //           });
                                          //         },
                                          //       ),

                                          //       ///print newly selected country state and city in Text Widget
                                          //       TextButton(
                                          //           onPressed: () {
                                          //             setState(() {
                                          //               address =
                                          //                   "$cityValue, $stateValue, $countryValue";
                                          //               print("object1111");
                                          //               print(address);
                                          //             });
                                          //           },
                                          //           child: Text("Print Data")),
                                          //       Text(address)
                                          //     ],
                                          //   ),
                                          // ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 0),
                                            child: TextFormField(
                                              validator: (value) {
                                                return controller.Gstvalidator(
                                                    value!);
                                              },
                                              // controller: mobileController,
                                              maxLength: 10,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText: "GST Number",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.GSTnumber = value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 12),
                                            child:
                                                DropdownButtonFormField<String>(
                                              hint:
                                                  Text('Choose provider Type'),
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Tanker"),
                                                  value: 'Tanker',
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Cans"),
                                                  value: 'Cans',
                                                ),
                                              ],
                                              onChanged: (newValue) {
                                                controller
                                                    .onSelected1(newValue!);
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 15),
                                            child: TextFormField(
                                              //controller: textController,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText: "Upload Company Image",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                } else {
                                                  return 'Please upload company Image';
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8, 12, 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: FlatButton(
                                      color: Colors.red,
                                      textColor: Colors.green,
                                      child: Text("Back",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PersonalinfoAuthform()),
                                        );
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: FlatButton(
                                      color: Colors.red,
                                      textColor: Colors.green,
                                      child: Text("Next",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      onPressed: () async {
                                        controller.formKey1.currentState!
                                            .save();
                                        if (controller.formKey1.currentState!
                                            .validate()) {
                                          prefs = await SharedPreferences
                                              .getInstance();

                                          await prefs.setString('companyname',
                                              controller.companyname);
                                          await prefs.setString(
                                              'companyaddress',
                                              controller.companyaddress);
                                          await prefs.setString('countrystr',
                                              controller.countrystr);
                                          await prefs.setString(
                                              'statestr', controller.statestr);
                                          await prefs.setString(
                                              'citystr', controller.citystr);
                                          await prefs.setString('pincodestr',
                                              controller.pincodestr);
                                          await prefs.setString('GSTnumber',
                                              controller.GSTnumber);
                                          await prefs.setString(
                                              'provider_type',
                                              controller.selectedValue1
                                                  .toString());
                                         
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AadharinfoAuthform()),
                                          );
                                        } else {}
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
