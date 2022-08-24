import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sampleproj/ProviderLogin.dart';
import 'package:sampleproj/Providerregisterview/companyinfo.dart';
import 'package:sampleproj/Providerregisterview/verification.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:sampleproj/ProviderLogin.dart';
// import 'package:sampleproj/Providerregisterview/PersonalInfo.dart';
// import 'package:sampleproj/Providerregisterview/companyinfo.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../Controller/Authcontroller.dart';

class AadharinfoAuthform extends GetView<Authcontroller> {
  AadharinfoAuthform({Key? key}) : super(key: key);
  Authcontroller controller = Get.put(Authcontroller());

  bool _isShown = true;
  @override
  Widget build(BuildContext context) {
    double _value;
SharedPreferences prefs;
    bool _upload;

    String dropdownValue = 'Choose the id proof!';
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
                                              'Documents',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 30,
                                                color: Color(0xff3b3a3a),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Form(
                                      key: controller.formKey2,
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
                                                    .pancardValidator(value!);
                                              },
                                              // controller: pancardController,
                                              maxLength: 10,
                                              keyboardType: TextInputType.text,
                                              decoration: InputDecoration(
                                                hintText:
                                                    "Enter PanCard Number",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  borderSide: BorderSide(
                                                      color: Colors.red),
                                                ),
                                              ),
                                              onSaved: (value) {
                                                controller.pancard = value!;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 12),
                                            child:
                                                DropdownButtonFormField<String>(
                                              hint: Text('Choose ID Proof'),
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
                                                  child: Text("Aadhar Card"),
                                                  value: 'aadharcard',
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Pancard"),
                                                  value: 'pancard',
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Voter Id"),
                                                  value: 'voterid',
                                                ),
                                                DropdownMenuItem(
                                                  child:
                                                      Text("Driving License"),
                                                  value: 'drivinglicense',
                                                ),
                                              ],
                                              onChanged: (newValue) {
                                                controller
                                                    .onSelected(newValue!);
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                12.0, 8, 12, 15),
                                            child:
                                                DropdownButtonFormField<String>(
                                              hint: Text('Upload Shop Image'),
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
                                                  child: InkWell(
                                                    onTap: () {
                                                      controller.getImage(
                                                                ImageSource
                                                                    .camera);
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.camera_alt_outlined),
                                                        Text("Camera"),
                                                      ],
                                                    ),
                                                  ),
                                                  value: 'camera',
                                                ),
                                                DropdownMenuItem(
                                                  child: InkWell(
                                                    onTap: () {controller.getImage(
                                                                ImageSource
                                                                    .gallery);},
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.photo_library_outlined),
                                                        Text("Gallery"),
                                                      ],
                                                    ),
                                                    ),
                                                  
                                                  value: 'gallery',
                                                ),
                                              ],
                                              onChanged: (newValue) {
                                                controller
                                                    .onSelected1(newValue!);
                                              },
                                            ),
                                           
                                          ),

                                          
                                          Column(
                                            children: [
                                              // Obx(() => controller
                                              //             .selectedImagePath
                                              //             .value ==
                                              //         ''
                                              //     ? Text(
                                              //         'select image from camera/gallery')
                                              //     : Image.file(File(controller
                                              //         .selectedImagePath
                                              //         .value))),
                                              Obx(() => Text(controller
                                                  .selectedImagePath.value)),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          12.0, 8, 12, 0),
                                                  child: Visibility(
                                                    visible: _isShown,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        RaisedButton(
                                                          onPressed: () {
                                                            controller.getImage(
                                                                ImageSource
                                                                    .camera);
                                                          },
                                                          child: Text("camera"),
                                                        ),
                                                        RaisedButton(
                                                          onPressed: () {
                                                            controller.getImage(
                                                                ImageSource
                                                                    .gallery);
                                                          },
                                                          child:
                                                              Text("Gallery"),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          )
                                         
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
                                        controller.formKey1.currentState!
                                            .save();
                                        if (controller.formKey1.currentState!
                                            .validate()) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CompanyinfoAuthform()),
                                          );
                                        } else {}
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
                                        controller.formKey2.currentState!
                                            .save();
                                        if (controller.formKey2.currentState!
                                            .validate()) {
                                               prefs = await SharedPreferences
                                              .getInstance();

                                          await prefs.setString('pan_number',controller.pancard);
                                          await prefs.setString('id_type',controller.selectedValue.toString());
                                             await prefs.setString('id_image',controller
                                                  .selectedImagePath.value);
                                          
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    VerificationAuthform()),
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
}

void setState(Null Function() param0) {}
Widget _getFAB() {
  int _counter = 0;
  print("ffff");
  return SpeedDial(
    animatedIcon: AnimatedIcons.menu_close,
    animatedIconTheme: IconThemeData(size: 22),
    backgroundColor: Color(0xFF801E48),
    visible: true,
    curve: Curves.bounceIn,
    children: [
      // FAB 1
      SpeedDialChild(
          child: Icon(Icons.assignment_turned_in),
          backgroundColor: Color(0xFF801E48),
          onTap: () {/* do anything */},
          label: 'Button 1',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16.0),
          labelBackgroundColor: Color(0xFF801E48)),
      // FAB 2
      SpeedDialChild(
          child: Icon(Icons.assignment_turned_in),
          backgroundColor: Color(0xFF801E48),
          onTap: () {
            setState(() {
              _counter = 0;
            });
          },
          label: 'Button 2',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16.0),
          labelBackgroundColor: Color(0xFF801E48))
    ],
  );
}