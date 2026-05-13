import 'package:flutter/material.dart';
import 'register/yolo_register_intro.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/bg_sky.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "여행의 참맛!! 머나먼 인생의 참맛",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "욜로 여행사!!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // 아래로 밀기
                const Spacer(),

                Container(
                  margin: EdgeInsets.only(bottom: 2),
                  width: double.infinity,
                  height: 55,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            'assets/img/join_icon.png',
                            width:24,
                            height:24
                        ),

                        SizedBox(width:8,),

                        Text(
                          "회원 가입",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: double.infinity,
                  //height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          'assets/img/login_icon.png',
                          width:25,
                          height:25
                      ),

                      SizedBox(width:8,),

                      Text(
                        "로그인",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}