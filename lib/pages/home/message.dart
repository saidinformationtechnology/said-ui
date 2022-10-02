import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/Dilalogs/dialogs.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_buttons.dart';

import '../../services/constrants.dart';
import '../components/styledWidgets/styled_inputs.dart';
import '../components/styledWidgets/styled_texts.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: thirdWhite,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50),
                ), //BorderRadius.vertical
                color: primaryBlue,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 15),
                        child: IconButton(
                            icon: Image.asset('assets/icons/clear.png'),
                            iconSize: 52,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 50),
                        child: Image.asset(
                          'assets/images/hand.png',
                          width: 74,
                          height: 74,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 50),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        customText(context, 'مرحبا ...', 43, false, whiteColor,
                            align: TextAlign.start),
                        customText(context, 'كيف يمكننا مساعدتك؟', 16, false,
                            whiteColor,
                            align: TextAlign.start),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(27, 27, 27, 0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    customText(context, 'الاسم:', 15, false, primaryBlue,
                        align: TextAlign.start),
                    const SizedBox(height: 5),
                    inputField(context,
                        height: 43.0,
                        color: secondaryWhite,
                        round: 18.0,
                        shadow: false,
                        border: false,
                        fontsize: 13.2,
                        top: 8),
                    const SizedBox(
                      height: 10,
                    ),
                    customText(
                        context, 'البريد الإلكتروني:', 15, false, primaryBlue,
                        align: TextAlign.start),
                    const SizedBox(height: 5),
                    inputField(context,
                        height: 43.0,
                        color: secondaryWhite,
                        round: 18.0,
                        shadow: false,
                        border: false,
                        fontsize: 13.2,
                        top: 8,
                        type: TextInputType.emailAddress),
                    const SizedBox(
                      height: 10,
                    ),
                    customText(context, 'الرسالة:', 15, false, primaryBlue,
                        align: TextAlign.start),
                    const SizedBox(height: 5),
                    inputField(context,
                        height: 175.0,
                        color: secondaryWhite,
                        round: 18.0,
                        shadow: false,
                        border: false,
                        fontsize: 13.2,
                        top: 8.0,
                        max: 8,
                        action: TextInputAction.done),
                    const SizedBox(height: 10),
                    nextBtn(
                      context,
                      'إرسال',
                      () {
                        Dialogs.messageDialog(context);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
