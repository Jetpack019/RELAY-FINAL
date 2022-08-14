import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'electrical_vehicles/testla/tesla_models.dart';

class CurrentRenting extends StatefulWidget {
  CurrentRenting({Key? key}) : super(key: key);

  @override
  State<CurrentRenting> createState() => _CurrentRentingState();
}

class _CurrentRentingState extends State<CurrentRenting> {
  var tesla_null_2 = "";
  var tesla_model = "";

  String tesla_model_x = "MWA 143";
  String tesla_model_s = "IMY 143";
  String tesla_model_3 = "ILY 143";

  String? Tesla_Model_choose;

  String? Tesla_Model_pickUp;

  String? Tesla_Model_dropOff;

  String? Tesla_Model_pickUp_datetime;

  String? Tesla_Model_dropOff_datetime;

  int? Tesla_Model_total;

  int? Tesla_Model_cost;

  int? Tesla_Model_add;

  int? Tesla_Model_other;

  int tesla_model_x_price = allcarsTesla.elementAt(0).rent_price;
  int tesla_model_s_price = allcarsTesla.elementAt(1).rent_price;
  int tesla_model_3_price = allcarsTesla.elementAt(2).rent_price;

  int tesla_model_x_add = allcarsTesla.elementAt(0).add_per_DAY;
  int tesla_model_s_add = allcarsTesla.elementAt(1).add_per_DAY;
  int tesla_model_3_add = allcarsTesla.elementAt(2).add_per_DAY;

  int tesla_model_x_other = allcarsTesla.elementAt(0).other_cost;
  int tesla_model_s_other = allcarsTesla.elementAt(1).other_cost;
  int tesla_model_3_other = allcarsTesla.elementAt(2).other_cost;

  int tesla_model_x_total = allcarsTesla.elementAt(0).rent_price +
      allcarsTesla.elementAt(0).add_per_DAY +
      allcarsTesla.elementAt(0).other_cost;
  int tesla_model_s_total = allcarsTesla.elementAt(1).rent_price +
      allcarsTesla.elementAt(1).add_per_DAY +
      allcarsTesla.elementAt(1).other_cost;
  int tesla_model_3_total = allcarsTesla.elementAt(2).rent_price +
      allcarsTesla.elementAt(2).add_per_DAY +
      allcarsTesla.elementAt(2).other_cost;

  int rentcar_payment = 0;
  int addperday_car_payment = 0;
  int othercost_payment = 0;

  int total_cost_Rent = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTesla_Model_choose();
    getTesla_Model_pickUp();
    getTesla_Model_dropOff();
    getTesla_Model_pickUp_datetime();
    getTesla_Model_dropOff();
    getTesla_Model_dropOff_datetime();
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
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 80,
                ),
                Center(
                  child: Text(
                    'Currently Renting',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Word Sans',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 20),
          tesla_null_2 == ""
              ? Text(
                  "No Image",
                )
              : Tesla_Model_choose == "Model X"
                  ? Image.asset(
                      "assets/Cars/Tesla/Model-X.png",
                      width: MediaQuery.of(context).size.width,
                    )
                  : Tesla_Model_choose == "Model S"
                      ? Image.asset(
                          "assets/Cars/Tesla/Model-S.png",
                          width: MediaQuery.of(context).size.width,
                        )
                      : Tesla_Model_choose == "Model 3"
                          ? Image.asset(
                              "assets/Cars/Tesla/Model-3-.png",
                              width: MediaQuery.of(context).size.width,
                            )
                          : Text(
                              "No Image",
                            ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: SizedBox(
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
                      Tesla_Model_choose == "Model X"
                          ? tesla_model = tesla_model_x
                          : Tesla_Model_choose == "Model S"
                              ? tesla_model = tesla_model_s
                              : Tesla_Model_choose == "Model 3"
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
              tesla_null_2 == ""
                  ? tesla_null_2 = "Choose a car Model"
                  : tesla_null_2 = Tesla_Model_choose!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 10),
                        Text(
                          Tesla_Model_pickUp == null
                              ? " "
                              : "$Tesla_Model_pickUp",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 10),
                      Text(
                        Tesla_Model_dropOff == null
                            ? " "
                            : "$Tesla_Model_dropOff",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.perm_contact_calendar),
                        SizedBox(width: 10),
                        Text(
                          Tesla_Model_pickUp_datetime == null
                              ? " "
                              : "$Tesla_Model_pickUp_datetime",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.perm_contact_calendar),
                      SizedBox(width: 10),
                      Text(
                        Tesla_Model_dropOff_datetime == null
                            ? " "
                            : "$Tesla_Model_dropOff_datetime",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Material(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tesla Model X",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                          Tesla_Model_choose == "Model X"
                              ? Text(
                                  "P $tesla_model_x_price",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              : Tesla_Model_choose == "Model S"
                                  ? Text(
                                      "P $tesla_model_s_price",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Tesla_Model_choose == "Model 3"
                                      ? Text(
                                          "P $tesla_model_3_price",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(
                                          "P $rentcar_payment",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add per day",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                          Tesla_Model_choose == "Model X"
                              ? Text(
                                  "P $tesla_model_x_add",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              : Tesla_Model_choose == "Model S"
                                  ? Text(
                                      "P $tesla_model_s_add",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Tesla_Model_choose == "Model 3"
                                      ? Text(
                                          "P $tesla_model_3_add",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(
                                          "P $addperday_car_payment",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Other cost",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                          Tesla_Model_choose == "Model X"
                              ? Text(
                                  "P $tesla_model_x_other",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              : Tesla_Model_choose == "Model S"
                                  ? Text(
                                      "P $tesla_model_s_other",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Tesla_Model_choose == "Model 3"
                                      ? Text(
                                          "P $tesla_model_3_other",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(
                                          "P $othercost_payment.",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.normal),
                          ),
                          Tesla_Model_choose == "Model X"
                              ? Text(
                                  "P $tesla_model_x_total",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              : Tesla_Model_choose == "Model S"
                                  ? Text(
                                      "P $tesla_model_s_total",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Tesla_Model_choose == "Model 3"
                                      ? Text(
                                          "P $tesla_model_3_total",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      : Text(
                                          "P $total_cost_Rent.",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          )),
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => CurrentRenting()));
                    },
                    height: 30,
                    minWidth: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Contact Support",
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
                    height: 30,
                    minWidth: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Cancel Booking",
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
      )),
    );
  }

  void getTesla_Model_choose() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Tesla_Model_choose = pref.getString('rentsetTesla_Model_choose')!;
    setState(() {});
  }

  void getTesla_Model_pickUp() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Tesla_Model_pickUp = pref.getString('rentsetTesla_Model_pickUp')!;
    setState(() {});
  }

  void getTesla_Model_dropOff() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Tesla_Model_dropOff = pref.getString('rentsetTesla_Model_dropOff')!;
    setState(() {});
  }

  void getTesla_Model_pickUp_datetime() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Tesla_Model_pickUp_datetime =
        pref.getString('rentsetTesla_Model_pickUp_datetime')!;
    setState(() {});
  }

  void getTesla_Model_dropOff_datetime() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    Tesla_Model_dropOff_datetime =
        pref.getString('rentsetTesla_Model_dropOff_datetime')!;
    setState(() {});
  }
}
