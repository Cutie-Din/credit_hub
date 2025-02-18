import 'package:credit_hub_new/src/shared/app_export.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    required this.hint,
    required this.controller,
    this.height,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText,
    this.readOnly,
    this.textInputAction = TextInputAction.done,
    this.onSubmitted,
    this.borderRadius,
    this.border,
    this.title,
    this.hintStyle,
    this.onSuffixIconTap,
    this.validator,
    super.key,
  });

  final String? title;
  final String hint;
  final double? height;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final GestureTapCallback? onSuffixIconTap;
  final bool? obscureText;
  final bool? readOnly;
  final TextInputAction textInputAction;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final TextStyle? hintStyle;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  double get _height => widget.height ?? 56;
  Widget? get _suffixIcon => GestureDetector(
        onTap: widget.onSuffixIconTap,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: widget.suffixIcon,
        ),
      );
  Widget? get _prefixIcon => widget.prefixIcon;

  TextInputType get _keyboardType => widget.keyboardType ?? TextInputType.text;

  TextEditingController get _controller => widget.controller;

  bool get _obscureText => widget.obscureText ?? false;

  bool get _readOnly => widget.readOnly ?? false;

  BorderRadiusGeometry get _borderRadius => widget.borderRadius ?? BorderRadius.circular(20);

  BoxBorder get _border => widget.border ?? Border.all(color: AppColors.black1);

  TextInputAction get _textInputAction => widget.textInputAction;

  InputDecoration get _decoration {
    return InputDecoration(
        hintText: widget.hint,
        hintStyle: widget.hintStyle,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.all(15),
        suffixIcon: _suffixIcon,
        prefixIcon: _prefixIcon);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if ((widget.title ?? '').isNotEmpty) ...[
          Text(widget.title ?? ''),
          const Gap(7),
        ],
        SizedBox(
          height: _height + 20,
          width: 327,
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.validator,
            textAlignVertical:
                (_prefixIcon == null && _suffixIcon == null) ? null : TextAlignVertical.center,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: AppColors.black4,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.black5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.black5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.primary),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.primary),
              ),
              errorStyle: const TextStyle(
                color: AppColors.primary,
                fontSize: 13,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              suffixIcon: _suffixIcon,
              prefixIcon: _prefixIcon,
              helperText: "", // Đặt helperText rỗng để giữ không gian
            ),
            cursorColor: AppColors.black5,
            keyboardType: _keyboardType,
            controller: _controller,
            obscureText: _obscureText,
            obscuringCharacter: '*',
            readOnly: _readOnly,
            textInputAction: _textInputAction,
          ),
        ),
      ],
    );
  }
}
