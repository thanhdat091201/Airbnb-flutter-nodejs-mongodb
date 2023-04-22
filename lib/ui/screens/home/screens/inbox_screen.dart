import 'package:airbnb/infrastructure/commons/constants/image_constants.dart';
import 'package:airbnb/ui/commons/text_widget/app_text.dart';
import 'package:airbnb/ui/screens/home/screens/widgets/notification_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  bool isMessageSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                const AppText(
                  title: 'Inbox',
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    ImageConstants.bellEmptyIcon,
                    height: 20,
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    ImageConstants.menuIcon,
                    height: 20,
                    width: 20,
                  ),
                )
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    //  color: Colors.black,
                    color: Color.fromARGB(255, 201, 201, 201),
                  ),
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMessageSelected = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2.5, color: isMessageSelected ? Colors.black : Colors.transparent,
                            // color: Color.fromARGB(255, 201, 201, 201),
                          ),
                        ),
                      ),
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: const AppText(
                        title: "Messages",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMessageSelected = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2.5, color: !isMessageSelected ? Colors.black : Colors.transparent,
                            // color: Color.fromARGB(255, 201, 201, 201),
                          ),
                        ),
                      ),
                      margin: const EdgeInsets.only(right: 8, left: 16),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: const AppText(
                        title: "Notifications",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const NotificationTile(title: "Connect with Facebook to complete your profile and make it easy to log in."),
            const NotificationTile(
                title:
                    "Please confirm your email address by clicking on the link we've just emailed you. If you cannot find the email, you can request a new confirmation email or change your email address."),
          ],
        ),
      ),
    );
  }
}
