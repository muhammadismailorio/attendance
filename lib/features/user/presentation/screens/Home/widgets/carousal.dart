import 'package:blueex_emp_app_flutter/features/user/presentation/cubits/slider/slider_cubit.dart';
import 'package:blueex_emp_app_flutter/resources/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousal extends StatefulWidget {
  const Carousal({Key? key}) : super(key: key);

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 160,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (index, reason) => setState(() {
                activeIndex = index;
              }),
            ),
            items: BlocProvider.of<SliderCubit>(context).state.images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: CachedNetworkImage(
                      imageUrl:
                          '${dotenv.env['HOST']}public/sliders/${i.toString()}',

                      // 'http://api.blue-ex.com:5000/public/sliders/banner.jpeg',
                    ),
                  );
                },
              );
            }).toList(),
          ),
          buildIndicator(context),
        ],
      ),
    );
  }

  Widget buildIndicator(BuildContext context) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: BlocProvider.of<SliderCubit>(context).state.images.length,
        effect: const JumpingDotEffect(
          dotWidth: 12,
          dotHeight: 12,
          activeDotColor: kPrimaryColor,
        ),
      );
}
