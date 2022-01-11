import '../../application/auth/signup/signup_bloc.dart';
import '../../injection.dart';
import '../core/size.dart';
import '../core/widgets/custom_expansion_tile.dart';
import '../core/widgets/custom_snack_bar.dart';
import '../design/coolors.dart';
import 'widgets/custom_expansion_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt!<SignupBloc>()..add(const SignupEvent.getUserCredentials()),
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.showError!) {
            ScaffoldMessenger.of(context).showSnackBar(
              customSnackBar('Credential Error'),
            );
          }
        },
        builder: (context, state) {
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
                        state.isLoading!
                            ? const CircularProgressIndicator(color: Coolors.kOrangeColor)
                            : Text(
                                state.firstName == null || state.lastName == null
                                    ? '${state.name}'
                                    : "${state.firstName} ${state.lastName}",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                        state.email != null
                            ? Text(
                                '${state.email}',
                                style: Theme.of(context).textTheme.headline5,
                              )
                            : Text(
                                'not Found',
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
                                index: 0,
                                leading: SvgPicture.asset(
                                  'assets/person_icon.svg',
                                  height: 25,
                                ),
                                title: 'Account',
                                children: const AccountExpansionItems(),
                              ),
                              const Divider(
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                              ),
                              CustomExpansionTile(
                                index: 1,
                                leading: SvgPicture.asset(
                                  'assets/password_icon.svg',
                                  height: 25,
                                ),
                                title: 'Passwords',
                                children: const AccountExpansionItems(),
                              ),
                              const Divider(
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                              ),
                              CustomExpansionTile(
                                index: 2,
                                leading: SvgPicture.asset(
                                  'assets/notification_icon.svg',
                                  height: 25,
                                ),
                                title: 'Notifications',
                                children: const AccountExpansionItems(),
                              ),
                              const Divider(
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                              ),
                              CustomExpansionTile(
                                index: 3,
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
        },
      ),
    );
  }
}
