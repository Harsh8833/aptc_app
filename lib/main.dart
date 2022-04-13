import 'package:aptc_app/values/colors.dart';
import 'package:aptc_app/widgets/primary/add_student.dart';
import 'package:aptc_app/widgets/primary/view_students.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    AddStudent(),
    Text(
      'Update ',
      style: optionStyle,
    ),
    ViewStudents(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.light,
      appBar: AppBar(
          title: const Text('APTC'), backgroundColor: AppColor.secondary),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add New',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Update',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.read_more),
            label: 'Veiw all',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: AppColor.dark,
        unselectedItemColor: AppColor.primary.withOpacity(0.5),
        selectedItemColor: AppColor.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
