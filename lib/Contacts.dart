import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTab extends StatelessWidget {
  final Uri _urlgmail = Uri.parse('https://mail.google.com/mail/u/0/#inbox');
  final Uri _urlfacebook = Uri.parse('https://www.facebook.com/');
  final Uri _urlinstagram =
      Uri.parse('https://www.instagram.com/phamgianguyen.qn/');
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, _buildContent(context)),
      maxWidth: 1200,
      minWidth: 480,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      ],
    );
  }

  Future<void> _launchUrl(_uri) async {
    if (!await launchUrl(_uri)) {
      throw Exception('Could not launch $_uri');
    }
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () async {
                await _launchUrl(_urlgmail);
              },
              child: const Card(
                //make this tapable
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.redAccent),
                  title: Text("Email"),
                  subtitle: Text("phamgianguyen.qn@gmail.com"),
                ),
              ),
            ),
            InkWell(
              onTap: () => {
                _launchUrl(_urlfacebook),
              },
              child: const Card(
                child: ListTile(
                  leading: FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.blueAccent),
                  title: Text("Facebook"),
                  subtitle: Text("facebook.com/example"),
                ),
              ),
            ),
            InkWell(
              onTap: () => {
                _launchUrl(_urlinstagram),
              },
              child: const Card(
                child: ListTile(
                  leading: FaIcon(FontAwesomeIcons.instagram,
                      color: Colors.pinkAccent),
                  title: Text("Instagram"),
                  subtitle: Text("www.instagram.com/phamgianguyen.qn"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
