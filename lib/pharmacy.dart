import 'package:flutter/material.dart';
import 'package:hellonong/pharmacy_next.dart';
import 'package:hellonong/widget/appbar.dart';
import 'package:hellonong/widget/bottomNavi.dart';
import 'package:hellonong/widget/test.dart';

import 'bag.dart';
import 'mypage.dart';

class Pharmacy extends StatefulWidget {
  final List<bool> isSelected1;
  final List<bool> isSelected2;
  final List<bool> isSelected3;

  // 생성자 정의
  const Pharmacy({
    required this.isSelected1,
    required this.isSelected2,
    required this.isSelected3,
  });

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  List<bool> _isSelected1 = [false, false];
  List<bool> _isSelected2 = [false, false];
  List<bool> _isSelected3 = [false, false];
  Test test = Test(1);

  String dropdownvalue1 = '몇분';
  var items1 = ['몇분', '10분',  '30분', '60분'];
  String dropdownvalue2 = '몇분';
  var items2 = ['몇분', '10분',  '30분', '60분'];
  String dropdownvalue3 = '몇분';
  var items3 = ['몇분', '10분',  '30분', '60분'];

  String dropdownvalue4 = '몇일';
  var items4 = ['몇일','3일', '5일', '7일', '14일', '30일'];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(0, 1, context),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              "아침",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: screenWidth * 0.12),
              Expanded(
                child: ToggleButtons(
                  children: <Widget>[
                    Text(
                      '식전',
                      style: TextStyle(fontSize: 23, color: Colors.black),
                    ),
                    Text(
                      '후',
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                  isSelected: _isSelected1,
                  selectedColor: Colors.white,
                  fillColor: Theme.of(context).colorScheme.primaryContainer,
                  onPressed: (int index) {
                    setState(() {
                      _isSelected1[index] = !_isSelected1[index];
                    });
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 50.0), // 오른쪽 여백 크기 설정
                  child: DropdownButton(
                    value: dropdownvalue1,
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items1.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 22),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1 = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              "점심",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: screenWidth * 0.12),
              Expanded(
                child: ToggleButtons(
                  children: <Widget>[
                    Text(
                      '식전',
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      '후',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                  isSelected: _isSelected2,
                  selectedColor: Colors.black,
                  fillColor: Theme.of(context).colorScheme.primaryContainer,
                  onPressed: (int index) {
                    setState(() {
                      _isSelected2[index] = !_isSelected2[index];
                    });
                  },
                ),
              ),
              SizedBox(width: screenWidth * 0.03), // 원하는 간격 조정
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 50.0), // 오른쪽 여백 크기 설정
                  child: DropdownButton(
                    value: dropdownvalue2,
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items2.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 22),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue2 = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              "저녁",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: screenWidth * 0.12),
              Expanded(
                child: ToggleButtons(
                  children: <Widget>[
                    Text(
                      '식전',
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      '후',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                  isSelected: _isSelected3,
                  selectedColor: Colors.black,
                  fillColor: Theme.of(context).colorScheme.primaryContainer,
                  onPressed: (int index) {
                    setState(() {
                      _isSelected3[index] = !_isSelected3[index];
                    });
                  },
                ),
              ),
              SizedBox(width: screenWidth * 0.03), // 원하는 간격 조정
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 50.0), // 오른쪽 여백 크기 설정
                  child: DropdownButton(
                    value: dropdownvalue3,
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items3.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyle(fontSize: 22),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue3 = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "복용일수",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          Container(
            width: screenWidth * 0.35,
            child: DropdownButton(
              value: dropdownvalue4,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items4.map((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(fontSize: 22),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue4 = newValue!;
                });
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          _showDialog(); // 이미지를 탭하면 다이얼로그 표시
        },
        child: Container(
          width: 100, // 너비를 늘려서 가로로 긴 버튼으로 만듭니다.
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle, // 사각형 모양의 버튼 사용
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage('assets/images/checkbox.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            '정확한 복용정보를 선택하셨다면 확인 버튼을 눌러주세요.',
            style: TextStyle(
              fontSize: 17, // 다이얼로그 내용 텍스트 사이즈 변경
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                '닫기',
                style: TextStyle(
                  color: Colors.black38, // 닫기 버튼 텍스트 색상 변경
                ),
              ),
            ),
            TextButton(
              child: Text(
                '확인',
                style: TextStyle(
                  color: Colors.blueAccent, // 확인 버튼 텍스트 색상 변경
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // 다이얼로그 닫기
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PharmacyNext(
                      isSelected1: _isSelected1,
                      isSelected2: _isSelected2,
                      isSelected3: _isSelected3,
                      selectedDuration: dropdownvalue4, // Pass the selected duration to PharmacyNext
                      selectedImage1: _getImageForDropdownValue(dropdownvalue1),
                      selectedImage2: _getImageForDropdownValue(dropdownvalue2),
                      selectedImage3: _getImageForDropdownValue(dropdownvalue3),// Pass the selected image for dropdownvalue

                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  // Method to get the image asset path based on the selected dropdown value
  String _getImageForDropdownValue(String dropdownValue) {
    switch (dropdownValue) {
      case '몇분':
        return 'assets/images/default.png';
      case '10분':
        return 'assets/images/10minutes.png';
      case '30분':
        return 'assets/images/30mintues.png';
      case '60분':
        return 'assets/images/1hour.png';
      default:
        return 'assets/images/default.png';
    }
  }
}
