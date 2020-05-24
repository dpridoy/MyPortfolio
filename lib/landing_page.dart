import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xff00EAFF),
                  const Color(0xff130CB7)
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(110)),
                child: Image.asset("assets/mypic.jpg", width: 150,height: 160,)
            ),
            SizedBox(height: 12,),
            Text("Md. Nasirul Haque",style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),),
            SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text("IoT Engineer || Android || Python || Machine Learning || Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87
                ),),
            ),
            SizedBox(height: 12,),
            Text("Connect With Me",style: TextStyle(
              fontSize: 13,
              color: Colors.black87
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.facebook.com/dpridoy");
                    },
                    child: Image.asset("assets/facebook_color.png",width: 23,height: 23)),
                SizedBox(width: 12,),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://github.com/dpridoy");
                    },
                    child: Image.asset("assets/github.png",width: 23,height: 23)),
                SizedBox(width: 12,),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.linkedin.com/in/dpridoy/");
                    },
                    child: Image.asset("assets/linkedin_color.png",width: 23,height: 23)),

              ],
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                _launchURL("https://drive.google.com/file/d/16yOz-xe2-jXNojY2PNd0cfu1dhf04QnB/view");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xff9708CC),
                        const Color(0xff130CB7)
                      ]
                  )
                ),
                child: Text("Download My Resume",
                style: TextStyle(

                ),),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
