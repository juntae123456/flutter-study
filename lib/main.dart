import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

/*텍스트, 버튼 및 터치 입력 예제
class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: 
          /*텍스트
          Text(
            //작성하고 싶은 글
            '준코딩',
            //글자에 스타일 적용
          style: TextStyle(
            //글자 크기
            fontSize: 16.0,
            //글자 굵기
            fontWeight: FontWeight.w700,
            //글자 색상
            color: Colors.blue,
            ),
          ),*/
          /*텍스트 버튼
          TextButton(onPressed: (){},
          style: TextButton.styleFrom(
            foregroundColor: Colors.red, 
            ),
            child: Text('텍스트 버튼'),
            ),*/
            /*테두리가 있는 버튼
            OutlinedButton(
            // 클릭 시 실행할 함수
            onPressed: () {},
            // 버튼 스타일
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
            ),
            // 버튼에 넣을 위젯
            child: Text('아웃라인드 버튼'),
          ),*/
           /*튀어나와있는 버튼
           ElevatedButton(
            //클릭시 실행할 함수
            onPressed: (){},
            //버튼 스타일링
           style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red,
           ),
           //버튼에 넣을 위젯 
           child: Text('엘리베이티드 버튼'),
           )*/
          /*아이콘버튼
          IconButton(
            onPressed: (){},
            icon: Icon(
              //플러터에서 기본으로 제공하는 아이콘
              Icons.home,
            ),
          ),*/
          /*손가락으로 하는 입력을 인지하는 위젯
          GestureDetector(
            //한 번 탭했을 때 실행할 함수
            onTap: () {
              print('on tap');
              },
            //두 번 탭했을 때 실행할 함수
            onDoubleTap: () {
              print('on double tap');
              },
              //길게 눌렸을 때 실행할 함수
            onLongPress: () {
              print('on long press');
              },

            //제스처를 적용할 위젯
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              width:100.0,
              height:100.0,
            ),
          ),*/
        ) 
      ),
    );
  }
}*/

/*오른쪽 아래에 동그란 플로팅 작업 버튼
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
           floatingActionButton: FloatingActionButton(
            // 클릭했을 때 실행할 함수
            onPressed: () {},
            child: Text('클릭'),
          ),
        body: Container(),
      ),
    );
  }
}*/

/*위젯의 너비나 높이 배경이나 태두리를 추가할대 사용
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center( 
          child: Container(
            //스타일적용
            decoration: BoxDecoration(
              //배경색깔 적용
              color: Colors.red,
              //테두리 적용
              border: Border.all(
                //굵기
                width: 16.0,
                //테두리 색상
                color: Colors.black,
              ),
              //모서리 둥글게 만들기
              borderRadius: BorderRadius.circular(16.0),
            ),
            //높이
            height: 200.0,
            //너비
            width: 100.0,
          ),
        ),
      ),
    );
  }
}*/

/*일정크기의 공간을 공백으로두고 싶을때
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200.0, //높이지정
            width: 200.0, //너비지정
            //sizedbox는 색상이 없으므로
            //크기를 확인하는 용도로 container 추가
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}*/

//패딩 위젯의 상위위젯과 하위위젯 사이에 여백을 둘수 있다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: 
          /*패딩을 하나만 준거
          Container(
            color: Colors.blue,
            child: Padding(
              //상하,좌우 모두 16픽셀만크 패딩 적용
              padding: EdgeInsets.all(
              16.0,
              ),
              child: Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
            ),
          ),*/
          /* 위젯바깥에 마진 추가
          Container(
            //검정 컨테이너
            color: Colors.black,
            // 중간 파란 컨테이너
            child: Container(
              color: Colors.blue,
              // 마진 적용 위치
              margin: EdgeInsets.all(16.0),
              // 패딩 적용
              child: Padding(
                padding: EdgeInsets.all(16.0),
                  // 1. 패딩이 적용된 빨간 컨테이너
                  child: Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),*/
          SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            child: Container(
              color: Colors.red,
              height: 300.0,
              width: 300.0,
            ),
          ),
        ),
      ),
    );
  }
}

