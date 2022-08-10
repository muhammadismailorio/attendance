import 'package:flutter/material.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Home/home_screen.dart';
import 'package:blueex_emp_app_flutter/shared/layout/widgets/navigation_button.dart';
import 'package:blueex_emp_app_flutter/shared/routes/navigate.dart';

class LayoutBottomBar extends StatefulWidget {
  final int currentTab;

  const LayoutBottomBar({super.key, required this.currentTab});

  @override
  State<LayoutBottomBar> createState() => _LayoutBottomBarState();
}

class _LayoutBottomBarState extends State<LayoutBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 18.0,
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigationButton(
                  onPressed: () => Navigate.to(context, HomeScreen.id),
                  icon: 'assets/icons/shared/layout/nav_bar/home.svg',
                  text: 'Home',
                  tab: 1,
                  currentTab: widget.currentTab,
                ),
                NavigationButton(
                  onPressed: () {},
                  icon: 'assets/icons/shared/layout/nav_bar/hr_bottom.svg',
                  text: 'HR desk',
                  tab: 2,
                  isDisabled: true,
                  currentTab: widget.currentTab,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigationButton(
                  onPressed: () {},
                  icon: 'assets/icons/shared/layout/nav_bar/incident.svg',
                  text: 'Incident',
                  tab: 3,
                  isDisabled: true,
                  currentTab: widget.currentTab,
                ),
                NavigationButton(
                  onPressed: () {},
                  icon: 'assets/icons/shared/layout/nav_bar/chat.svg',
                  text: 'Chat',
                  tab: 4,
                  isDisabled: true,
                  currentTab: widget.currentTab,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
