import '../../../application/product/product_bloc.dart';
import '../../core/widgets/orange_button.dart';
import '../../design/coolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCancelSaveButton extends StatelessWidget {
  const CustomCancelSaveButton({
    Key? key,
    required this.buttonText1,
    required this.buttonText2,
    required this.onButton1Press,
    required this.onButton2Press,
  }) : super(key: key);
  final String? buttonText1, buttonText2;
  final VoidCallback? onButton1Press, onButton2Press;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: OrangeButton(
                  key: UniqueKey(),
                  title: buttonText1,
                  color: Colors.white,
                  textColor: const Color(0xff818995),
                  onTap: () => onButton1Press!(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: OrangeButton(
                  title: buttonText2,
                  onTap: () => onButton2Press!(),
                  color: Coolors.kBottomSheetButtonColor,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
