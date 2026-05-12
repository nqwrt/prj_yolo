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
      home: const RegisterPhonePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPhonePage extends StatefulWidget {
  const RegisterPhonePage({super.key});

  @override
  State<RegisterPhonePage> createState() => _RegisterPhonePagetate();
}

class _RegisterPhonePagetate extends State<RegisterPhonePage> {
  String? selectedYear="2026";

  final years = List.generate(
    100,
        (i) => (DateTime.now().year - i).toString(),
  );

  final firstController = TextEditingController();
  final middleController = TextEditingController();
  final lastController = TextEditingController();

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
            Text("이름", style: TextStyle(fontSize: 15)),

            SizedBox(height: 6),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "이름을 입력해 주세요",
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
              ],
            ),
            SizedBox(height: 10,),
            Text("휴대폰", style: TextStyle(fontSize: 15)),
            SizedBox(height: 6,),

            Row(
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "010",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(width: 8),

                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "1234",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),

                SizedBox(width: 8),

                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "5678",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text("출생년도", style: TextStyle(fontSize: 15)),

            SizedBox(height: 6,),
            Container(
              width: 120,
              child: DropdownButtonFormField<String>(
                value: selectedYear,
                decoration: InputDecoration(
                  hintText: "출생년도",
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(10),

                  // TextField 느낌 테두리
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),

                // 🔽 아래 화살표 (기본 제공)
                icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
                isExpanded: true, // 텍스트 꽉 차게
                items: years.map((y) {
                  return DropdownMenuItem(
                    value: y,
                    child: Text(y),
                  );
                }).toList(),

                onChanged: (value) {
                  setState(() {
                    selectedYear = value;
                  });
                },
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
    );
  }
}
