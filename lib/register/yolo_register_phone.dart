import 'package:flutter/material.dart';
import '../cutom_selector.dart';
import 'app_bar.dart';
import '../make_radio_button.dart';

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

  String selectedGender = "남성";
  String selectedMarriage = "미혼";

  Widget customRadio(String gender) {
    final bool isSelected = selectedGender == gender;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = gender;
        });
      },

      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 기본 원
                Image.asset(
                  "assets/img/radio_button.png",
                  width: 24,
                  height: 24,
                ),

                // 선택된 경우 점 표시
                if (isSelected)
                  Image.asset(
                    "assets/img/radio_button_dot.png",
                    width: 12,
                    height: 12,
                  ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Text(
            gender,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.build(context, "회원 가입"),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight:  MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
          ),
          child: Container(
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
                          hintStyle: TextStyle(
                            fontSize: 15, // 15sp
                            color: Color(0xFFABABAB), // #333333
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 8),

                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "1234",
                          hintStyle: TextStyle(
                            fontSize: 15, // 15sp
                            color: Color(0xFFABABAB), // #333333
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "5678",
                          hintStyle: TextStyle(
                            fontSize: 15, // 15sp
                            color: Color(0xFFABABAB), // #333333
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(10),
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

                SizedBox(height: 10,),
                Text("지역(사는곳)", style: TextStyle(fontSize: 15)),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Expanded(child:  DropdownButtonFormField<String>(
                      //value: selectedYear,
                      decoration: InputDecoration(
                        hintText: "시/도",
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
                    )),
                    SizedBox(width: 8),
                    Expanded(child:  DropdownButtonFormField<String>(
                      //value: selectedYear,
                      decoration: InputDecoration(
                        hintText: "구/군",
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
                    ))
                  ],
                ),
                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // 성별
                        Expanded(
                          child: CustomRadioGroup(
                            title: "성별",
                            items: [
                              "남성",
                              "여성",
                            ],
                            groupValue: selectedGender,
                            onChanged: (value) {
                              setState(() {
                                selectedGender = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomRadioGroup(
                            title: "결혼 여부",
                            items: [
                              "기혼",
                              "미혼",
                            ],
                            groupValue: selectedMarriage,
                            onChanged: (value) {
                              setState(() {
                                selectedMarriage = value;
                              });
                            },
                          ),
                        ),

                        // Expanded(
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       const Text(
                        //         "성별",
                        //         style: TextStyle(fontSize: 15),
                        //       ),
                        //       const SizedBox(height: 6),
                        //       Row(
                        //         children: [
                        //           customRadio("남성"),
                        //           const SizedBox(width: 30),
                        //           customRadio("여성"),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),

                        //const SizedBox(width: 30),
                        // 결혼 여부
                        // Expanded(
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       const Text(
                        //         "결혼 여부",
                        //         style: TextStyle(fontSize: 15),
                        //       ),
                        //       const SizedBox(height: 6),
                        //       Row(
                        //         children: [
                        //           customRadio("기혼"),
                        //           const SizedBox(width: 30),
                        //           customRadio("미혼"),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
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
