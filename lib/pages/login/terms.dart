import 'package:flutter/material.dart';
import 'package:lastsaid/pages/components/styledWidgets/styled_texts.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0268B2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(23, 60, 23, 60),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Container(
              margin: const EdgeInsets.only(right: 20, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 20),
                  customText(context, 'الشروط والأحكام:', 16.5, false, 0xFF0268B2), 
                  Container(
                    height: 490,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: Color.fromARGB(179, 245, 245, 245),
                    ),
                    child: Scrollbar(
                      thumbVisibility: true,
                      child: ListView(
                        padding: const EdgeInsets.only(right: 5),
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                SizedBox(height: 6),
                                Text('تمهيد',
                                    textDirection: TextDirection.rtl,
                                    style: TitleStyle.tstyle),
                                Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    'هذه الشروط والأحكام بمثابة اتفاق رسمي بين سائد لتقنية المعلومات “سائد لايت” ومستخدمي التطبيق.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'تتمثل شروط المستخدم في استخدامهم لتطبيق سائد لايت والذي هو عبارة عن نظام محاسبي رقمي سحابي يوفر لمستخدميه تسجيل وحفظ بياناتهم المحاسبية واستخدامها في إصدار الفواتير والتقارير. ',
                                    style: ParagraphStyle.pstyle),
                              ]),
                          const SizedBox(height: 6),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('التغييرات',
                                    textDirection: TextDirection.rtl,
                                    style: TitleStyle.tstyle),
                                Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    'هذه الاتفاقية من الممكن أن تتغير في أي وقت، لذلك يجب عليك مراجعتها دورياً من وقت لآخر للتأكد من أنك موافق على ما ورد فيها.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'وتقع مسؤولية مراجعتها على المستخدم.',
                                    style: ParagraphStyle.pstyle),
                              ]),
                          const SizedBox(height: 6),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('شروط العضوية ',
                                    textDirection: TextDirection.rtl,
                                    style: TitleStyle.tstyle),
                                Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    'يعتبر بند التمهيد والتغييرات جزءاً لا يتجزأ من هذه الاتفاقية ومكملة ومتممة له.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يشترط تسجيل المستخدم في التطبيق باسمه التجاري، ولا يستخدم أي أسماء مجهولة أو غير حقيقية أو مبهمة؛ وبمجرد التسجيل كمنشأة فإنه يقر بأنه يمثل قانونياً هذه المنشأة وفق الاشتراطات والأنظمة المعمول بها في المملكة العربية السعودية.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'ويلتزم من يقوم بتسجيل المنشأة في التطبيق أن يكون مخولاً بذلك قانونًا ومسؤولاً عن البيانات المد خلة وعن دقتها وقانونيتها، ويلتزم بتحديثها كلما حدث أي تغيير لها، وسوف يتم التأكد من البيانات المدخلة من قبل فريق سائد ويحق لهم اتخاذ الإجراءات القانونية أو الشكلية لتقديم ما يثبت صحة بيانات المخول في حال وجود أي إشكال.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب على المستخدم تزويدنا ببيانات تسجيل العضوية والتي قد تشمل (الاسم، رقم الجوال، السجل التجاري، الشهادة الضريبية، العنوان، البريد الإلكتروني).',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب على المستخدم تسجيل العضوية في تطبيق سائد لايت برقم الجوال والبريد الإلكتروني التابعة له وتعيين كلمة المرور للعضوية، حتى يتمكن من استلام أي إشعارات مرسلة له سواء من تطبيق سائد لايت أو من قبل فريق سائد.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يحظر على أي مستخدم التسجيل بأكثر من حساب وسيقوم الفريق بحذف جميع الحسابات في حال اكتشافهم.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب على المستخدم الحفاظ على عملية تسجيل الدخول التي تخصه عبر رقم الجوال وكلمة المرور الخاصة به، ولا يقوم بالإفصاح عنها، وفي جميع الأحوال يكون المستخدم مسؤولاً عن كافة التعاملات التي تتم من خلال حسابه في التطبيق وتخلي سائد مسؤوليتها من أي مخالفة في الحساب أو سوء استخدام.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'تقدم العضوية في التطبيق بنظام الترخيص، ويحق لفريق سائد سحب هذا الترخيص وإيقاف استخدام العضوية في أي وقت من الأوقات عند اكتشاف سوء استخدام للخدمة أو مخالفة للنظام العام أو سياسة الاستخدام والشروط والأحكام هذه.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب استخدام التطبيق في حدود الأغراض المعلنة من خلال هذه الشروط أو تلك المعلنة عبر صفحات النظام، بحسن نية وعدم التلاعب على التطبيق بأي صورة من الصور الواضحة أو المخفية.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'في حال تم الإنهاء أو سحب الترخيص سيتم حفظ بيانات المستخدم لمدة 30 يومًا، وبعدها سيتم حذف هذه البيانات ولا يحق للمستخدم مطالبة سائد لتقنية المعلومات بأي بيانات سابقة له.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب على المستخدم ابلاغنا في حالة اكتشاف أي ممارسات أو أنشطة غير قانونية او مشبوهة من خلال التطبيق.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب أن يحافظ المستخدم على سمعة التطبيق ولا يسيء له بصورة مباشرة أو غير مباشرة، وألا يتسبب لسائد في أضرار مباشرة أو غير مباشرة أو معنوي أو مادي ويحق لسائد في حال وجود ذلك المطالبة قانونياً برد الاعتبار ويتحمل المخالف رسوم المحاماة وأتعاب التقاضي ولا يحق لصاحب العضوية مطالبة سائد بأي أعباء قانونية في حال مخالفته لهذه الشروط والأحكام.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يحق لمالك العضوية استرداد المبلغ المدفوع خلال فترة أقصاها 7 أيام من تاريخ الدفع بشرط ألا يتم اصدار أي فاتورة أو استرجاع أو أي عملية محاسبية أو إدارية على النظام وفي حال وجود ذلك فلا يحق له استرداد المبلغ لكون النظام تم استخدامه ولا يحق له مطالبة سائد بأي حق قانوني أو مالي نتيجة ذلك.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يقر مالك العضوية بهذه الاتفاقية أن هذا النظام ملك لسائد ولا يحق له نسخ أو استنساخ أو تعديل أو حذف أي من واجهاته أو خصائصه ويقر بأن لسائد حق الملكية الفكرية فيه.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يحق للمشترك الحصول على الدليل الارشادي للخدمات المقدمة لباقة "سائد لايت " والوصول إلى منصة الدعم الفني مشيرين إلى أن باقات الدعم تتطلب رسوم مستحدثة بشكل دوري _ لمزيد من التفاصيل الرجاء الانتقال إلى بند رسوم الدعم الفني.',
                                    style: ParagraphStyle.pstyle),
                              ]),
                          const SizedBox(height: 6),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('الدعم الفني',
                                    textDirection: TextDirection.rtl,
                                    style: TitleStyle.tstyle),
                                Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    'يتوفر بالتطبيق نوعين من الدعم الفني، مجاني وبرسوم.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يوفر التطبيق الدعم الفني المجاني من خلال أيقونة الدعم عن طريق اختيار إرسال الرسالة عبر الإيميل وذلك طوال فترة الاشتراك ويكون التجاوب من يوم إلى 3 أيام.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'وكذلك عن طريق المحادثة (الروبوت، الرد التلقائي).',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'كما يتوفر الدعم الفني العاجل مقابل 200 ريال ويكون الرد خلال 12 ساعة.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'في حالة قيام المستخدم بالدعم الفني بنفسه أو الاستعانة بغيره لتقديمه فيجب ألا يؤثر ذلك على أحكام هذه الاتفاقية ولا تتحمل سائد لتقنية المعلومات أي نتائج ناشئة عن الدعم الفني من غير المصرح لهم من جانب المؤسسة.',
                                    style: ParagraphStyle.pstyle),
                              ]),
                          const SizedBox(height: 6),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('الدفع',
                                    textDirection: TextDirection.rtl,
                                    style: TitleStyle.tstyle),
                                Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    'من خلال إنشاء الحساب والاشتراك في التطبيق أو تجديد الاشتراك، فإن المستخدم يفيد بموافقته على الرسوم المفروضة',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'مقابل الخدمة التي طلبها وقد تكون على أساس سنوي أو شهري أو يومي ويتم تجديد اشتراكه تلقائيا عند القرب من انتهاء صلاحيته أو حتى بعد انتهاء صلاحية الاشتراك بالأسعار التي تكون مطبقة في حينها وعلى الرغم من ذلك فإن تجديد الاشتراك مسؤوليته تقع على عاتق المستخدم وحده.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب على المستخدم دفع قيمة الاشتراك عن طريق حوالة بنكية إلى حسابنا، أو عبر وسائل الدفع المتاحة من داخل التطبيق',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجوز لفريق سائد تعديل أو تحديث الأسعار من وقت لآخر. ويقع على عاتق المستخدم مسؤولية معرفة الأسعار الحالية للاشتراكات المقدمة من خلال الصفحة الشخصية ثم الاشتراك.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'يجب على المستخدم الحافظ على سرية بيانات الدفع الخاصة به والحرص على عدم استخدام أي وسائل مشبوهة أو برمجيات غير مرخصة والتأكد من صحة بيانات رابط الدفع المخصص في لموقع سائد لتقنية المعلومات وتخلي سائد مسؤوليتها الكاملة في حال وجود أي عمليات نصب او احتيال على صفحتها الإلكترونية.',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'في حال عدم قيام المستخدم بدفع قيمة الاشتراك المستحق، سيتم منحه مهلة للسداد أقصاها 30 يوما قبل إيقاف الخدمة.',
                                    style: ParagraphStyle.pstyle),
                              ]),
                          const SizedBox(height: 6),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text('للتواصل معنا',
                                    textDirection: TextDirection.rtl,
                                    style: TitleStyle.tstyle),
                                Text(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    'إذا كان لديك أي أسئلة بشأن شروط المستخدم هذه، أو تعاملاتك في التطبيق، يمكنكم التواصل معنا عبر',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'البريد الالكتروني : said@light.com',
                                    style: ParagraphStyle.pstyle),
                                Text(
                                    textAlign: TextAlign.justify,
                                    textDirection: TextDirection.rtl,
                                    'أو الرقم الموحد : 0099999888',
                                    style: ParagraphStyle.pstyle),
                              ]),
                          const SizedBox(height: 6),
                          const Text('نشكرك على وقتك ...',
                              textDirection: TextDirection.rtl,
                              style: ParagraphStyle.pstyle)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(3.5),
                            // shadowColor: MaterialStateProperty.all(Color(0xF9CC4E1)),
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                  color: Color.fromRGBO(50, 185, 215, 1),
                                  width: 0.2),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(
                              const Color.fromRGBO(50, 185, 215, 1),
                            ),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.fromLTRB(48, 9, 48, 9)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'الغاء',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'NotoBold',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(3.5),
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
                            Navigator.pop(context);
                          },
                          child: const Text('الموافقة',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'NotoBold',
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TitleStyle {
  static const tstyle = TextStyle(
      fontFamily: 'NotoBold',
      color: Color.fromRGBO(50, 185, 215, 1),
      decoration: TextDecoration.underline,
      fontSize: 15,
      fontWeight: FontWeight.bold);
}

class ParagraphStyle {
  static const pstyle = TextStyle(
      fontFamily: 'NotoBold',
      color: Color(0xFF0268B2),
      fontSize: 13.5,
      height: 1.8);
}
