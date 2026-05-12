import 'package:flutter/material.dart';
import 'yolo_register_phone.dart';

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
      appBar: AppBar(
        backgroundColor: const Color(0xFF3D4150),
        elevation: 0,
        //왼쪽 이미지
        leading: Container(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/img/ic_navigate_before_white_24dp.png'),
        ),

        // 가운데 제목
        title: const Text(
          "회원 가입",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text(
                    "회원가입을 위해",
                    style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "아래의 정보를 입력해 주세요",
                    style: TextStyle(fontSize: 19),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Container(
                width: 28, // 선 길이
                height: 3, // 두께
                color: Colors.red,
              ),
            ),

            SizedBox(height: 35),
            Text("아이디", style: TextStyle(fontSize: 15)),

            SizedBox(height: 6),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "아이디를 입력해 주세요",
                      hintStyle: TextStyle(
                        fontSize: 15, // 15sp
                        color: Color(0xFFABABAB), // #333333
                      ),
                      contentPadding: EdgeInsets.all(10),
                      // 안쪽 패딩 10
                      filled: true,
                      fillColor: Colors.white,

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),

                TextButton(
                  onPressed: () {
                    // 중복확인 로직
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:Color(0xFFABABAB), // 회색 배경
                    foregroundColor: Colors.black, // 검은 글씨
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  child: Text("중복확인"),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Text("비밀번호", style: TextStyle(fontSize: 15)),
            TextField(
              decoration: InputDecoration(
                hintText: "아이디를 입력해 주세요",
                hintStyle: TextStyle(
                  fontSize: 15, // 15sp
                  color: Color(0xFFABABAB), // #333333
                ),
                contentPadding: EdgeInsets.all(10),
                // 안쪽 패딩 10
                filled: true,
                fillColor: Colors.white,

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 16,),
            Text("비밀번호 확인", style: TextStyle(fontSize: 15)),
            TextField(
              decoration: InputDecoration(
                hintText: "비밀번호 확인",
                hintStyle: TextStyle(
                  fontSize: 15, // 15sp
                  color: Color(0xFFABABAB), // #333333
                ),
                contentPadding: EdgeInsets.all(10),
                // 안쪽 패딩 10
                filled: true,
                fillColor: Colors.white,

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 16,),
            Text("이메일", style: TextStyle(fontSize: 15)),
            TextField(
              decoration: InputDecoration(
                hintText: "이메일을 입력해 주세요",
                hintStyle: TextStyle(
                  fontSize: 15, // 15sp
                  color: Color(0xFFABABAB), // #333333
                ),
                contentPadding: EdgeInsets.all(10),
                // 안쪽 패딩 10
                filled: true,
                fillColor: Colors.white,

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
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
              MaterialPageRoute(
                builder: (context) => RegisterPhonePage(),
              ),
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
