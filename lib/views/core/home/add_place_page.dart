import 'dart:io';
import 'package:exploreease/views/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:image_picker/image_picker.dart';

class AddPlacePage extends StatefulWidget {
  const AddPlacePage({super.key});

  @override
  State<AddPlacePage> createState() => _AddPlacePageState();
}

class _AddPlacePageState extends State<AddPlacePage> {
  //Image
  bool _isImageSelected = false;
  String? _selectedImageName;
  File? _selectedImage;
  //Details
  bool isParkingSelected = false;
  bool isRoadSelected = false;
  bool isNetworkSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            backgroundColor: appBackgroundColor,
            surfaceTintColor: Colors.transparent,
            automaticallyImplyLeading: false,
            floating: true,
            centerTitle: true,
            title: const Text(
              "You have a new place?",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32.0,
                color: text1Color,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FluentIcons.arrow_left_32_regular,
                color: text1Color,
                size: 28.0,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Discover a hidden gem? Share it with us! Add a new place to our app and let your exploration become an inspiration for others.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: text2Color,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: itemBackgroundColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: primaryColor,
                        cursorHeight: 20.0,
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: const TextStyle(
                            color: text2Color,
                            fontSize: 18.0,
                          ),
                          floatingLabelStyle: const TextStyle(
                            color: primaryColor,
                            fontSize: 20.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: primaryColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width*0.435,
                        decoration: BoxDecoration(
                            color: itemBackgroundColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            cursorColor: primaryColor,
                            cursorHeight: 20.0,
                            decoration: InputDecoration(
                              labelText: "State",
                              labelStyle: const TextStyle(
                                color: text2Color,
                                fontSize: 18.0,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: primaryColor,
                                fontSize: 20.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: primaryColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 60.0,
                        width: MediaQuery.of(context).size.width*0.435,
                        decoration: BoxDecoration(
                            color: itemBackgroundColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            cursorColor: primaryColor,
                            cursorHeight: 20.0,
                            decoration: InputDecoration(
                              labelText: "City",
                              labelStyle: const TextStyle(
                                color: text2Color,
                                fontSize: 18.0,
                              ),
                              floatingLabelStyle: const TextStyle(
                                color: primaryColor,
                                fontSize: 20.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    const BorderSide(color: primaryColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 140.0,
                    decoration: BoxDecoration(
                        color: itemBackgroundColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Center(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: primaryColor,
                        keyboardType: TextInputType.multiline,
                        expands: true,
                        maxLines: null,
                        cursorHeight: 20.0,
                        decoration: InputDecoration(
                          labelText: "Description",
                          labelStyle: const TextStyle(
                            color: text2Color,
                            fontSize: 18.0,
                          ),
                          floatingLabelStyle: const TextStyle(
                            color: primaryColor,
                            fontSize: 20.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: primaryColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60.0,
                        width:MediaQuery.of(context).size.width*0.710,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: itemBackgroundColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(
                            _isImageSelected
                                ? _selectedImageName.toString()
                                : "Please select an image.",
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: text2Color,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60.0,
                        width: 60,
                        child: TextButton(
                          onPressed: () {
                            _pickImageFromGallery();
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            elevation:
                                const MaterialStatePropertyAll<double>(0.0),
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    itemBackgroundColor),
                          ),
                          child: const Icon(
                            FluentIcons.image_add_24_regular,
                            color: primaryColor,
                            size: 28.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  ExpansionTile(
                    title: const Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: text2Color,
                      ),
                    ),
                    iconColor: primaryColor,
                    collapsedBackgroundColor: itemBackgroundColor,
                    collapsedShape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      side: BorderSide.none,
                    ),
                    shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      side: BorderSide.none,
                    ),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                    children: [
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 5.0,
                        direction: Axis.horizontal,
                        children: [
                          ChoiceChip(
                            backgroundColor: itemBackgroundColor,
                            selectedColor: primaryColor,
                            checkmarkColor: text3Color,
                            side: const BorderSide(color: Colors.transparent),
                            label: const Text("Parking"),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color:
                                  isParkingSelected ? text3Color : text2Color,
                            ),
                            selected: isParkingSelected,
                            onSelected: (value) {
                              setState(
                                () {
                                  isParkingSelected = value;
                                },
                              );
                            },
                          ),
                          ChoiceChip(
                            backgroundColor: itemBackgroundColor,
                            selectedColor: primaryColor,
                            checkmarkColor: text3Color,
                            side: const BorderSide(color: Colors.transparent),
                            label: const Text("Road Access"),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: isRoadSelected ? text3Color : text2Color,
                            ),
                            selected: isRoadSelected,
                            onSelected: (value) {
                              setState(
                                () {
                                  isRoadSelected = value;
                                },
                              );
                            },
                          ),
                          ChoiceChip(
                            backgroundColor: itemBackgroundColor,
                            selectedColor: primaryColor,
                            checkmarkColor: text3Color,
                            side: const BorderSide(color: Colors.transparent),
                            label: const Text("Network"),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color:
                                  isNetworkSelected ? text3Color : text2Color,
                            ),
                            selected: isNetworkSelected,
                            onSelected: (value) {
                              setState(
                                () {
                                  isNetworkSelected = value;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) {
      setState(() {
        _isImageSelected = false;
      });
      return;
    } else {
      setState(() {
        _isImageSelected = true;
        _selectedImageName = returnedImage.name;
        _selectedImage = File(returnedImage.path);
      });
    }
  }
}
