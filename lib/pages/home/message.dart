import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/Dilalogs/dialogs.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFFCFCFC),
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
                color: Color(0xFF0268B2),
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
                      children: const [
                        Text(
                          'مرحبا ...',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 43,
                          ),
                        ),
                        Text(
                          'كيف يمكننا مساعدتك؟',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontFamily: 'NotoBold',
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
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
                    const Text(
                      'الاسم:',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        color: Color(0xFF0268B2),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      height: 43,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const TextField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'البريد الإلكتروني:',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        color: Color(0xFF0268B2),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      height: 43,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'الرسالة:',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        color: Color(0xFF0268B2),
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9F9F9),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: const TextField(
                        maxLines: 8,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(50, 185, 215, 1)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(31, 9, 31, 9)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Dialogs.messageDialog(context);
                      },
                      child: Container(
                        height: 33,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: const Text(
                          'إرسال',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'NotoBold',
                              color: Colors.white),
                        ),
                      ),
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
