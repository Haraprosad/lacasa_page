import 'package:flutter/material.dart';
import 'package:lacasa_page/screen/shared/cont_element.dart';
import 'package:lacasa_page/utils/colors.dart';
import 'package:lacasa_page/utils/text_styles.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class LacasaPage extends StatefulWidget {
  @override
  _LacasaPageState createState() => _LacasaPageState();
}

class _LacasaPageState extends State<LacasaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kToolbarHeight,),
            Text("Discover",style:TextStyles.titleTextStyle),
            Text("LACASA Offers",style: TextStyles.titleTextStyle,),
            SizedBox(height: 20,),
            firstBoxWidget(),
            SizedBox(height: 15,),
            staggeredBoxWidget(),
          ],
        ),
      ),
    );
  }

  firstBoxWidget() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: ColorConstant.firstBoxColor,
      ),
      child: Center(child: Text("Home",style: TextStyles.centerTextStyle,)),
    );
  }

  staggeredBoxWidget() {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(top: 5),
        crossAxisCount: 4,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index){
          if(index == 0){
            return ContElement.getCont(firstColor: ColorConstant.st1stBoxStart,
                secondColor: ColorConstant.st1stBoxEnd,text: "Super\nMarket");
          }
          if(index == 1){
            return ContElement.getCont(firstColor: ColorConstant.st2ndBoxStart,
                secondColor: ColorConstant.st2ndBoxEnd,text: "Fashion\n&\nAccessories");
          }
          if(index == 2){
            return ContElement.getCont(firstColor: ColorConstant.st4thBoxStart,
                secondColor: ColorConstant.st4thBoxEnd,text: "Optics");

          }
          else {
            return ContElement.getCont(firstColor: ColorConstant.st3rdBoxStart,
                secondColor: ColorConstant.st3rdBoxEnd,text: "Health\n&\nBeauty");
          }

        },
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2.8 : 1.8),
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
      ),
    );
  }
}
