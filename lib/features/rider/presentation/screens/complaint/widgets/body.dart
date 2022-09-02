part of '../complaint_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(name: 'Complaint'),
        TextFieldContainer(
          child: MyDropdown(
            items: ['Select Complaint type'],
            selected: 'Select Complaint type',
            onChange: (value) {},
          ),
        ),
        SizedBox(height: 10),
        TextFieldContainer(
            child: MyTextArea(
                hintText: 'Write your complaint here.', onChange: () {})),
        SizedBox(height: 10),
        Button(child: Text('Update'), onPressed: () {})
      ],
    );
  }
}
