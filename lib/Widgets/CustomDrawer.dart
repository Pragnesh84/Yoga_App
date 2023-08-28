import 'package:flutter/material.dart';
import 'package:project/Home1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:project/services/localdb.dart';
import 'package:project/SplashScreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  Future<void> shareApp() async {
    await FlutterShare.share(
        title: 'Hey I am using Yoga For Beginners App',
        text: 'Hey I am using Yoga For Beginners App. It has best yoga workout for all age groups. You should try it once.',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Example Chooser Title');
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit:  BoxFit.cover,
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-TZgjcNif2X3swGhSlqbtCCbQQqzC2zpurFQjrj1uvNeo4aT9-IEUDwPIjm6p53aLo0E&usqp=CAU")
                )
            ),
          ),
          ListTile(
            title: Text("Reset Progress" , style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.restart_alt_sharp , size: 25,),
            onTap: (){
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('RESET PROGRESS'),
                    actionsAlignment: MainAxisAlignment.center,
                    actionsPadding: EdgeInsets.symmetric(vertical: 15 , horizontal: 10),
                    content: Text('This will reset all of your fitness data including Total Workout Time, Streak and Burned Calories. The action cannot be revert once done.'),
                    actions: [
                      ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Cancel" , style: TextStyle(fontSize: 15),) ,style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 18 , horizontal: 35))),),
                      ElevatedButton(onPressed: () async{
                        await LocalDB.setWorkOutTime(0);
                        await LocalDB.setkcal(0);
                        await LocalDB.setStreak(0);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreen()));
                      }, child: Text("Reset" , style: TextStyle(fontSize: 15),) ,style: ButtonStyle(padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 18 , horizontal: 35))),)
                    ],
                  )
              );
            },
          ),
          ListTile(
            title: Text("Share With Friends" , style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.share , size: 25,),
            onTap: shareApp ,
          ),
          ListTile(
            title: Text("Rate Us" , style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.star , size: 25,),
            onTap: () async{
              await launchUrl(Uri.parse("https://play.google.com/store/apps/details?id=com.dhruv.aiem"));
            },
          ),

          ListTile(
            title: Text("Privacy Policy" , style: TextStyle(fontSize: 18),),
            leading: Icon(Icons.security , size: 25,),
            onTap: () async{

              // https://sites.google.com/view/yogaforbeginners-indianyoga/privacy-policy
              await launchUrl(Uri.parse("https://sites.google.com/view/yogaforbeginners-indianyoga/privacy-policy"));

            },
          ),
          Divider(thickness: 2, endIndent: 30, indent: 30,),
          Text("Version 1.0.0" , style: TextStyle(fontWeight: FontWeight.bold),)

        ],
      ),
    );
  }
}