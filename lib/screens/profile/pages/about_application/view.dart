import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/design/castama/app_bar_custam.dart';

class AboutAppPage extends StatefulWidget {
  const AboutAppPage({Key? key}) : super(key: key);

  @override
  State<AboutAppPage> createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  var data;
  bool isLoging= true;

  @override
  void initState() {

    super.initState();
    getAboutDats();
  }

  Future<void> getAboutDats()async{
    final response=await Dio().get("https://thimar.amr.aait-d.com/api/about");
    print(response.data);
    data=response.data["data"]["about"];
    isLoging=false;
    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        leading: Container(
          height: 22,
          width: 40,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              color: Color(0xff4C8613).withOpacity(.13),
              borderRadius: BorderRadius.circular(16)),
          child: SvgPicture.asset("assets/images/arrow.svg",fit: BoxFit.scaleDown,),
        ),
        title: Text(
          "عن التطبيق",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff4C8613)),
        ),
        centerTitle: true,

      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            child: Image.asset("assets/images/glo.png",width: 200,height: 200,),
          ),
          isLoging?Center(child: CircularProgressIndicator()):
          Html(data: data)

        ],
      ),
    );
  }
}
