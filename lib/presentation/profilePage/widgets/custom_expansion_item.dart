import '../../../application/auth/signup/signup_bloc.dart';
import '../../homePage/widgets/custom_cancel_save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile_page.dart';
import 'custom_text_form_field_with_top_title_widget.dart';

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
                onChange: (String v) {},
                textEditingController: _firstNameController,
              ),
              CustomTextFormFieldWithTopTitleWidget(
                title: 'Last name',
                hintText: 'Benett',
                onChange: (String v) {},
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
                  ? Center(
                      child: CircularProgressIndicator(
                        key: UniqueKey(),
                        color: Colors.orange,
                      ),
                    )
                  : CustomCancelSaveButton(
                      buttonText1: 'Cancel',
                      buttonText2: 'Save',
                      onButton1Press: () {},
                      onButton2Press: () {
                        BlocProvider.of<SignupBloc>(context).add(
                          SignupEvent.postUserChangedName(
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                          ),
                        );
                      },
                    ),
            ],
          ),
        );
      },
    );
  }
}
