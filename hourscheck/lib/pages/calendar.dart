import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: DateTime.utc(1900, 1, 1),
      lastDay: DateTime.utc(2600, 1, 1),
      calendarFormat: _calendarFormat,
      startingDayOfWeek: StartingDayOfWeek.monday,
      onFormatChanged: (format) {
        setState(() {
          if (_calendarFormat != format) {
            _calendarFormat = format;
          }
        });
      },
      onDaySelected: (selectedDay, focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}
