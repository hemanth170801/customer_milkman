import 'package:flutter/material.dart';

class PlansScreen extends StatefulWidget {
  const PlansScreen({Key? key}) : super(key: key);

  @override
  State<PlansScreen> createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  bool isEditing = false;
  String selectedMilk = 'Milk Name';
  int selectedQuantity = 1;
  String selectedSchedule = 'Daily'; // Initial schedule selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plans'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isEditing = !isEditing;
                });
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$selectedMilk - $selectedQuantity'),
                    Icon(Icons.edit),
                  ],
                ),
              ),
            ),
            if (isEditing)
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Edit Plan'),
                    SizedBox(height: 10),
                    Text('Milk: $selectedMilk'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Schedule: '),
                        DropdownButton<String>(
                          value: selectedSchedule,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedSchedule = newValue!;
                            });
                          },
                          items: <String>['Daily', 'Alternate Days', 'Weekdays','Weekends','FortNight']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Quantity: '),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (selectedQuantity > 1) {
                                selectedQuantity--;
                              }
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Text('$selectedQuantity'),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              selectedQuantity++;
                            });
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isEditing = false;
                              // Add logic to cancel editing here
                            });
                          },
                          child: Text('Cancel'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Add logic to save changes here
                            });
                          },
                          child: Text('Save'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}


