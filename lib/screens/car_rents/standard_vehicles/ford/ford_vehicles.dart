import 'package:flutter/material.dart';

class FordVehicles extends StatefulWidget {
  FordVehicles({Key? key}) : super(key: key);

  @override
  State<FordVehicles> createState() => _FordVehiclesState();
}

class _FordVehiclesState extends State<FordVehicles> {
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
                onPressed: () {},
                color: Colors.black,
                icon: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                child: Text(
                  'Ford Vehicles',
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
                  onTap: () {},
                  title: Expanded(
                    child: Text(
                      '',
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
                  onTap: () {},
                  title: Expanded(
                    child: Text(
                      '',
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
                  onTap: () {},
                  title: Expanded(
                    child: Text(
                      '',
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
}
