import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tile_shop/res/components/my_text.dart';
import 'package:tile_shop/res/my_colors/my_colors.dart';
import 'package:tile_shop/res/responsive/responsive.dart';
import 'package:tile_shop/view/section/header_section_view/header_section_view.dart';

class HomeSectionView extends StatelessWidget {
  const HomeSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        /// background tile iumage
        Container(
          width: width,
          height: Responsive.isMobile(context) ? height * 0.8 : height * 0.84,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://i.imgur.com/Jfkfw82.jpeg'),
                  fit: BoxFit.cover)),
        ),

        /// Header section
        const HeaderSectionView(),

        /// welcome text
        Positioned.fill(
            bottom: height * 0.12,
            child: Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                    color: Colors.grey.shade200.withOpacity(0.2),
                        child: MyText(
                      title: "Welcome to BEAT 18 GROUP",
                      fontSize: Responsive.isMobile(context) ? 32 : 50,
                      fontWeight: FontWeight.bold,
                      color: MyColors.whiteColor,
                      fontFamily: 'Oswald',
                      letterSpacing: 2,
                    )),
                  ),
                ))),
        
        Positioned.fill(child: Align(alignment: Alignment.center, child: MyText(title: "Providing supreme Quality Tiles",fontSize: 25,fontFamily: 'Oswald',fontWeight: FontWeight.bold,letterSpacing: 2,color: MyColors.blacColor.withOpacity(0.6),)))
      ],
    );
  }
}
