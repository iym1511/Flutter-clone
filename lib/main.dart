import 'package:flutter/material.dart';

// runApp : 앱 시작해주세요~ (void main 안에서 앱 실행 해야함)
void main() {
  runApp(const MyApp());
}

// 앱 메인페이지 생성
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('안녕') // 글자위젯
      // home : Icon(Icons.star) // 아이콘 위젯 (플러터 홉페이지에 명령어 있음)
      // home: Image.asset('assets/img.png') // 이미지위젯 (디렉토리 명 asset으로 설정)
      // home: Center( // Container위젯 안에다 Container도 넣을 수 있다.
      //   child: Container(width: 50, height: 50, color: Colors.blue),
      // )
      home: Scaffold(
        appBar: AppBar(
          title: Text('앱임'),
          backgroundColor: Colors.blue,
          centerTitle: false,
        ),
        body: Container(
          child: Container(
            child: Text('앱임'),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 3), // 그림자 포지션 설정
              ),
            ],
          ),
            child: BottomAppBar(
              color: Colors.white, // BottomAppBar의 배경색을 투명으로 설정
              child: Container(
                height: 50, // 바닥바 높이 설정
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
