part of "../re_Attempt_inner_screen.dart";

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(name: 'ReAttempt'),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Card(
            color: const Color(0xFFF4F6F9),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      CardCell(
                        name: 'Consignment Number',
                        value: '2831041',
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      CardCell(
                        name: 'Consignment Status',
                        value: 'CN',
                        bottomSpace: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Button(
            child: const Text('ReAttempt'),
            onPressed: () => Navigate.to(context, UpdatedStatusScreen.id),
          ),
        ),
      ],
    );
  }
}
