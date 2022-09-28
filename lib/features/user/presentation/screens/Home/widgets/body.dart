part of '../home_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Menu> menu = [
      Menu(
        icon: 'assets/icons/user/menu/manual_sheet_number.svg',
        name: 'Manual Sheet Number',
        id: 'rider-1',
        permissions: [],
        subMenus: [],
        tag: 'manual_sheet_number_screen',
      ),
      Menu(
        icon: 'assets/icons/user/menu/re_attempt_cn.svg',
        name: 'Re-Attempt CN',
        id: 'rider-1',
        permissions: [],
        subMenus: [],
        tag: 'reattempt_cn_screen',
      ),
      Menu(
        icon: 'assets/icons/user/menu/pickup.svg',
        name: 'Pickup',
        id: 'rider-1',
        permissions: [],
        subMenus: [],
        tag: 'pickup_screen',
      ),
      Menu(
        icon: 'assets/icons/user/menu/wallet.svg',
        name: 'Wallet',
        id: 'rider-1',
        permissions: [],
        subMenus: [],
        tag: 'wallet_screen',
      ),
      Menu(
        icon: 'assets/icons/user/menu/undelivered_shipment.svg',
        name: 'Undelivered Shipments',
        id: 'rider-1',
        permissions: [],
        subMenus: [],
        tag: 'undelivered_shipments_screen',
      ),
      Menu(
        icon: 'assets/icons/user/menu/other.svg',
        name: 'Other',
        id: 'rider-1',
        permissions: [],
        subMenus: [
          Menu(
            icon: 'assets/icons/user/menu/verify.svg',
            name: 'Verify',
            id: 'rider-1',
            permissions: [],
            subMenus: [],
            tag: 'verify_screen',
          ),
          Menu(
            icon: 'assets/icons/user/menu/call_me.svg',
            name: 'Call Me',
            id: 'rider-1',
            permissions: [],
            subMenus: [],
            tag: 'rider_screen',
          ),
          Menu(
            icon: 'assets/icons/user/menu/complaint.svg',
            name: 'Complaint',
            id: 'rider-1',
            permissions: [],
            subMenus: [],
            tag: 'complaint_screen',
          ),
          Menu(
            icon: 'assets/icons/user/menu/tutorial.svg',
            name: 'Tutorial',
            id: 'rider-1',
            permissions: [],
            subMenus: [],
            tag: 'tutorial_screen',
          ),
          Menu(
            icon: 'assets/icons/user/menu/whistle_blow.svg',
            name: 'Whistle Blow',
            id: 'rider-1',
            permissions: [],
            subMenus: [],
            tag: 'rider_screen',
          ),
        ],
        tag: 'rider_screen',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hi(),
        Carousal(),
        HomeItemsGrid(),
        // Rider demo

        // Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: GridView.builder(
        //       shrinkWrap: true,
        //       physics: const ScrollPhysics(),
        //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2,
        //         childAspectRatio: 4 / 3,
        //       ),
        //       itemCount: 1,
        //       itemBuilder: (context, index) {
        //         return GridTile(
        //           child: HomeCard(
        //             img: 'assets/icons/user/menu/rider.svg',
        //             title: 'Rider',
        //             route: '',
        //             routeTo: MaterialPageRoute(
        //               builder: (context) => MenuScreen(
        //                 menu: menu,
        //               ),
        //             ),
        //             isDisabled: false,
        //           ),
        //         );
        //       }),
        // ),
      ],
    );
  }
}
