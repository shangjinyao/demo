import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_boost/flutter_boost.dart';

class AboutUsWidget extends StatefulWidget {
  final Map params;

  AboutUsWidget(this.params);

  @override
  State<StatefulWidget> createState() {
    return new _AboutUsWidgetState(params);
  }
}

class _AboutUsWidgetState extends State<AboutUsWidget> {
  final Map params;

  _AboutUsWidgetState(this.params);

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(AboutUsWidget oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('[XDEBUG] - FirstFirstRouteWidget is disposing~');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: Color(0xfff0f1f2),
      body: _body(params),
    );
  }
}

Widget _body(Map params) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child:
                Image.asset("assets/images/img_logo.jpg", width: 60.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15.0),
              child: Text(
                params['appName'] + " " + params['versionName'],
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
            )
          ],
        ),
      ),

      ///下面控件位于Column布局底部
      InkWell(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "隐私协议",
                        style: TextStyle(fontSize: 12.0, color: Colors.black87),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "服务条款",
                        style: TextStyle(fontSize: 12.0, color: Colors.black87),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "© 2013-2020 www.huixiaoer.com. All Rights Reserved",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  )
                ],
              ),
            ),
          )),
    ],
  );
}

Widget _appBar() {
  return PreferredSize(
    child: AppBar(
      centerTitle: true,
      title: Text(
        '关于会小二',
        style: TextStyle(
            fontSize: 18.0,
            color: Color(0xff000000),
            fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        icon: ImageIcon(
            AssetImage("assets/images/img_index_top_icon_fanhui.png")),
        onPressed: () {
          FlutterBoost.singleton.closeCurrent();
        },
        color: Colors.black,
        iconSize: 20,
      ),
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    preferredSize: Size.fromHeight(50),
  );
}
