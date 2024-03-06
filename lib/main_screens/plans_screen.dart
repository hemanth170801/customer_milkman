import 'package:flutter/material.dart';

class PlansScreen extends StatefulWidget {
  final DateTime selectedFromDate;
  final DateTime selectedToDate;

  const PlansScreen({
    super.key,
    required this.selectedFromDate,
    required this.selectedToDate,
  });

  @override
  _PlansScreenState createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedFromDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Plans'),
      ),
      body: _buildDateList(),
    );
  }

  Widget _buildDateList() {
    return SizedBox(

      height: 60,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.selectedToDate.difference(widget.selectedFromDate).inDays + 1,
        itemBuilder: (context, index) {
          DateTime date = widget.selectedFromDate.add(Duration(days: index));
          return InkWell(
            onTap: () {
              setState(() {
                _selectedDate = date;
              });
            },
            child: Container(
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _selectedDate.day == date.day ? Colors.purple : Colors.orangeAccent.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '${date.day}',
                style: TextStyle(
                  color: _selectedDate.day == date.day ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
