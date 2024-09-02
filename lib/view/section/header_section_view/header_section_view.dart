import 'package:flutter/material.dart';
import 'package:tile_shop/res/components/my_text.dart';
import 'package:tile_shop/res/my_colors/my_colors.dart';
import 'package:tile_shop/res/responsive/responsive.dart';

class HeaderSectionView extends StatelessWidget {
  const HeaderSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
      decoration: BoxDecoration(
        color: Responsive.isMobile(context)
            ? Colors.transparent
            : MyColors.whiteColor.withOpacity(0.5),
      ),
      child: Responsive.isMobile(context)
          ? Icon(
              Icons.menu,
              size: 30,
              color: MyColors.whiteColor,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText(
                  title: "BEAT 18 GROUP",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: MyColors.flutterColor,
                  fontFamily: 'Oswald',
                  letterSpacing: 2,
                ),
                Row(
                  children: [
                    _buildNavItem("Home"),
                    const SizedBox(width: 14),
                    _buildNavItem("About"),
                    const SizedBox(width: 14),
                    _buildNavItem("Contact"),
                    const SizedBox(width: 150),
                  ],
                ),
              ],
            ),
    );
  }

  Widget _buildNavItem(String title) {
    return Container(
      decoration: const BoxDecoration(
        border:
            Border(bottom: BorderSide(color: MyColors.flutterColor, width: 5)),
      ),
      child: MyText(
        title: title,
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'Oswald',
        letterSpacing: 2,
        color: MyColors.blacColor, // Ensures color consistency
      ),
    );
  }
}
