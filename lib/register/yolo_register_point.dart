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
      home: const RegisterPointPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RegisterPointPage extends StatefulWidget {
  const RegisterPointPage({super.key});

  @override
  State<RegisterPointPage> createState() => _RegisterPointPagetate();
}

class _RegisterPointPagetate extends State<RegisterPointPage> {

  // 선택된 Grid 저장
  List<int> selectedItems = [];

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
                    "추가정보를 입력하시면",
                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "100포인트를 드립니다.",
                    style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
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

            Text(
              "관심분야(복수선택 가능)",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 6),

            Expanded(
              child: GridView.builder(
                itemCount: 16,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // 4칸
                  crossAxisSpacing: 6, // 가로 간격
                  mainAxisSpacing: 6, // 세로 간격

                  childAspectRatio: 1.5, // 정사각형
                ),
                itemBuilder: (context,index){

                  // 현재 Grid 선택 여부
                  bool isSelected =  selectedItems.contains(index);

                  List<String> list_item = ["건강운동","게임","교육"];

                  return GestureDetector(
                    onTap: (){
                      setState(() {

                        // 이미 선택됨
                        if (isSelected) {
                          selectedItems.remove(index);
                        }else {
                          selectedItems.add(index);
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        // Grid 전체 색상 변경
                        color: isSelected
                        ? Colors.red
                        : Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),

                      child: Center(
                        child: Text(list_item[1]),
                      ),
                    
                    ),
                  );
                },
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

            Text("계속", style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
