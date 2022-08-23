import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lastsaid/pages/components/Dilalogs/dilalogs_widgets.dart';
import 'package:lastsaid/pages/components/number_roller.dart';
import 'package:lastsaid/pages/home/purchases/purchase_class.dart';
import 'package:lastsaid/pages/home/purchases/purchase_list.dart';
import 'package:lastsaid/pages/home/sales/sales_widget.dart';

import '../../components/Dilalogs/dialogs.dart';
import '../../components/styledWidgets/styled_container.dart';
import '../../components/styledWidgets/styled_texts.dart';

class Purchases extends StatefulWidget {
  const Purchases({Key? key}) : super(key: key);

  @override
  State<Purchases> createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  List<Item> items = List.of(allItems);
  void deleteDialog(int index) {
    Dialogs.deleteDialog(context, index, () {
      setState(() => items.removeAt(index));
      Navigator.pop(context, false);
    }, () {
      Navigator.pop(context, true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return CustomContainer(
      round: 10.0,
      border: true,
      width: double.infinity,
      height: 266,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customText(context, 'السعر', 11, false, 0xFF32b9d7),
                    customText(context, 'الكمية', 11, false, 0xFF32b9d7),
                    customText(context, 'العنصر', 11, false, 0xFF32b9d7),
                  ]),
            ),
          ),
          myDivider(context),
          const SizedBox(height: 2),
          SizedBox(
            height: 182,
            child: Scrollbar(
              thumbVisibility: true,
              controller: controller,
              child: ListView.builder(
                controller: controller,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Slidable(
                    startActionPane:
                        ActionPane(motion: const StretchMotion(), children: [
                      SlidableAction(
                        onPressed: ((context) => {deleteDialog(index)}),
                        icon: Icons.do_disturb_on_rounded,
                        foregroundColor: Color(0xffBE3939),
                      ),
                    ]),
                    endActionPane:
                        ActionPane(motion: const StretchMotion(), children: [
                      SlidableAction(
                        onPressed: ((context) => {deleteDialog(index)}),
                        icon: Icons.do_disturb_on_rounded,
                        foregroundColor: Color(0xffBE3939),
                      ),
                    ]),
                    child: buildListTile(item),
                  );
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child:tableFooter(context, 5.4625, 0.7125, 4.75)
            ),
        ],
      ),
    );
  }
    Widget buildListTile(Item item) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (c) => BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: AlertDialog(
                            backgroundColor:
                                const Color.fromRGBO(50, 185, 215, 1),
                            insetPadding:
                                const EdgeInsets.fromLTRB(50, 0, 50, 0),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            actions: [editPrice(context)],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        singleRow(context, 'السعر:', item.itemPrice),
                        singleRow(context, 'الضريبة:', item.task),
                        singleRow(context, 'الإجمالي:', item.total),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 60, child: NumberRoller()),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (c) => BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: AlertDialog(
                            backgroundColor:
                                const Color.fromRGBO(50, 185, 215, 1),
                            insetPadding:
                                const EdgeInsets.fromLTRB(50, 0, 50, 0),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            actions: [editItem(context)],
                          ),
                        ),
                      );
                    },
                    child: Wrap(
                      spacing: 5,
                      alignment: WrapAlignment.center,
                      children: [
                        customText(context, item.total.toString(), 12, false,
                            0xFF76797B,
                            weight: FontWeight.bold),
                        customText(context, item.unit, 11, false, 0xFF76797B,
                            weight: FontWeight.bold),
                        customText(context, item.name, 11, false, 0xFF76797B,
                            weight: FontWeight.bold)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          myDivider(context),
          const SizedBox(height: 2),
        ],
      );
  }