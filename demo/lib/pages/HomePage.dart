import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _imageUrlList = [
    'https://img4.mukewang.com/szimg/5d2e7ada09946f6f12000676.jpg',
    'https://img1.mukewang.com/5d3fe66408c059fd06000338-240-135.jpg',
    'https://img2.mukewang.com/szimg/5c8f014a0904310b02700148.jpg',
    'https://img1.mukewang.com/szimg/5d36a6000837a91d06000338.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '首页',
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0, // 去掉阴影
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Swiper(
                itemCount: _imageUrlList.length,  // 轮播个数
                autoplay: true, // 自动轮播
                // 设置轮播的图片
                itemBuilder: (context, index) {
                  return Image.network(
                    _imageUrlList[index],
                    fit: BoxFit.fill, // 设置图片填充模式
                  );
                },
                pagination: SwiperPagination(), // 页码
              ),
            )
          ],
        ),
      ),
    );
  }
}