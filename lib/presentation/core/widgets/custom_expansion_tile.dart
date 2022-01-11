import '../../../application/auth/signup/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
