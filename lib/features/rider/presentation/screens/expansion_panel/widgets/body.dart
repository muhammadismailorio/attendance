part of '../pickup_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  static const loremIpsum = 'lorem';

  final List<Item> items = [
    Item(
      header: '1) 5019651021',
      serialNo: '1',
      consignmentName: 'Maaz butt',
      deliverySheet: '341047',
      address: 'Islamabad',
      codAmount: '119',
    ),
    Item(
      header: '1) 5019651021',
      serialNo: '1',
      consignmentName: 'Maaz butt',
      deliverySheet: '341047',
      address: 'Islamabad',
      codAmount: '119',
    ),
    Item(
      header: '1) 5019651021',
      serialNo: '1',
      consignmentName: 'Maaz butt',
      deliverySheet: '341047',
      address: 'Islamabad',
      codAmount: '119',
    ),
    Item(
      header: '1) 5019651021',
      serialNo: '1',
      consignmentName: 'Maaz butt',
      deliverySheet: '341047',
      address: 'Islamabad',
      codAmount: '119',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  'Pickup',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionPanelList.radio(
              children: items.map((item) {
                int itemNo = 1;
                return ExpansionPanelRadio(
                  value: Text('${itemNo++} ${item.header}'),
                  headerBuilder: (context, isExpanded) => ListTile(
                    title: Text(
                      item.header,
                    ),
                  ),
                  body: Container(),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
    ;
  }
}

class ExpansionBody extends StatelessWidget {
  const ExpansionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [],
          ),
        ),
      ],
    );
  }
}

class Item {
  final String header,
      serialNo,
      consignmentName,
      deliverySheet,
      address,
      codAmount;

  Item({
    required this.header,
    required this.serialNo,
    required this.consignmentName,
    required this.deliverySheet,
    required this.address,
    required this.codAmount,
  });
}
