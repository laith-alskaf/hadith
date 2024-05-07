import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_task/ui/shared/colors.dart';
import 'package:pro_task/ui/views/home_view/home_view_controller.dart';
import 'package:pro_task/ui/shared/custom_widget/custom_appbar.dart';
import 'package:pro_task/ui/views/home_view/home_widget/conatiner_hadith.dart';
import 'package:pro_task/ui/views/home_view/home_widget/container_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: GetBuilder<HomeViewController>(
            init: HomeViewController(),
            builder: (homeViewController) {
              return homeViewController.itemsHadithSown.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: AppColors.whiteColor,
                        strokeWidth: 10.w,
                      ),
                    )
                  : Stack(
                      children: [
                        CustomAppbar(homeViewController: homeViewController),
                        AnimatedContainer(
                          padding: EdgeInsets.only(top: 10.h),
                          duration: const Duration(milliseconds: 300),
                          height: 1.sh,
                          width: 1.sw,
                          margin: EdgeInsets.only(
                              top:
                                  homeViewController.hideAppbar ? 30.h : 110.h),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: homeViewController.hideAppbar
                                  ? null
                                  : BorderRadiusDirectional.only(
                                      topStart: Radius.circular(35.r),
                                      topEnd: Radius.circular(35.r))),
                          child: NotificationListener<UserScrollNotification>(
                            onNotification: (scrollNotification) {
                              homeViewController.handleScroll(
                                  scrollNotification: scrollNotification);
                              return false;
                            },
                            child: ListView(
                                physics: const BouncingScrollPhysics(),
                                padding: const EdgeInsets.all(0),
                                children: List.generate(
                                    homeViewController.itemsSection.length,
                                    (index) {
                                  return Column(
                                    children: [
                                      ContainerSection(
                                        index: index,
                                        homeViewController: homeViewController,
                                      ),
                                      ...List.generate(
                                          homeViewController
                                              .itemsHadithSown[index]
                                              .length, (indexHadith) {
                                        return ContainerHadith(
                                          hadithId: homeViewController
                                              .itemsHadithSown[index]
                                                  [indexHadith]
                                              .hadithId!,
                                          grade: homeViewController
                                              .itemsHadithSown[index]
                                                  [indexHadith]
                                              .grade!,
                                          paddingBottom: 10.h,
                                          typeBook: homeViewController
                                              .bookItems[0].abvrCode!,
                                          titleBook: homeViewController
                                              .bookItems[0].title!,
                                          hadithAr: homeViewController
                                              .itemsHadithSown[index]
                                                  [indexHadith]
                                              .ar!,
                                          hadithBn: homeViewController
                                              .itemsHadithSown[index]
                                                  [indexHadith]
                                              .bn!,
                                          narrator: homeViewController
                                              .itemsHadithSown[index]
                                                  [indexHadith]
                                              .narrator!,
                                        );
                                      })
                                    ],
                                  );
                                })),
                          ),
                        ),
                      ],
                    );
            }));
  }
}
