import 'package:flutter/material.dart';
import 'package:blueex_emp_app_flutter/features/attendance/presentation/cubits/attendance_data/attendance_data_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blueex_emp_app_flutter/resources/colors.dart';

class AppTable extends StatefulWidget {
  const AppTable({Key? key}) : super(key: key);

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {
  @override
  Widget build(BuildContext context) {
    return context.watch<AttendanceDataCubit>().state.status ==
            AttendanceDataStatus.loading
        ? const CircularProgressIndicator(
            color: kPrimaryColor,
          )
        : Table(
            border: TableBorder.all(
              color: const Color(0xFFC4C4C4),
              width: 1,
            ),
            children: [
              TableRow(
                decoration: const BoxDecoration(
                  color: Color(0xFFF7F7F7),
                ),
                children: [
                  buildHeaderCell('CN\'s'),
                  buildHeaderCell('CN Name'),
                  buildHeaderCell('User'),
                ],
              ),
              buildTableRow(cn: 'cn', cnName: 'cn name', user: 'Ismail')
            ],
          );
  }

  Padding buildHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

TableRow buildTableRow({cn, cnName, user}) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: cn != null ? Text(cn) : const Text(''),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: cn != null ? Text(cnName) : const Text(''),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: cn != null ? Text(user) : const Text(''),
        ),
      ),
    ],
  );
}
