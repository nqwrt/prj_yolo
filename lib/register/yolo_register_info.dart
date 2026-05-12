import 'package:flutter/material.dart';
import '../cutom_selector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RegisterInfoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterInfoPage extends StatefulWidget {
  const RegisterInfoPage({super.key});

  @override
  State<RegisterInfoPage> createState() => _RegisterInfoPagetate();
}

class _RegisterInfoPagetate extends State<RegisterInfoPage> {

  int selected = 0; // 👈 반드시 추가

  Widget termsBox(String text) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D4150),
        elevation: 0,
        //왼쪽 이미지
        leading: Container(
            padding: const EdgeInsets.all(8.0),
            child:Image.asset(
              'assets/img/ic_navigate_before_white_24dp.png',
            )
        ),

        // 가운데 제목
        title: const Text(
          "회원 가입",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,

        // 오른쪽 이미지
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/img/ic_clear_white_24dp.png',
              width: 28,
              height: 28,
            ),
          ),
        ],
      ),

      body: Container(

        width: double.infinity,

        color: const Color(0xFFEAE3DD),
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Column(
                children: [
                  Text(
                    "회원가입을 위해",
                    style: TextStyle(fontSize:19 ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "아래의 정보를 입력해 주세요",
                    style: TextStyle(fontSize:19 ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Center(
              child: Container(
                width: 28, // 선 길이
                height: 3,  // 두께
                color: Colors.red,
              ),
            ),

            SizedBox(height: 35,),

            Text(
              "아이디",
              style: TextStyle(fontSize:15 ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 11, right: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "이용약관",
                    style: TextStyle( fontSize:15 ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CustomRadioIcon(
                        selected: selected == 1,
                        onTap: () {
                          setState(() {
                            if (selected == 1) {
                              selected = 0; // 해제
                            } else {
                              selected = 1; // 선택
                            }
                          });
                        },
                      ),
                      SizedBox(width: 8),
                      Text("사용자 이용약관에 동의 합니다.",style: TextStyle(fontSize: 13),),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        color: Colors.redAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(
            'assets/img/ic_input_white_24dp.png',
            width: 24,
            height: 24,
          ),

          SizedBox(width: 8),

          Text(
            "계속",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          ]
        ),
      ),

    );
  }
}