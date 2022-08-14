import 'package:flutter/material.dart';

class CustomDialogImagePick extends StatefulWidget {
  Function onCameraBTNPressed, onGalleryBTNPressed;
  CustomDialogImagePick(
      {required this.onCameraBTNPressed, required this.onGalleryBTNPressed});

  @override
  State<CustomDialogImagePick> createState() => _CustomDialogImagePickState();
}

class _CustomDialogImagePickState extends State<CustomDialogImagePick> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, top: 65, right: 20, bottom: 20),
          margin: EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Choose Profile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please select any option',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        widget.onCameraBTNPressed();
                      },
                      child: Text(
                        'CAMERA',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        widget.onGalleryBTNPressed();
                      },
                      child: Text(
                        'GALLERY',
                        style: TextStyle(fontSize: 18, color: Colors.amber),
                      )),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(45)),
                child: Icon(
                  Icons.person,
                  color: Colors.amber,
                  size: 100,
                )),
          ),
        ),
      ],
    );
  }
}
