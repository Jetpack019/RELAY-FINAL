import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../car_rent_order_summary.dart';
import 'tesla_vehicle.dart';

class Cars_Tesla extends StatefulWidget {
  Cars_Tesla({Key? key}) : super(key: key);

  @override
  State<Cars_Tesla> createState() => _Cars_TeslaState();
}

class _Cars_TeslaState extends State<Cars_Tesla> {
  late TextEditingController pickUpLocationController;
  late TextEditingController dropOffLocationController;
  String pickUpLocation = "";
  String dropOffLocation = "";

  DateTime? dateTimepickUp;
  DateTime? dateTimedropOff;

  String? Tesla_Model;
  var tesla_null = "";
  var tesla_model = "";

  String tesla_model_x = "MWA 143";
  String tesla_model_s = "IMY 143";
  String tesla_model_3 = "ILY 143";

  String rentsetTesla_Model_choose = "";

  String rentsetTesla_Model_pickUp = "";
  String rentsetTesla_Model_dropOff = "";
  String rentsetTesla_Model_pickUp_datetime = "";
  String rentsetTesla_Model_dropOff_datetime = "";

  String getTextPickUp() {
    if (dateTimepickUp == null) {
      return '';
    } else {
      return DateFormat('MM/dd/yyyy HH:mm').format(dateTimepickUp!);
    }
  }

