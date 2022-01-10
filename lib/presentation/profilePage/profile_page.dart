import 'package:dokan_demo/application/auth/signup/signup_bloc.dart';
import 'package:dokan_demo/injection.dart';
import 'package:dokan_demo/presentation/core/size.dart';
import 'package:dokan_demo/presentation/core/widgets/custom_snack_bar.dart';
import 'package:dokan_demo/presentation/design/coolors.dart';
import 'package:dokan_demo/presentation/homePage/widgets/home_body.dart';
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

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    Key? key,
    required this.leading,
    required this.title,
    required this.children,
    required this.index,
  }) : super(key: key);
  final Widget? leading;
  final String? title;
  final Widget? children;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            state.isExpanded! || index != state.panelIndex
                ? _buildRow(state, context)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRow(state, context),
                      children!,
                    ],
                  ),
          ],
        );
      },
      // onExpansionChanged: (x) {
      //   BlocProvider.of<SignupBloc>(context).add(SignupEvent.expansionChanged(expansion: x));
      // },
      // controlAffinity: ListTileControlAffinity.leading,
      // initiallyExpanded: false,
      // leading: widget.leading,
      // title: Text(widget.title!),
      // children: [

      // ],
    );
  }

  InkWell _buildRow(SignupState state, BuildContext context) {
    return InkWell(
      onTap: () => BlocProvider.of<SignupBloc>(context).add(
        SignupEvent.expansionChanged(
          index: index,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: leading!,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Text(title!),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Icon(
              state.isExpanded! || index != state.panelIndex ? Icons.arrow_forward_ios_rounded : Icons.arrow_drop_down,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}

class AccountExpansionItems extends StatelessWidget {
  const AccountExpansionItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late TextEditingController _firstNameController = TextEditingController();
    late TextEditingController _lastNameController = TextEditingController();

    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormFieldWithTopTitleWidget(
                title: 'First Name',
                hintText: 'Willam',
                onChange: (String v) {
                  BlocProvider.of<SignupBloc>(context).add(SignupEvent.firstNameChanged(firstName: v));
                },
                textEditingController: _firstNameController,
              ),
              CustomTextFormFieldWithTopTitleWidget(
                title: 'Last name',
                hintText: 'Benett',
                onChange: (String v) {
                  BlocProvider.of<SignupBloc>(context).add(SignupEvent.lastNameChanged(lastName: v));
                },
                textEditingController: _lastNameController,
              ),
              CustomTextFormFieldWithTopTitleWidget(
                title: 'Street Address',
                hintText: '465 Nolan Causeway Suite 079',
                onChange: (String v) {},
                textEditingController: null,
              ),
              CustomTextFormFieldWithTopTitleWidget(
                title: 'Apt, Suite, Blgd (optional)',
                hintText: 'Unit 512',
                onChange: (String v) {},
                textEditingController: null,
              ),
              CustomTextFormFieldWithTopTitleWidget(
                title: 'Zip Code',
                hintText: '77017',
                widthPercent: 20,
                onChange: (String v) {},
                textEditingController: null,
              ),
              state.isLoading!
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.orange,
                      ),
                    )
                  : CustomCancelSaveButton(
                      buttonText1: 'Cancel',
                      buttonText2: 'Save',
                      onButton1Press: () {},
                      onButton2Press: () {
                        BlocProvider.of<SignupBloc>(context).add(const SignupEvent.postUserChangedName());
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}

class CustomTextFormFieldWithTopTitleWidget extends StatelessWidget {
  const CustomTextFormFieldWithTopTitleWidget({
    Key? key,
    required this.title,
    required this.hintText,
    this.widthPercent = 100,
    required this.onChange,
    required this.textEditingController,
    this.obscureText = false,
    this.textInputAction = TextInputAction.done,
    this.textInputType = TextInputType.text,
  }) : super(key: key);
  final String? title, hintText;
  final double? widthPercent;
  final Function(String v)? onChange;
  final TextEditingController? textEditingController;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;

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
              enableSuggestions: false,
              keyboardType: textInputType,
              textInputAction: textInputAction,
              obscureText: obscureText!,
              controller: textEditingController,
              onFieldSubmitted: (value) => onChange!(value),
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
