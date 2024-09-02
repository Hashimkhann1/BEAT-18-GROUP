

import 'package:flutter/material.dart';
import 'package:tile_shop/view/section/all_tiles_section_view/all_tiles_section_view.dart';
import 'package:tile_shop/view/section/home_section_view/home_section_view.dart';

class WholeSectionsView extends StatelessWidget {
  const WholeSectionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            HomeSectionView(),

            AllTilesSectionView(),
            SizedBox(height: 100,),
        
          ],
        ),
      ),
    );
  }
}
