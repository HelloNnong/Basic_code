import 'package:flutter/material.dart';
import 'package:hellonong/widget/appbar.dart';
import 'package:hellonong/widget/bottomNavi.dart';

class Result extends StatefulWidget {
  final List<String> selectedOpinions;
  final List<bool> selectedOpinionOrders;

  Result({
    required this.selectedOpinions,
    required this.selectedOpinionOrders,
    Key? key,
  }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/body');
        break;
      case 2:
        Navigator.pushNamed(context, '/pharmacy');
        break;
      case 3:
        Navigator.pushNamed(context, '/mypage');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(0, 0, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < widget.selectedOpinions.length; i++)
              _buildOpinionCard(i + 1, widget.selectedOpinions[i], widget.selectedOpinionOrders[i], screenHeight),
            SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  Widget _buildOpinionCard(int order, String opinion, bool isSelected, double screenHeight) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color(0xFFC1C1C1),
              width: 1,
            ),
          ),
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  left: screenWidth * 0.05,
                  top: screenHeight * 0.02,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text(
                      order.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: screenWidth * 0.2, // 조정된 위치
                  top: screenHeight * 0.04,
                  child: Text(
                    opinion,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                    softWrap: true, // 텍스트가 컨테이너 범위를 넘어갈 경우 줄 바꿈을 허용
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}