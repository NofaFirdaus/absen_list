import 'package:absen_list/screens/pencatatan_kehadiran.dart';
import 'package:absen_list/screens/riwayat_kehadiran.dart';
import 'package:flutter/material.dart';

class BottomNavigatorWithPageView extends StatefulWidget {
  @override
  _BottomNavigatorWithPageViewState createState() => _BottomNavigatorWithPageViewState();
}

class _BottomNavigatorWithPageViewState extends State<BottomNavigatorWithPageView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) { 
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          PencatatanKehadiran(), 
          RiwayatKehadiran(),    
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; 
          });
          _pageController.jumpToPage(index); 
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Kehadiran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose(); 
    super.dispose();
  }
}
