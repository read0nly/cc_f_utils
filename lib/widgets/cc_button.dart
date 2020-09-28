import 'package:flutter/material.dart';

class CCButton extends StatefulWidget {
  final Color bgColor;
  final Color disableBgColor;
  final Color highlightBgColor;
  final String title;
  final double titleSize;
  final Color titleColor;
  final Color disableTitleColor;
  final Color highlightTitleColor;
  final bool enable;
  final BorderRadius borderRadius;
  final Size size;
  final Border border;
  final VoidCallback onTap;

  const CCButton({
    Key key,
    this.bgColor = Colors.white,
    this.disableBgColor,
    this.highlightBgColor,
    this.title = '',
    this.titleSize = 14,
    this.titleColor = const Color(0xFF333333),
    this.disableTitleColor = const Color(0xFF999999),
    this.highlightTitleColor = const Color(0xFF333333),
    this.enable = true,
    this.borderRadius,
    this.size,
    this.border,
    this.onTap,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => CCButtonState();
}

class CCButtonState extends State<CCButton> {
  bool _isHighlight = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.enable ? widget.onTap?.call() : null,
      onHighlightChanged: (isHighlight) =>
          setState(() => _isHighlight = isHighlight),
      child: Container(
        width: widget.size?.width,
        height: widget.size?.height,
        decoration: BoxDecoration(
          color: widget.enable
              ? (_isHighlight
                  ? widget.highlightBgColor ?? widget.bgColor
                  : widget.bgColor)
              : widget.disableBgColor ?? widget.bgColor,
          borderRadius: widget.borderRadius,
          border: widget.border,
        ),
        alignment: Alignment.center,
        child: Text(
          widget.title ?? '',
          style: TextStyle(
            color: widget.enable
                ? (_isHighlight
                    ? widget.highlightTitleColor ?? widget.titleColor
                    : widget.titleColor)
                : widget.disableTitleColor ?? widget.titleColor,
            fontSize: widget.titleSize,
          ),
        ),
      ),
    );
  }
}
