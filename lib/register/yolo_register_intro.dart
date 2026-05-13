import 'package:flutter/material.dart';
import '../cutom_selector.dart';
import 'yolo_register_info.dart';
import 'app_bar.dart';

void main() {
  runApp(const MyApp());
}

const String termsText = '''
제1조 (목적)

본 약관은 욜로여행사(이하 "회사")가 제공하는 여행 예약 및 관련 서비스의 이용과 관련하여 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.

제2조 (정의)

1. "서비스"란 회사가 제공하는 여행 상품 예약, 정보 제공 및 기타 관련 서비스를 의미합니다.
2. "이용자"란 본 약관에 따라 회사가 제공하는 서비스를 이용하는 회원 및 비회원을 말합니다.

제3조 (약관의 효력 및 변경)

회사는 필요한 경우 관련 법령을 위반하지 않는 범위에서 본 약관을 변경할 수 있습니다.
''';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPagetate();
}

class _RegisterPagetate extends State<RegisterPage> {
  int selected = 0; // 👈 반드시 추가

  Widget termsBox(String text) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Text(text, style: const TextStyle(fontSize: 13, height: 1.5)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, "회원 가입"),

      body: Container(
        width: double.infinity,
        color: const Color(0xFFEAE3DD),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("욜로여행사에 오신 것을 환영합니다.", style: TextStyle(fontSize: 19)),
            SizedBox(height: 12),
            SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.only(left: 11, right: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("이용약관", style: TextStyle(fontSize: 15)),
                  SizedBox(height: 10),
                  termsBox(termsText),
                  SizedBox(height: 10),
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
                      Text("사용자 이용약관에 동의 합니다.", style: TextStyle(fontSize: 13)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        color: Colors.redAccent,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterInfoPage()),
            );
          },

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/ic_input_white_24dp.png',
                width: 24,
                height: 24,
              ),

              SizedBox(width: 8),

              Text("계속", style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
