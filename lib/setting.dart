import 'package:flutter/material.dart';

class MySetting extends StatelessWidget {
  const MySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          "Setting",
          style: TextStyle(
            color: Color.fromARGB(255, 103, 144, 105),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  "https://marketplace.canva.com/EAFqNrAJpQs/1/0/1600w/canva-neutral-pink-modern-circle-shape-linkedin-profile-picture-WAhofEY5L1U.jpg"),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Eka Mira",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text("ekamiranovitas@gmail.com"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15.0),
                width: 350,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 103, 144, 105),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      _optionSetting(
                        setting: Icons.people,
                        description: "Personal Data",
                      ),
                      Divider(),
                      _optionSetting(
                        setting: Icons.notification_add,
                        description: "Notification",
                      ),
                      Divider(),
                      _optionSetting(
                        setting: Icons.privacy_tip,
                        description: "Privacy and Security",
                      ),
                      Divider(),
                      _optionSetting(
                        setting: Icons.email,
                        description: "Email",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.black87,
                  ),
                ),
                child: Text('Sign Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _optionSetting extends StatelessWidget {
  final IconData setting;
  final String description;

  const _optionSetting({
    super.key,
    required this.setting,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(setting),
        Padding(
          padding:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
          child: Text(description),
        ),
        Spacer(),
        Icon(Icons.arrow_back),
      ],
    );
  }
}
