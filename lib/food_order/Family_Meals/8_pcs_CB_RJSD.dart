import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../data/orders/jollibee/8pcs_CB.dart';
import '../../model/jollibee/extras.dart';
import '../../screens/delivery/place_order.dart';
import '../../shared_preferences/shared_preferences.dart';

class CB_RJSD_8p extends StatefulWidget {
  @override
  State<CB_RJSD_8p> createState() => _CB_RJSD_8pState();
}

class _CB_RJSD_8pState extends State<CB_RJSD_8p> {
  var pcs8_CB_RJSD =
      '8 pc Chickenjoy Bucket w/ Rice,\nJolly Spaghetti, and Drinks';
  int selectedRadioTile1 = 0;
  int selectedRadioTile2 = 0;

  var _addextras = Set<extras>();

  bool addtoy = false;
  int my_changed_value = 0;

  var drinks = 0;
  var regular_iced_tea = 0;
  var go_large_iced_tea = 132;
  var regular_coke = 0;
  var go_large_coke = 112;
  var go_royal_float = 132;
  var go_coke_float = 132;
  var go_pineapple_juice = 132;
  var go_large_sprite = 112;
  var regular_sprite = 0;
  var regular_royal = 0;
  var go_large_royal = 112;
  var go_large_coke_zero = 112;
  var regular_coke_zero = 0;

  var chicken_flavor = 0;
  var chicken_flavor_half_orig_spicy = 16;
  var chicken_flavor_original = 0;
  var chicken_flavor_spicy = 32;

  var chicken_flavor_name = 'Chicken Flavor';

  var chicken_flavor_name_original = 'Original';
  var chicken_flavor_name_half_original_spicy = 'Half Original, Half Spicy';
  var chicken_flavor_name_spicy = 'Spicy';

  var drinks_name = 'Choice of Drinks';
  var drinks_name_regular_iced_tea = 'Regular Iced Tea';
  var drinks_name_go_royal_float = 'Go Royal Float';
  var drinks_name_go_coke_float = 'Go Coke Float';
  var drinks_name_go_pineapple_juice = 'Go Pineapple Juice';
  var drinks_name_go_large_sprite = 'Go Large Sprite';
  var drinks_name_regular_sprite = 'Regular Sprite';
  var drinks_name_go_large_royal = 'Go Large Royal';
  var drinks_name_regular_royal = 'Regular Royal';
  var drinks_name_go_large_coke_zero = 'Go Large Coke Zero';
  var drinks_name_regular_coke_zero = 'Regular Coke Zero';
  var drinks_name_go_large_coke = 'Go Large Coke';
  var drinks_name_regular_coke = 'Regular Coke';
  var drinks_name_go_large_iced_tea = 'Go Large Iced Tea';

  var name_order = '8pc w/ Rice, Jolly Spaghetti  Drinks';
  var total = 902;

  var extra = 0;
  var extra_extra_rice = 39;
  var extra_extra_chicken_joy_gravy = 28;

  var extra_name = 'Choose Extras';
  var extra_name_extra_rice = 'Extra Rice';
  var extra_name_chicken_joy_gravy = 'Extra Chickenjoy Gravy';

  var addtoy_value = 0;
  var addtoy_value_toy = 39;

  var addtoy_value_name = 'Choose your Toy';
  var addtoy_value_name_toy = 'Barney Toy Set';

  int _count = 1;

  int total_adds = 902;

  int extra_1 = 0;

  String extra_name_1 = 'Extra Rice';

  int extra_2 = 0;

  String extra_name_2 = 'Extra Chicken Joy Gravy';

  void _incrementCount() {
    setState(() {
      _count++;
    });
    total_value_add();
  }

  void _decrementCount() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
    setState(() =>
        total_adds = total + drinks + chicken_flavor + extra + addtoy_value);