  String getTextDropOff() {
    if (dateTimedropOff == null) {
      return '';
    } else {
      return DateFormat('MM/dd/yyyy HH:mm').format(dateTimedropOff!);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pickUpLocationController = TextEditingController();
    dropOffLocationController = TextEditingController();

    getTesla_Model();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        flexibleSpace: Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Tesla_Vehicles(),
                  ),
                );
              },
              color: Colors.black,
              icon: Icon(Icons.close),
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          tesla_null == ""
              ? Text(
                  "No Image",
                )
              : Tesla_Model == "Model X"
                  ? Image.asset(
                      "assets/Cars/Tesla/Model-X.png",
                      width: MediaQuery.of(context).size.width,
                    )
                  : Tesla_Model == "Model S"
                      ? Image.asset(
                          "assets/Cars/Tesla/Model-S.png",
                          width: MediaQuery.of(context).size.width,
                        )
                      : Tesla_Model == "Model 3"
                          ? Image.asset(
                              "assets/Cars/Tesla/Model-3-.png",
                              width: MediaQuery.of(context).size.width,
                            )
                          : Text(
                              "No Image",
                            ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Material(
                elevation: 5,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      Tesla_Model == "Model X"
                          ? tesla_model = tesla_model_x
                          : Tesla_Model == "Model S"
                              ? tesla_model = tesla_model_s
                              : Tesla_Model == "Model 3"
                                  ? tesla_model = tesla_model_3
                                  : "Choose A Model",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Word Sans',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              tesla_null == ""
                  ? tesla_null = "Choose a car Model"
                  : tesla_null = Tesla_Model!,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Material(
                elevation: 5,
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, bottom: 5),
                                    child: Text(
                                      "Pick-up Location",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Word Sans',
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: 150,
                                      child: Material(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: const BorderSide(
                                              color: Colors.black, width: 0.5),
                                        ),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () async {
                                                  final pickUpLocation =
                                                      await openDialogPickUpLocation();
                                                  if (pickUpLocation == null ||
                                                      pickUpLocation.isEmpty)
                                                    return;
                                                  setState(() =>
                                                      this.pickUpLocation =
                                                          pickUpLocation);
                                                },
                                                child: Icon(
                                                  Icons.arrow_drop_down_sharp,
                                                  size: 30,
                                                )),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Text(
                                                  "$pickUpLocation",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, bottom: 5),
                                    child: Text(
                                      "Drop-off Location",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Word Sans',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: 150,
                                      child: Material(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: const BorderSide(
                                              color: Colors.black, width: 0.5),
                                        ),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () async {
                                                  final dropOffLocation =
                                                      await openDialogDropOffLocation();
                                                  if (dropOffLocation == null ||
                                                      dropOffLocation.isEmpty)
                                                    return;
                                                  setState(() =>
                                                      this.dropOffLocation =
                                                          dropOffLocation);
                                                },
                                                child: Icon(
                                                  Icons.arrow_drop_down_sharp,
                                                  size: 30,
                                                )),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Text(
                                                  "$dropOffLocation",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, bottom: 5),
                                    child: Text(
                                      "Pick-up Date",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Word Sans',
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: 150,
                                      child: Material(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: const BorderSide(
                                              color: Colors.black, width: 0.5),
                                        ),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  pickDateTimePickUp(context);
                                                },
                                                child: Icon(
                                                  Icons.arrow_drop_down_sharp,
                                                  size: 30,
                                                )),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Text(
                                                  getTextPickUp(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, bottom: 5),
                                    child: Text(
                                      "Drop-off Date",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Word Sans',
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: 150,
                                      child: Material(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          side: const BorderSide(
                                              color: Colors.black, width: 0.5),
                                        ),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  pickDateTimeDropOff(context);
                                                },
                                                child: Icon(
                                                  Icons.arrow_drop_down_sharp,
                                                  size: 30,
                                                )),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5),
                                                child: Text(
                                                  getTextDropOff(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: SizedBox(
                              child: MaterialButton(
                                onPressed: () {
                                  rentsetTesla_Model_choose = tesla_null;
                                  rentsetTesla_Model_pickUp = pickUpLocation;
                                  rentsetTesla_Model_dropOff = dropOffLocation;
                                  rentsetTesla_Model_pickUp_datetime =
                                      dateTimepickUp.toString();
                                  rentsetTesla_Model_dropOff_datetime =
                                      dateTimedropOff.toString();

                                  if (rentsetTesla_Model_pickUp == "" ||
                                      rentsetTesla_Model_pickUp_datetime ==
                                          "" ||
                                      rentsetTesla_Model_dropOff == "" ||
                                      rentsetTesla_Model_dropOff_datetime ==
                                          "") {
                                    Fluttertoast.showToast(
                                        msg:
                                            "Choose your order before you proceed");
                                  } else {
                                    setTesla_Model_choose(
                                        rentsetTesla_Model_choose);
                                    setTesla_Model_pickUp(
                                        rentsetTesla_Model_pickUp);
                                    setTesla_Model_dropOff(
                                        rentsetTesla_Model_dropOff);
                                    setTesla_Model_pickUp_datetime(
                                        rentsetTesla_Model_pickUp_datetime);
                                    setTesla_Model_dropOff_datetime(
                                        rentsetTesla_Model_dropOff_datetime);
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Car_Rent_Order_Summary(),
                                      ),
                                    );
                                  }
                                },
                                height: 60,
                                minWidth: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      "Continue",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Word Sans',
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  Future<String?> openDialogPickUpLocation() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Enter Your Pick Up'),
            content: TextField(
              autofocus: true,
              decoration:
                  InputDecoration(hintText: 'Enter Your Pick Up Location'),
              controller: pickUpLocationController,
              onSubmitted: (_) => submitpickUpLocation(),
            ),
            actions: [
              TextButton(onPressed: submitpickUpLocation, child: Text('Submit'))
            ],
          ));

  Future<String?> openDialogDropOffLocation() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Drop Off'),
            content: TextField(
              autofocus: true,
              decoration:
                  InputDecoration(hintText: 'Enter Your Drop Off Location'),
              controller: dropOffLocationController,
              onSubmitted: (_) => submitdropOffLocation(),
            ),
            actions: [
              TextButton(
                  onPressed: submitdropOffLocation, child: Text('Submit'))
            ],
          ));

  void submitpickUpLocation() {
    Navigator.of(context).pop(pickUpLocationController.text);
    pickUpLocationController.clear();
  }

  void submitdropOffLocation() {
    Navigator.of(context).pop(dropOffLocationController.text);
    dropOffLocationController.clear();
  }

  Future pickDateTimePickUp(BuildContext context) async {
    final date = await pickDatePickUp(context);
    if (date == null) return;

    final time = await pickTimePickUp(context);
    if (time == null) return;

    setState(() {
      dateTimepickUp = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  Future pickDateTimeDropOff(BuildContext context) async {
    final date = await pickDatedDropOff(context);
    if (date == null) return;

    final time = await pickTimeDropOff(context);
    if (time == null) return;

    setState(() {
      dateTimedropOff = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
    });
  }

  Future<DateTime?> pickDatePickUp(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: dateTimepickUp ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return null;

    return newDate;
  }

  Future<TimeOfDay?> pickTimePickUp(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: dateTimepickUp != null
          ? TimeOfDay(
              hour: dateTimepickUp!.hour, minute: dateTimepickUp!.minute)
          : initialTime,
    );

    if (newTime == null) return null;

    return newTime;
  }

  Future<DateTime?> pickDatedDropOff(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: dateTimedropOff ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return null;

    return newDate;
  }

  Future<TimeOfDay?> pickTimeDropOff(BuildContext context) async {
    final initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime = await showTimePicker(
      context: context,
      initialTime: dateTimedropOff != null
          ? TimeOfDay(
              hour: dateTimedropOff!.hour, minute: dateTimedropOff!.minute)
          : initialTime,
    );

    if (newTime == null) return null;

    return newTime;
  }

  void getTesla_Model() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Tesla_Model = pref.getString('rentsetTesla_Model')!;
    setState(() {});
  }

  Future<void> setTesla_Model_choose(orderTesla_Model_choose) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('rentsetTesla_Model_choose', rentsetTesla_Model_choose);
  }

  Future<void> setTesla_Model_pickUp(orderTesla_Model_pickUp) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('rentsetTesla_Model_pickUp', rentsetTesla_Model_pickUp);
  }

  Future<void> setTesla_Model_dropOff(orderTesla_Model_dropOff) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('rentsetTesla_Model_dropOff', rentsetTesla_Model_dropOff);
  }

  Future<void> setTesla_Model_pickUp_datetime(
      orderTesla_Model_pickUp_datetime) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('rentsetTesla_Model_pickUp_datetime',
        rentsetTesla_Model_pickUp_datetime);
  }

  Future<void> setTesla_Model_dropOff_datetime(
      orderTesla_Model_dropOff_datetime) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('rentsetTesla_Model_dropOff_datetime',
        rentsetTesla_Model_dropOff_datetime);
  }
}
