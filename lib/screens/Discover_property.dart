import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property_trade_app/screens/house_details.dart';
import 'package:property_trade_app/utils/colors.dart';
import 'package:property_trade_app/widgets/houses_container.dart';
import 'package:property_trade_app/widgets/reusable_container.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class DiscoverProperty extends StatefulWidget {
  const DiscoverProperty({Key? key}) : super(key: key);

  @override
  State<DiscoverProperty> createState() => _DiscoverPropertyState();
}

class _DiscoverPropertyState extends State<DiscoverProperty> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("location", style:Styles.textStyle),
                            Text("Los Angeles, CA", style: Styles.headLineStyle1,)
                          ],
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height/20,
                            child: Image.asset("assets/images/img_3.png")),

                      ],),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Text("Discover Best", style: Styles.headLineStyle2,),
                      SizedBox(height: MediaQuery.of(context).size.height*.005,),
                      Text("Suitable Property", style: Styles.headLineStyle2),
                      SizedBox(height: MediaQuery.of(context).size.height*.02,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ReusableContainer(fontSize:20,height: 21,borderColor: Styles.bgColor1, width: 4.2,txt: "House",bgcolor: Styles.bgColor1,alignment: MainAxisAlignment.center,txtColor: Styles.primaryColor,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ReusableContainer(fontSize:20,height: 21,borderColor: Styles.bgColor2, width: 2.6,txt: "Appartment",bgcolor: Styles.bgColor2,alignment: MainAxisAlignment.center,txtColor: Styles.bgColor1,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ReusableContainer(fontSize:20,height: 21,borderColor: Styles.bgColor2, width: 5.8,txt: "Flat",bgcolor: Styles.bgColor2,alignment: MainAxisAlignment.center,txtColor: Styles.bgColor1,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ReusableContainer(fontSize:20,height: 21,borderColor: Styles.bgColor2, width: 2.5,txt: "Dormitory",bgcolor: Styles.bgColor2,alignment: MainAxisAlignment.center,txtColor: Styles.bgColor1,),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*.02,),
                      Text("Best for you",style: Styles.headLineStyle1,),
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                              InkWell(
                                 onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(
                                       builder: (context){
                                         return HouseDetails();
                                       }
                                   ));
                                 },
                             
                                 child: HousesContainer()),
                            SizedBox(width: MediaQuery.of(context).size.width*.021,),

                            Container(
                              decoration:  BoxDecoration(color: Styles.bgColor2,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              height: MediaQuery.of(context).size.height*.378,
                              width: MediaQuery.of(context).size.width*.83,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*.02,),
                      Text("Nearby your location",style: Styles.headLineStyle1,),
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          decoration:  BoxDecoration(color: Styles.bgColor2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                         child: Row(
                           children: [
                             Image.asset("assets/images/img_8.png",height: 90,width: 90,),
                             Padding(
                               padding: const EdgeInsets.only(top: 10.0,left: 10),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Ranch house",style: Styles.headLineStyle1,),
                                   Text("520 N Btoudry Ave Los Angeles",style: Styles.headLineStyle3),
                                   Row(
                                     children: [
                                       Image.asset("assets/images/img_5.png",height: 20,),
                                       Text("  4 Beds",style: Styles.headLineStyle4),
                                       const SizedBox(width: 10,),
                                       Image.asset("assets/images/img_6.png",height: 20,),
                                       Text("  4 Baths",style: Styles.headLineStyle4),
                                       const SizedBox(width: 10,),
                                       Image.asset("assets/images/img_7.png",height: 20,),
                                       Text("  1 Garage",style: Styles.headLineStyle4,),
                                     ],
                                   )

                                 ],
                               ),
                             )
                           ],
                         ),
                        ),
                      )







                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.search,
                size: 56,
                color: Colors.red[400],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.bookmark,
                size: 56,
                color: Colors.green[400],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.person,
                size: 56,
                color: Colors.blue[400],
              ),
            ),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          waterDropColor: Styles.bgColor2,

          backgroundColor: Styles.bgColor1,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.search_sharp,
                outlinedIcon: Icons.search_outlined),
            BarItem(
              filledIcon: Icons.bookmark,
              outlinedIcon: Icons.bookmark_outline,
            ),
            BarItem(
              filledIcon: Icons.person,
              outlinedIcon: Icons.person_outline,
            ),
          ],
        ),
      ),
    );
  }
}

