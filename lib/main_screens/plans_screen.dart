
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PlansScreen extends StatefulWidget {
  final DateTime? selectedFromDate;
  final DateTime? selectedToDate;

  const PlansScreen({Key? key, this.selectedFromDate, this.selectedToDate}) : super(key: key);

  @override
  _PlansScreenState createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  late DateTime _selectedDate;
  DateTime? fromDate; // Add this lin
  DateTime? toDate;   // Add this lin

  List<String> _tasks = [];

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    fromDate = widget
        .selectedFromDate; // Initialize fromDate with the selectedFromDate
    toDate = widget.selectedToDate;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Daily Orders'),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [
          _buildDateList(),
          SizedBox(height: 16),
          if (_selectedDate != null) ...[
          //   Text(
          //     'Tasks for ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
          //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //   ),

            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_tasks[index]),
                    // Add more details or actions if needed
                  );
                },
              ),
            ),
          ],
        ],
      ),

    );
  }

  Widget _buildDateList() {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 31, // Adjust this based on how many dates you want to show
        itemBuilder: (context, index) {
          DateTime date = DateTime.now().add(Duration(days: index));
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
                color: _selectedDate.day == date.day ? Colors.purple : null,
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

