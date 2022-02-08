import 'package:flutter/material.dart';
import 'package:mucomed_flutter/widgets/horizontal_calendar_day.dart';
import 'package:time/time.dart';

class HorizontalCalendar extends StatefulWidget {
  const HorizontalCalendar(this._onChange, {Key? key}) : super(key: key);

  final Function(DateTime) _onChange;

  @override
  _HorizontalCalendar createState() => _HorizontalCalendar();
}

class _HorizontalCalendar extends State<HorizontalCalendar> {
  late Function _onChange;
  final _listViewController = ScrollController();
  DateTime selectedDate = DateTime.now();

  List<HorizontalCalendarDay> renderCalendarDays(int amount) {
    List<HorizontalCalendarDay> dayElements = [];

    for (int i = 0; i < amount; i++) {
      DateTime date = DateTime.now() - Duration(days: i);
      bool isSelected = false;
      if (selectedDate.day == date.day) isSelected = true;

      dayElements.add(HorizontalCalendarDay(date, isSelected, () {
        setState(() {
          selectedDate = date;
        });
        _onChange(selectedDate);
      }));
    }

    return dayElements.reversed.toList();
  }

  @override
  void initState() {
    super.initState();
    _onChange = widget._onChange;
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _listViewController.animateTo(_listViewController.position.maxScrollExtent, duration: const Duration(milliseconds: 2000), curve: Curves.fastOutSlowIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    const double widgetHeight = 100;

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: widgetHeight,
            child: ListView(
              controller: _listViewController,
              scrollDirection: Axis.horizontal,
              children: renderCalendarDays(14),
            ),
          ),
        ),
      ],
    );
  }
}
