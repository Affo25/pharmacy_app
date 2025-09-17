import 'package:flutter/material.dart';
import 'package:pharmacy_app/common/app_colors.dart';

class GroupButtonTile extends StatelessWidget {
  final Widget icon;
  final String title;
  final String? subtitle;
  final bool selected;
  final VoidCallback? onTap;
  final Color? selectedColor;
  final Color? color;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final double elevation;

  const GroupButtonTile({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.selected = false,
    this.onTap,
    this.selectedColor,
    this.color,
    this.borderRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
    this.elevation = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bg = selected
        ? (selectedColor ?? theme.colorScheme.primary.withOpacity(0.12))
        : (color ?? theme.cardColor);

    final textColor = selected ? Colors.white : Colors.black87;
    final subtitleColor = selected ? Colors.white.withOpacity(0.9) : Colors.black54;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOut,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: selected
            ? [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onTap,
          child: Padding(
            padding: padding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Icon container
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: selected
                        ? Colors.white.withOpacity(0.2)
                        : Colors.black.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: IconTheme(
                      data: IconThemeData(
                        color: selected ? Colors.white : primaryColors,
                        size: 32,
                      ),
                      child: icon,
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                // Texts
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: textColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 6),
                        Text(
                          subtitle!,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: subtitleColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
