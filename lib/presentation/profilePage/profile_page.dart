import 'package:dokan_demo/presentation/core/size.dart';
import 'package:dokan_demo/presentation/design/coolors.dart';
import 'package:dokan_demo/presentation/homePage/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(height: getPercentSize(5, true, context)),
              Text(
                'My Account',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                      color: Coolors.kAppBarTitleTextColor,
                    ),
              ),
              SizedBox(height: getPercentSize(5, true, context)),
              SizedBox(
                height: 128,
                width: 128,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset('assets/oval.svg'),
                    Material(
                      shape: const CircleBorder(),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        'assets/profilepic.jpg',
                        height: 112,
                        width: 112,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getPercentSize(3, true, context)),
              Column(
                children: [
                  Text(
                    'John Smith',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    'info@johnsmith.com',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(height: getPercentSize(5, true, context)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: [
                        CustomExpansionTile(
                          leading: SvgPicture.asset(
                            'assets/person_icon.svg',
                            height: 25,
                          ),
                          title: 'Account',
                          children: const AccountExpansionItems(),
                        ),
                        const Divider(
                          color: Coolors.kAppBarTitleTextColor,
                          indent: 20,
                          endIndent: 20,
                        ),
                        CustomExpansionTile(
                          leading: SvgPicture.asset(
                            'assets/password_icon.svg',
                            height: 25,
                          ),
                          title: 'Passwords',
                          children: const AccountExpansionItems(),
                        ),
                        const Divider(
                          color: Coolors.kAppBarTitleTextColor,
                          indent: 20,
                          endIndent: 20,
                        ),
                        CustomExpansionTile(
                          leading: SvgPicture.asset(
                            'assets/notification_icon.svg',
                            height: 25,
                          ),
                          title: 'Notifications',
                          children: const AccountExpansionItems(),
                        ),
                        const Divider(
                          color: Coolors.kAppBarTitleTextColor,
                          indent: 20,
                          endIndent: 20,
                        ),
                        CustomExpansionTile(
                          leading: SvgPicture.asset(
                            'assets/heart.svg',
                            height: 25,
                          ),
                          title: 'Wishlist',
                          children: const AccountExpansionItems(),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: getPercentSize(10, true, context),
          ),
        )
      ],
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    Key? key,
    required this.leading,
    required this.title,
    required this.children,
  }) : super(key: key);
  final Widget? leading;
  final String? title;
  final Widget? children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (x) {},
      initiallyExpanded: false,
      leading: leading,
      title: Text(title!),
      children: [
        children!,
      ],
    );
  }
}

class AccountExpansionItems extends StatelessWidget {
  const AccountExpansionItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          const CustomTextFormFieldWithTopTitleWidget(
            title: 'Email',
            hintText: 'youremail@xmail.com',
          ),
          const CustomTextFormFieldWithTopTitleWidget(
            title: 'Full Name',
            hintText: 'Willam Benett',
          ),
          const CustomTextFormFieldWithTopTitleWidget(
            title: 'Street Address',
            hintText: '465 Nolan Causeway Suite 079',
          ),
          const CustomTextFormFieldWithTopTitleWidget(
            title: 'Apt, Suite, Blgd (optional)',
            hintText: 'Unit 512',
          ),
          const CustomTextFormFieldWithTopTitleWidget(
            title: 'Zip Code',
            hintText: '77017',
            widthPercent: 20,
          ),
          CustomCancelSaveButton(
            buttonText1: 'Cancel',
            buttonText2: 'Save',
            onButton1Press: () {},
            onButton2Press: () {},
          ),
        ],
      ),
    );
  }
}

class CustomTextFormFieldWithTopTitleWidget extends StatelessWidget {
  const CustomTextFormFieldWithTopTitleWidget({
    Key? key,
    required this.title,
    required this.hintText,
    this.widthPercent = 100,
  }) : super(key: key);
  final String? title, hintText;
  final double? widthPercent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontSize: 16,
                  color: const Color(0xff263238),
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: getPercentSize(widthPercent!, false, context),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
