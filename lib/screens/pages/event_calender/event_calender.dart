import 'package:flutter/material.dart';
import 'package:myapp/utils/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class EventCalender extends StatefulWidget {
  const EventCalender({Key? key}) : super(key: key);

  @override
  _EventCalenderState createState() => _EventCalenderState();
}

class _EventCalenderState extends State<EventCalender> {
  // CalendarStyle calendarStyle = CalendarStyle.
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Event calender",
          style: AppStyle,
        ),
      ),
      body: Scaffold(
        body: Column(
          children: [
            // TableC
            TableCalendar(
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
            ),
          ],
        ),
      ),
    );
  }
}
