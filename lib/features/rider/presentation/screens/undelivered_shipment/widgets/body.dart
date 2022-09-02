part of '../undelivered_shipments_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(name: 'Undelivered Shipments'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SearchBar(onChange: () {}),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: DateSelector(
                  name: 'From',
                  onChange: (DateTime newDate) {
                    fromDate = newDate;
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: DateSelector(
                  name: 'To',
                  onChange: (DateTime newDate) {
                    fromDate = newDate;
                  },
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 100,
                child: Button(
                  child: const Text('GO'),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        AppTable(),
      ],
    );
  }
}
