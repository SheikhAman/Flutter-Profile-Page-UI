import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1NMsr30xqT2Te-CNLIYdlAjCSP-iVJr63IQ&usqp=CAU',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: -60,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://scontent.fzyl2-1.fna.fbcdn.net/v/t39.30808-6/270031300_3028345980762984_22914836596302971_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=YkBzh35YQPMAX-P-Ysr&_nc_ht=scontent.fzyl2-1.fna&oh=00_AT_A3FrKAm0k979G1w7-yqFQxpMhJL4VYA2yVhw9UloAnA&oe=61E37CDC'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        ListTile(
          title: Center(
            child: Text(
              'Sheikh Aman',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(
              child: Text(
            'Flutter Developer',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          label: Text(
            'Hire Me',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
          ),
        ),
        ListTile(
          title: Text(
            'About Me',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          subtitle: Text(
              "Hi, I'm Sheikh Aman from Bangladesh.\nI'm an Android Developer.\nI have serious passion for UI, and sometimes fullstack.\nFeel free to check my portfolio on sheikhaman.com"),
        ),
      ],
    );
  }
}
