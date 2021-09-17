import 'package:english_today/values/app_fonts.dart';
import 'package:english_today/values/app_style.dart';
import 'package:english_today/values/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Ứng dụng học tiếng anh mỗi ngày',
                    style: TextStyle(
                      color:  Colors.red,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                ),
                Text(
                  'Tánh Linh, Bình Thuận',
                  style: TextStyle(
                    color: Colors.grey[500]
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'gọi'),
        _buildButtonColumn(color, Icons.near_me, 'tuyến đường'),
        _buildButtonColumn(color, Icons.share, 'chia sẻ'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
       'Là sinh viên năm cuối chuyên ngành Lập trình máy tính, em đã được học khá nhiều kiến thức về các quá trình xây dựng và thực '
       'hiện triển khai các chức năng, các công cụ với vai trò tương tự như những những chuyên viên lập trình ngoài thực tế. Đó là lí do bọn em đã nghiên cứu và phát triển ứng dụng này ',
        
      ),
    );

    return MaterialApp(
      title: 'English today',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('English today'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/ip2.PNG',
              width: 300,
              height: 440,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}