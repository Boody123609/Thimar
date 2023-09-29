import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/svg.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  var data;
  bool isLoding=true;
  @override
  void initState() {
    
    super.initState();
    getPrivacyData();
  }
  Future<void> getPrivacyData() async {
    final respnse =await Dio().get("https://thimar.amr.aait-d.com/api/policy");
    print(respnse.data);
    data= respnse.data["data"]["policy"];
    isLoding=false;

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
          "سياسة الخصوصية",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff4C8613)),
        ),
        centerTitle: true,

      ),
      body:  ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            child: Image.asset("assets/images/glo.png",width: 200,height: 200,),
          ),
          isLoding?Center(child: CircularProgressIndicator()):
          Html(data: data)

        ],
      ),
    );
  }
}
