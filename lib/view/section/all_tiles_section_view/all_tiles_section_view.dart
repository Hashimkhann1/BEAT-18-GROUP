import 'package:flutter/material.dart';
import 'package:tile_shop/res/components/my_text.dart';
import 'package:tile_shop/res/my_colors/my_colors.dart';
import 'package:tile_shop/res/responsive/responsive.dart';

class AllTilesSectionView extends StatelessWidget {
  const AllTilesSectionView({super.key});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: Responsive.isMobile(context) ? width * 0.97 : width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.06,),

          MyText(title: "All Tiles",fontWeight: FontWeight.bold,fontFamily: 'Oswald',fontSize: 50,color: MyColors.blacColor.withOpacity(0.6),letterSpacing: 2,),
          SizedBox(height: height * 0.04,),
          
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 20,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
                    childAspectRatio: Responsive.isMobile(context) ? 2/2.5 : 2/2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    // color: Colors.black.withOpacity(0.2),
                    color: MyColors.whiteColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.flutterColor.withOpacity(0.3),
                        blurRadius: 4
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// tile image
                      Container(
                        width: width,
                        height: Responsive.isMobile(context) ? height * 0.2 : height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                          image: DecorationImage(
                            image: NetworkImage('https://i.imgur.com/2Zd0oZ7.jpeg'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),

                      /// tile name
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width* 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(title: "Name:",fontSize: Responsive.isMobile(context) ? 17 : 20,fontWeight: FontWeight.bold,fontFamily: 'Oswald',letterSpacing: 2,),
                            MyText(title: "Tile Name",fontSize: Responsive.isMobile(context) ? 20 : 25,fontWeight: FontWeight.bold,fontFamily: 'Oswald',letterSpacing: 2,color: MyColors.flutterColor,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width* 0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(title: "Price:",fontSize: Responsive.isMobile(context) ? 15 : 18,fontWeight: FontWeight.bold,fontFamily: 'Oswald',letterSpacing: 2,),
                            MyText(title: "300",fontSize: Responsive.isMobile(context) ? 17 : 22,fontWeight: FontWeight.bold,fontFamily: 'Oswald',letterSpacing: 2,color: MyColors.flutterColor,),
                          ],
                        ),
                      ),

                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
