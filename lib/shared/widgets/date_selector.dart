import 'package:blueex_emp_app_flutter/resources/colors.dart';
import 'package:flutter/material.dart';

class DateSelector extends StatefulWidget {
  final String name;
  final onChange;

  const DateSelector({
    super.key,
    required this.name,
    required this.onChange,
  });

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.name),
        const SizedBox(height: 2),
        InkWell(
            onTap: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              );

              if (newDate == null) return;
              setState(() => selectedDate = newDate);
              widget.onChange(newDate);
            },
            child: Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kTextFieldColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
                  style:
                      const TextStyle(color: Color(0xFF828282), fontSize: 16),
                ),
              ),
            )),
      ],
    );
  }
}
