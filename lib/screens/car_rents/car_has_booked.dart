import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/car_rents/car_rent_current_rent.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CarBooked extends StatefulWidget {
  CarBooked({Key? key}) : super(key: key);

  @override
  State<CarBooked> createState() => _CarBookedState();
}

class _CarBookedState extends State<CarBooked> {
  String? Tesla_Model_choose;
  String? Tesla_Model_pickUp;
  String? Tesla_Model_dropOff;
  String? Tesla_Model_pickUp_datetime;
  String? Tesla_Model_dropOff_datetime;

  int? Tesla_Model_total;
  int? Tesla_Model_cost;
  int? Tesla_Model_add;
  int? Tesla_Model_other;

  String rentsetTesla_Model_choose_2 = "";
  String rentsetTesla_Model_pickUp_2 = "";

  String rentsetTesla_Model_dropOff_2 = "";

  String rentsetTesla_Model_pickUp_datetime_2 = "";

  String rentsetTesla_Model_dropOff_datetime_2 = "";

  int? rentsetTesla_Model_cost_2 = 0;
  int? rentsetTesla_Model_add_2 = 0;
  int? rentsetTesla_Model_other_2 = 0;
  int? rentsetTesla_Model_total_2 = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getTesla_Model_choose();
    // getTesla_Model_pickUp();
    // getTesla_Model_dropOff();
    // getTesla_Model_pickUp_datetime();
    // getTesla_Model_dropOff_datetime();
    // getTesla_Model_total();
    // getTesla_Model_cost();
    // getTesla_Model_add();
    // getTesla_Model_other();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 190, bottom: 100),
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Your Car has been Booked",
                  style: TextStyle(
                    fontFamily: 'Word Sans',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
                SizedBox(height: 30),
                Image.asset("assets/car_booked/check.png",
                    height: 200, width: MediaQuery.of(context).size.width),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SizedBox(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => CurrentRenting()));
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
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: SizedBox(
                        child: MaterialButton(
                          onPressed: () {},
                          height: 60,
                          minWidth: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "Cancel",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Word Sans',
                                  color: Colors.black,
                                  fontSize: 15,
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
    );
  }

  // void getTesla_Model_choose() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_choose = pref.getString('rentsetTesla_Model_choose')!;
  //   setState(() {});
  // }

  // void getTesla_Model_pickUp() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_pickUp = pref.getString('rentsetTesla_Model_pickUp')!;
  //   setState(() {});
  // }

  // void getTesla_Model_dropOff() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_dropOff = pref.getString('rentsetTesla_Model_dropOff')!;
  //   setState(() {});
  // }

  // void getTesla_Model_pickUp_datetime() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_pickUp_datetime =
  //       pref.getString('rentsetTesla_Model_pickUp_datetime')!;
  //   setState(() {});
  // }

  // void getTesla_Model_dropOff_datetime() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_dropOff_datetime =
  //       pref.getString('rentsetTesla_Model_dropOff_datetime')!;
  //   setState(() {});
  // }

  // void getTesla_Model_total() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_total = pref.getInt('rentsetTesla_Model_total');
  //   setState(() {});
  // }

  // void getTesla_Model_cost() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_cost = pref.getInt('rentsetTesla_Model_cost');
  //   setState(() {});
  // }

  // void getTesla_Model_add() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_add = pref.getInt('rentsetTesla_Model_add');
  //   setState(() {});
  // }

  // void getTesla_Model_other() async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   Tesla_Model_other = pref.getInt('rentsetTesla_Model_other');
  //   setState(() {});
  // }

  // // new value
  // Future<void> setTesla_Model_choose_2(orderTesla_Model_choose) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setString('rentsetTesla_Model_choose_2', rentsetTesla_Model_choose_2);
  // }

  // Future<void> setTesla_Model_pickUp_2(orderTesla_Model_choose) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setString('rentsetTesla_Model_pickUp_2', rentsetTesla_Model_pickUp_2);
  // }

  // Future<void> setTesla_Model_dropOff_2(orderTesla_Model_dropOff) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setString(
  //       'rentsetTesla_Model_dropOff_2', rentsetTesla_Model_dropOff_2);
  // }

  // Future<void> setTesla_Model_pickUp_datetime_2(orderTesla_Model_pickUp) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setString('rentsetTesla_Model_pickUp_datetime_2',
  //       rentsetTesla_Model_pickUp_datetime_2);
  // }

  // Future<void> setTesla_Model_dropOff_datetime_2(
  //     orderTesla_Model_pickUp) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setString('rentsetTesla_Model_dropOff_datetime_2',
  //       rentsetTesla_Model_dropOff_datetime_2);
  // }

  // Future<void> setTesla_Model_cost_2(orderGetTotal) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setInt('rentsetTesla_Model_cost_2', rentsetTesla_Model_cost_2!);
  // }

  // Future<void> setTesla_Model_add_2(orderGetTotal) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setInt('rentsetTesla_Model_add_2', rentsetTesla_Model_add_2!);
  // }

  // Future<void> setTesla_Model_other_2(orderGetTotal) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setInt('rentsetTesla_Model_other_2', rentsetTesla_Model_other_2!);
  // }

  // Future<void> setTesla_Model_total_2(orderGetTotal) async {
  //   final SharedPreferences pref = await SharedPreferences.getInstance();
  //   pref.setInt('rentsetTesla_Model_total_2', rentsetTesla_Model_total_2!);
  // }
}
