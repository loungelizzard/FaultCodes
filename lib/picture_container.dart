import 'package:flutter/material.dart';

class PictureContainer extends StatelessWidget {
  final String _image;

  PictureContainer(this._image);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(this._image);
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
