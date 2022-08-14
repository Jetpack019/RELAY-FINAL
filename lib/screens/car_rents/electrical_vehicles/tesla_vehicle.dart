import 'package:flutter/material.dart';
import 'package:relay_finalize/screens/car_rents/electrical_vehicles/testla/tesla_cars.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../home/home.dart';

class Tesla_Vehicles extends StatefulWidget {
  Tesla_Vehicles({Key? key}) : super(key: key);

  @override
  State<Tesla_Vehicles> createState() => _Tesla_VehiclesState();
}

class _Tesla_VehiclesState extends State<Tesla_Vehicles> {
  String rentsetTesla_Model = "";

  String model_x = "Model X";
  String model_3 = "Model 3";
  String model_s = "Model S";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        toolbarHeight: 180,
        flexibleSpace: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                color: Colors.black,
                icon: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                child: Text(
                  'Car Rental',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Word Sans',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Image.asset(
                        "assets/Orders/Jollibee/Jolibee_Screen/Favorites_icon_heart.png",
                        height: 30,
                        width: 30,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      body: ListView(children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListTile(
                  onTap: () {
                    rentsetTesla_Model = model_x;
                    setTesla_Model(rentsetTesla_Model);

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Cars_Tesla()),
                    );
                  },
                  title: Expanded(
                    child: Text(
                      'Model X',
                      style: TextStyle(),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  onTap: () {
                    rentsetTesla_Model = model_3;
                    setTesla_Model(rentsetTesla_Model);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Cars_Tesla()),
                    );
                  },
                  title: Expanded(
                    child: Text(
                      'Model 3',
                      style: TextStyle(),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  onTap: () {
                    rentsetTesla_Model = model_s;
                    setTesla_Model(rentsetTesla_Model);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Cars_Tesla()),
                    );
                  },
                  title: Expanded(
                    child: Text(
                      'Model S',
                      style: TextStyle(),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF303030),
                    size: 20,
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  Future<void> setTesla_Model(orderGetTotal) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('rentsetTesla_Model', rentsetTesla_Model);
  }
}
