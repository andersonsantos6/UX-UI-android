import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerApps extends StatelessWidget {
  const DrawerApps({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconDrawer(
                      logo: 'lib/src/assets/drawerApps/github_icon.png',
                      url: 'https://github.com/andersonsantos6'),
                  IconDrawer(
                      logo: 'lib/src/assets/drawerApps/Instagram-Icon.png',
                      url:
                          'https://www.instagram.com/accounts/login/?next=/anderson.santos.dev/'),
                  IconDrawer(
                      logo: 'lib/src/assets/drawerApps/linkedin_logo.png',
                      url:
                          'https://www.linkedin.com/in/anderson-santos-364785231'),
                  IconDrawer(
                      logo: 'lib/src/assets/drawerApps/Telegram_logo.svg.png',
                      url: 'https://t.me/andersonsantos6'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconDrawer extends StatelessWidget {
  late String logo;
  late String url;

  IconDrawer({Key? key, required this.logo, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl(url);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: Colors.white,
          height: 50,
          child: Image.asset(logo),
        ),
      ),
    );
  }
}

void _launchUrl(_url) async {
  if (!await launchUrl(Uri.parse(_url))) throw 'Could not launch $_url';
}
