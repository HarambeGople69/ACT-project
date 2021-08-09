import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myapp/utils/styles.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List images = [
    "images/g1.jpg",
    "images/g3.jpg",
    "images/g2.jpg",
    "images/g1.jpg",
    "images/g4.jpg",
    // "images/g2.jpg",
    "images/g5.jpg",
    "images/g2.jpg",
    "images/g6.jpg",
    "images/g1.jpg",
    "images/g2.jpg",
    "images/g7.jpg",
    "images/g1.jpg",
    "images/g8.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gallery",
          style: AppStyle,
        ),
        centerTitle: true,
      ),
      body: StaggeredGridView.countBuilder(
        itemCount: images.length,
        // shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OpenFullImage(
                  image: images[index],
                );
              }));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(10),
          vertical: ScreenUtil().setSp(10),
        ),
        staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        mainAxisSpacing: ScreenUtil().setSp(5),
        crossAxisSpacing: ScreenUtil().setSp(5),
      ),
    );
  }
}

class OpenFullImage extends StatelessWidget {
  final String image;
  const OpenFullImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(image),
      ),
      body: Image.asset(
        image,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
