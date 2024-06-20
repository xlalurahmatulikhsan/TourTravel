import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:slicing/shared/theme/theme.dart';

class FormCostum extends StatelessWidget {
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final String title;
  final String hintText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;

  const FormCostum({
    super.key,
    this.onChanged,
    required this.title,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.validator,
    required this.obscureText,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16,
              ),
            ),
          ],
        ),
        const Gap(6),
        TextFormField(
          validator: validator,
          onChanged: onChanged,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            fillColor: whiteColor1,
            filled: true,
            hintText: hintText,
            hintStyle: greyTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: const EdgeInsets.only(top: 10),
            prefixIcon: Icon(
              prefixIcon,
              color: secondColor,
              size: 20,
            ),
            suffixIcon: suffixIcon,
          ),
          obscureText: obscureText,
        )
      ],
    );
  }
}

class FormSearch extends StatelessWidget {
  const FormSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: greenTextStyle.copyWith(
        fontWeight: regular,
        fontSize: 12,
      ),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: whiteColor1,
        filled: true,
        constraints: const BoxConstraints(maxHeight: 30),
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        hintText: 'mau kemana?',
        prefixIcon: const Icon(
          Icons.search,
          color: secondColor,
          size: 20,
        ),
      ),
    );
  }
}

class GreenForm extends StatelessWidget {
  final Function(String)? onChanged;
  final String title;
  final String hintText;
  final Widget? prefixIcon;

  const GreenForm(
      {super.key,
      this.onChanged,
      required this.title,
      required this.hintText,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 12,
          ),
        ),
        const Gap(6),
        TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
            constraints: BoxConstraints(
              maxHeight: 40,
            ),
            hintText: hintText,
            hintStyle: greyTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 12,
            ),
            prefixIcon: prefixIcon,
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: primaryColor,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
