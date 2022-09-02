part of '../updated_status_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    showMyDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('Select Completion Mode', style: TextStyle(),),
                  const SizedBox(height: 20),
                  Button(
                    child: const Text('Delivered'),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  Button(
                    child: const Text('Not Delivered'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    return Column(
      children: [
        const TopBar(name: 'Updated Status'),
        Expanded(
          child: Image.asset('assets/images/maps.png',
              width: double.infinity, fit: BoxFit.cover),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Maaz Butt'),
              SizedBox(height: 3),
              Text('Islamabad'),
              SizedBox(height: 3),
              Text('Rs. 119'),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Button(
                      child: Text('Call'),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Button(
                      child: Text('End Ride'),
                      onPressed: () => showMyDialog(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
