import 'package:blueex_emp_app_flutter/features/user/presentation/cubits/user/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Login/login_screen.dart';
import 'package:blueex_emp_app_flutter/resources/colors.dart';
import 'package:blueex_emp_app_flutter/resources/constants.dart';
import 'package:blueex_emp_app_flutter/shared/routes/navigate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildAppBar extends StatelessWidget with PreferredSizeWidget {
  const BuildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    void onSuccess() {
      Navigate.next(context, LoginScreen.id);
    }

    void onLogout() async {
      context.read<UserCubit>().logout();
      await HydratedBlocOverrides.current?.storage.clear();
      onSuccess.call();
    }

    return Container(
      padding: kDefaultPadding,
      child: SafeArea(
        child: SizedBox(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/logos/appbar_logo.svg', height: 28),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  width: 150,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: kGray100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/shared/layout/app_bar/search.svg'),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              PopupMenuButton(
                child: SvgPicture.asset(
                  'assets/icons/shared/layout/app_bar/notification_appbar.svg',
                ),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      child: Text('3 new messages'),
                    ),
                  ];
                },
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: onLogout,
                child: SvgPicture.asset(
                  'assets/icons/shared/layout/app_bar/logout.svg',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
