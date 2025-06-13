import 'package:flutter/material.dart';

class TaskDisplayPage extends StatelessWidget {
  final String title;
  final String note;
  final DateTime selectedDate;
  final String startTime;
  final String endTime;
  final int selectedRemind;
  final String selectedRepeat;

  TaskDisplayPage({
    required this.title,
    required this.note,
    required this.selectedDate,
    required this.startTime,
    required this.endTime,
    required this.selectedRemind,
    required this.selectedRepeat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: $title', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Note: $note', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Date: ${selectedDate.toString()}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Start Time: $startTime', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('End Time: $endTime', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Remind: $selectedRemind minutes early', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('Repeat: $selectedRepeat', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
