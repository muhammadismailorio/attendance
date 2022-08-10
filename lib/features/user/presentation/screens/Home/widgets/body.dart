part of '../home_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Hi(),
        Carousal(),
        HomeItemsGrid(),
      ],
    );
  }
}
