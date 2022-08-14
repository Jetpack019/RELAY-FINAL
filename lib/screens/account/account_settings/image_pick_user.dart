import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as Img;
import 'package:path_provider/path_provider.dart';
import 'package:relay_finalize/screens/account/account_settings/image_utility.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageSelection extends StatefulWidget {
  ImageSelection({Key? key}) : super(key: key);

  @override
  State<ImageSelection> createState() => _ImageSelectionState();
}

File? _imageFile;
String? _status;
bool? _imageLoading;
ImagePicker? _imagePicker;
String IMG_KEY = 'IMAGE_KEY';

class _ImageSelectionState extends State<ImageSelection> {
  @override
  void initState() {
    super.initState();
    _status = '';
    _imageLoading = false;
    _imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Image'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _imageLoading == true
                ? CircularProgressIndicator()
                : null == _imageFile
                    ? Container()
                    : Expanded(
                        child: Image.file(
                          File(_imageFile!.path),
                          filterQuality: FilterQuality.high,
                        ),
                      ),
            SizedBox(
              height: 20,
            ),
            Text(_status!),
            SizedBox(
              height: 20,
            ),
            _select(),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
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
                            "Edit",
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
    );
  }

  _select() {
    return Container(
      padding: EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.black12,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_button('gallery', ImageSource.gallery)]),
    );
  }

  _button(String text, ImageSource imageSource) {
    return TextButton(
        onPressed: () async {
          setState(() {
            _imageLoading = true;
            _imageFile = null;
          });
          File? file = await _loadImage(imageSource);
          if (null != file) {
            setState(() {
              _imageFile = file;
              _imageLoading = false;
              _status = 'Loaded';
            });
            return;
          }
          setState(() {
            _imageFile = null;
            _imageLoading = false;
            _status = 'Error';
          });
        },
        child: Text(text));
  }

  Future<File?> _loadImage(ImageSource imageSource) async {
    XFile? file = await _imagePicker?.pickImage(source: imageSource);
    File? mFile;
    if (null != file) {
      Directory tempDir = await getTemporaryDirectory();

      Map map = Map();
      map['path'] = file.path;
      map['directory'] = tempDir;
      mFile = await compute(_saveImageToDisk, map);
    }
    return mFile;
  }
}

Future<bool> saveImageToPreferences(String value) async {
  final SharedPreferences preferences = await SharedPreferences.getInstance();
  return preferences.setString(IMG_KEY, value);
}

Future<File?> _saveImageToDisk(Map map) async {
  try {
    String path = map['path'];
    Directory directory = map['directory'];
    File tempFile = File(path);
    Img.Image? image = Img.decodeImage(tempFile.readAsBytesSync());
    Img.Image mImage = Img.copyResize(image!, width: 512);
    String imgType = path.split('.').last;
    String mPath = '${directory.path.toString}/image_${DateTime.now}.$imgType';
    File dFile = File(mPath);
    if (imgType == 'jpg' || imgType == 'jpeg') {
      dFile.writeAsBytesSync(Img.encodeJpg(mImage));
    } else {
      dFile.writeAsBytesSync(Img.encodePng(mImage));
    }
    return dFile;
  } catch (e) {
    return null;
  }
}