    setState(() {
      total_adds = total_adds * _count;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.amber,
              child: Stack(children: [
                Center(
                  child: Image.asset(
                    'assets/Orders/Jollibee/Family_Meal/CBRJSD.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 220,
                  margin: EdgeInsets.only(top: 170),
                  decoration: BoxDecoration(color: Colors.white),
                  width: double.maxFinite,
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                              "8 pc Chickenjoy Bucket w/ Rice,\n Jolly Spaghetti, and Drinks",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32, right: 20),
                          child: Column(
                            children: [
                              Text(
                                total.toString(),
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text("Base Price"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Chicken Flavor"),
                    ),
                    Expanded(child: Text("Pick 1")),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      RadioListTile<int>(
                          title: Text(chicken_flavor_name_original),
                          secondary: Text(chicken_flavor_original.toString()),
                          value: 1,
                          groupValue: selectedRadioTile1,
                          onChanged: (value) {
                            setState(
                              () => selectedRadioTile1 = 1,
                            );
                            setState(
                              () => selectedRadioTile1 == 1
                                  ? chicken_flavor = chicken_flavor_original
                                  : chicken_flavor,
                            );
                            setState(
                              () => selectedRadioTile1 == 1
                                  ? chicken_flavor_name =
                                      chicken_flavor_name_original
                                  : chicken_flavor_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(chicken_flavor_name_spicy),
                          secondary: Text(chicken_flavor_spicy.toString()),
                          value: 2,
                          groupValue: selectedRadioTile1,
                          onChanged: (value) {
                            setState(
                              () => selectedRadioTile1 = 2,
                            );
                            setState(
                              () => selectedRadioTile1 == 2
                                  ? chicken_flavor = chicken_flavor_spicy
                                  : chicken_flavor,
                            );
                            setState(
                              () => selectedRadioTile1 == 2
                                  ? chicken_flavor_name =
                                      chicken_flavor_name_spicy
                                  : chicken_flavor_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(chicken_flavor_name_half_original_spicy),
                          secondary:
                              Text(chicken_flavor_half_orig_spicy.toString()),
                          value: 3,
                          groupValue: selectedRadioTile1,
                          onChanged: (value) {
                            setState(
                              () => selectedRadioTile1 = 3,
                            );
                            setState(
                              () => selectedRadioTile1 == 3
                                  ? chicken_flavor =
                                      chicken_flavor_half_orig_spicy
                                  : chicken_flavor,
                            );
                            setState(
                              () => selectedRadioTile1 == 3
                                  ? chicken_flavor_name =
                                      chicken_flavor_name_half_original_spicy
                                  : chicken_flavor_name,
                            );
                            total_value_add();
                          }),
                    ],
                  ),
                )
              ]),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Choice of Drink"),
                    ),
                    Expanded(child: Text("Pick 1")),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      RadioListTile<int>(
                          title: Text(drinks_name_regular_iced_tea),
                          secondary: Text(regular_iced_tea.toString()),
                          value: 1,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 1);
                            setState(
                              () => selectedRadioTile2 == 1
                                  ? drinks = regular_iced_tea
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 1
                                  ? drinks_name = drinks_name_regular_iced_tea
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_large_iced_tea),
                          secondary: Text(go_large_iced_tea.toString()),
                          value: 2,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 2);
                            setState(
                              () => selectedRadioTile2 == 2
                                  ? drinks = go_large_iced_tea
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 2
                                  ? drinks_name = drinks_name_go_large_iced_tea
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_regular_coke),
                          secondary: Text(regular_coke.toString()),
                          value: 3,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 3);
                            setState(
                              () => selectedRadioTile2 == 3
                                  ? drinks = regular_coke
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 3
                                  ? drinks_name = drinks_name_regular_coke
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_large_coke),
                          secondary: Text(go_large_coke.toString()),
                          value: 4,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 4);
                            setState(
                              () => selectedRadioTile2 == 4
                                  ? drinks = go_large_coke
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 4
                                  ? drinks_name = drinks_name_go_large_coke
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_regular_coke_zero),
                          secondary: Text(regular_coke_zero.toString()),
                          value: 5,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 5);
                            setState(
                              () => selectedRadioTile2 == 5
                                  ? drinks = regular_coke_zero
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 5
                                  ? drinks_name = drinks_name_regular_coke_zero
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_large_coke_zero),
                          secondary: Text(go_large_coke_zero.toString()),
                          value: 6,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 6);
                            setState(
                              () => selectedRadioTile2 == 6
                                  ? drinks = go_large_coke_zero
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 6
                                  ? drinks_name = drinks_name_go_large_coke_zero
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_regular_royal),
                          secondary: Text(regular_royal.toString()),
                          value: 7,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 7);
                            setState(
                              () => selectedRadioTile2 == 7
                                  ? drinks = regular_royal
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 7
                                  ? drinks_name = drinks_name_regular_royal
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_large_royal),
                          secondary: Text(go_large_royal.toString()),
                          value: 8,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 8);
                            setState(
                              () => selectedRadioTile2 == 8
                                  ? drinks = go_large_royal
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 8
                                  ? drinks_name = drinks_name_go_large_royal
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_regular_sprite),
                          secondary: Text(regular_sprite.toString()),
                          value: 9,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 9);
                            setState(
                              () => selectedRadioTile2 == 9
                                  ? drinks = regular_sprite
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 9
                                  ? drinks_name = drinks_name_regular_sprite
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_large_sprite),
                          secondary: Text(go_large_sprite.toString()),
                          value: 10,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 10);
                            setState(
                              () => selectedRadioTile2 == 10
                                  ? drinks = go_large_sprite
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 1
                                  ? drinks_name = drinks_name_go_large_sprite
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_pineapple_juice),
                          secondary: Text(go_pineapple_juice.toString()),
                          value: 11,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 11);
                            setState(
                              () => selectedRadioTile2 == 11
                                  ? drinks = go_pineapple_juice
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 11
                                  ? drinks_name = drinks_name_go_pineapple_juice
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_coke_float),
                          secondary: Text(go_coke_float.toString()),
                          value: 12,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 12);
                            setState(
                              () => selectedRadioTile2 == 12
                                  ? drinks = go_coke_float
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 12
                                  ? drinks_name = drinks_name_go_coke_float
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                      RadioListTile<int>(
                          title: Text(drinks_name_go_royal_float),
                          secondary: Text(go_royal_float.toString()),
                          value: 13,
                          groupValue: selectedRadioTile2,
                          onChanged: (_) {
                            setState(() => selectedRadioTile2 = 13);
                            setState(
                              () => selectedRadioTile2 == 13
                                  ? drinks = go_royal_float
                                  : drinks,
                            );
                            setState(
                              () => selectedRadioTile2 == 13
                                  ? drinks_name = drinks_name_go_royal_float
                                  : drinks_name,
                            );
                            setState(
                              () => drinks_name == null
                                  ? drinks_name = ' '
                                  : drinks_name,
                            );
                            total_value_add();
                          }),
                    ],
                  ),
                )
              ]),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Extras "),
                    ),
                    Expanded(child: Text("Optional Max 2")),
                  ],
                ),
                CheckboxListTile(
                    title: Row(
                      children: [
                        Expanded(
                          child: Text("Extra Rice"),
                        ),
                        Text('Php 39')
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _addextras.contains(extras.ExtraRice),
                    onChanged: (_) {
                      setState(() {
                        _addextras.contains(extras.ExtraRice)
                            ? _addextras.remove(extras.ExtraRice)
                            : _addextras.add(extras.ExtraRice);
                      });
                      setState(() => _addextras.contains(extras.ExtraRice)
                          ? extra_1 = extra_extra_rice
                          : total_adds);
                      setState(() =>
                          _addextras.contains(extras.ExtraRice) == false
                              ? extra_1 = 0
                              : extra_1);
                      setState(() => _addextras.contains(extras.ExtraRice)
                          ? extra_name_1 = extra_name_extra_rice
                          : extra_name_1);
                      setState(() =>
                          _addextras.contains(extras.ExtraRice) == false
                              ? extra_name_1 = ' '
                              : extra_name_1);
                      total_value_add();
                    }),
                CheckboxListTile(
                    title: Row(
                      children: [
                        Expanded(
                          child: Text("Extra Chickenjoy Gravy"),
                        ),
                        Text('Php 28')
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _addextras.contains(extras.Extra_Chickenjoy_Gravy),
                    onChanged: (_) {
                      setState(() {
                        _addextras.contains(extras.Extra_Chickenjoy_Gravy)
                            ? _addextras.remove(extras.Extra_Chickenjoy_Gravy)
                            : _addextras.add(extras.Extra_Chickenjoy_Gravy);
                      });
                      setState(() =>
                          _addextras.contains(extras.Extra_Chickenjoy_Gravy)
                              ? extra_2 = extra_extra_chicken_joy_gravy
                              : total_adds);
                      setState(() =>
                          _addextras.contains(extras.Extra_Chickenjoy_Gravy) ==
                                  false
                              ? extra_2 = 0
                              : extra_2);
                      setState(() =>
                          _addextras.contains(extras.Extra_Chickenjoy_Gravy)
                              ? extra_name_2 = extra_name_chicken_joy_gravy
                              : extra_name_2);
                      setState(() =>
                          _addextras.contains(extras.Extra_Chickenjoy_Gravy) ==
                                  false
                              ? extra_name_2 = ''
                              : extra_name_2);
                      total_value_add();
                    }),
              ]),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text("Add-on-Toy"),
                    ),
                    Expanded(child: Text("Pick 1")),
                  ],
                ),
                CheckboxListTile(
                    value: addtoy,
                    title: Row(
                      children: [
                        Expanded(
                          child: Text("Barney Toy Set"),
                        ),
                        Text('Php 39')
                      ],
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (value) {
                      setState(() => addtoy = value!);
                      setState(() => addtoy == value!
                          ? addtoy_value = addtoy_value_toy
                          : total_adds);
                      setState(() =>
                          addtoy == false ? addtoy_value = 0 : addtoy_value);
                      setState(() => addtoy == value!
                          ? addtoy_value_name = addtoy_value_name_toy
                          : total_adds);
                      total_value_add();
                    })
              ]),
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text("NOTE TO RESTAURANT"),
                      ),
                      Expanded(child: Text("Optional")),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                              "    Add your request (subject to restaurant's discretion))")),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.amber,
                    onPressed: () {
                      _decrementCount();
                    },
                    child: Icon(Icons.remove),
                  ),
                  Text("$_count"),
                  FloatingActionButton(
                    backgroundColor: Colors.amber,
                    onPressed: () {
                      _incrementCount();
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 10,
            ),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Text(
                    "$_count",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "$name_order",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "$total_adds",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "$chicken_flavor_name",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "$drinks_name",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "$extra_name_1",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "$extra_name_2",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 5,
            ),
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
                      onPressed: () async {
                        if (chicken_flavor_name == 'Chicken Flavor' ||
                            drinks_name == 'Choice of Drinks' ||
                            extra_name_1 == 'Extra Rice' ||
                            extra_name_2 == 'Extra Chicken Joy Gravy' ||
                            total_adds == 902) {
                          Fluttertoast.showToast(
                              msg: "Choose your order before you proceed");
                        } else {
                          setOrderName(pcs8_CB_RJSD);
                          setCountOrder(_count);
                          setFlavor(chicken_flavor_name);
                          setDrinks(drinks_name);
                          setExtras_1(extra_name_1);
                          setExtras_2(extra_name_2);
                          setGetTotal(total_adds);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PlaceOrder(),
                            ),
                          );
                        }
                      },
                      height: 80,
                      minWidth: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "  Add to Basket - ₱$total_adds",
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
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ));

  //Shared Preferences Methods
  Future<void> setOrderName(orderName) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderName', orderName);
  }

  Future<void> setCountOrder(orderCount) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('orderCount', orderCount);
  }

  Future<void> setFlavor(orderFlavor) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderFlavor', orderFlavor);
  }

  Future<void> setDrinks(orderDrinks) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderDrinks', orderDrinks);
  }

  Future<void> setExtras_1(orderExtras_1) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderExtras_1', orderExtras_1);
  }

  Future<void> setExtras_2(orderExtras_2) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('orderExtras_2', orderExtras_2);
  }

  Future<void> setGetTotal(orderGetTotal) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('orderGetTotal', orderGetTotal);
  }

  void total_value_add() {
    setState(() => total_adds =
        total + drinks + chicken_flavor + extra_1 + extra_2 + addtoy_value);
    setState(() => total < total_adds ? total = total : total);

    setState(() {
      total_adds = total_adds * _count;
    });
  }
}
