part of '../pickup_screen.dart';

class Body extends HookWidget {
  @override
  Widget build(BuildContext context) {
    String token = context.read<UserCubit>().state.user.token;

    void fetchPickups() async {
      await context.read<PickupCubit>().get(token);
      print(context.read<PickupCubit>().state.pickups);
    }

    useEffect(() {
      fetchPickups();
      return null;
    }, []);

    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(name: 'Pickup'),
          ...context
              .watch<PickupCubit>()
              .state
              .pickups
              .map(
                (pickup) => PickupCard(pickup: pickup),
              )
              .toList(),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
