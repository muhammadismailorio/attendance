part of '../verify_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(name: 'Verify'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                bool listValue = true;
                return Card(
                    child: ListTile(
                        tileColor: Color(0xFFF4F6F9),
                        title: Text('Sheet Number'),
                        subtitle: Text('3410899'),
                        trailing: Checkbox(
                          checkColor: Colors.white,
                          value: listValue,
                          onChanged: (bool? value) {
                            setState(() {
                              listValue = !listValue;
                            });
                          },
                        )));
              }),
        ),
      ],
    );
  }
}
