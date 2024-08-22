import 'package:education_app_ui/core/common/app_navigator.dart';
import 'package:education_app_ui/core/common/presentation/pages/home/home_page.dart';
import 'package:education_app_ui/core/theme/app_colors.dart';
import 'package:education_app_ui/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late int currentPage;
  List welcomeImages = [
    {
      'image':'assets/images/welcomesix.svg',
      'label': 'Explore events worldwide',
    },
    {
      'image':'assets/images/partying.svg',
      'label': 'Celebrate with friends',
    },
    {
      'image':'assets/images/welcomeseven.svg',
      'label': 'Share unforgettable moments',
    },
    {
      'image':'assets/images/havefun.svg',
      'label': 'Have fun with friends',
    },
    {
      'image':'assets/images/welcomefive.svg',
      'label': 'Organise your events',
    },
  ];

  @override
  void initState(){
    currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.primaryLightColor1,
        child: Column(
          children: [
          /**------------------ Pageview Builder to display welcome images--------------------------- */
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(18),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: AppColors.primaryLightColor1,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(120)
                        )
                      ),
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: welcomeImages.length,
                        onPageChanged: (index){
                          setState(() {
                            currentPage = index;
                          });
                          print(currentPage);
                        },
                        itemBuilder: (context, index){
                          return SvgPicture.asset(
                            welcomeImages[index]['image'],
                              semanticsLabel: welcomeImages[index]['label']
                          );
                      }),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(welcomeImages[currentPage]['label'], style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  welcomeImages.length, 
                                  (index) => AnimatedContainer(
                                    duration: Duration(milliseconds: 2),
                                      margin: const EdgeInsets.all(3),
                                      width: 30,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: currentPage == index ? AppColors.primaryDeepColor: Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                   ),
                                ),
                            ),
                          ],
                        ),
                      ) 
                    ),
                ]
              )
            ),
          /**------------------ End Pageview Builder to display welcome images --------------------------- */

          /**------------------ App Short Description--------------------------- */
            const AppDescription()
          /**------------------ END App Short Description--------------------------- */

          ],
        ),
      ),
    );
  }
}

class AppDescription extends StatelessWidget {
  const AppDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(120)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:30.0 , left: 24, right: 24),
          child: Column(
            children: [
              Text("JOSENT", style: TextStyle(
                color: Colors.deepPurple,
                letterSpacing: 2,
                fontSize: 24,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text("Join, Share And Enjoy Events", 
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              SizedBox(height: 15,),
              Text("Don\'t be bored during weekends, explore events in your locality, join and celebrate with friends. Discover new faces, new places and have fun...", 
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              SizedBox(height: 35,),
              CustomRoundedButton(btnText: "Get Started", action:(){
                  AppNavigator.pushReplace(context, HomePage());
                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
              })  
            ],
          ),
        ),
      ),
    );
  }
}