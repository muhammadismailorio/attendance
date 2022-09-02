part of '../reattempt_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TopBar(name: 'ReAttempt'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigate.to(context, ReAttemptInnerScreen.id),
                  child: const Card(
                    color: Color(0xFFF4F6F9),
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: CardCell(
                        name: 'Sheet Number',
                        value: '3410899',
                        bottomSpace: false,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
