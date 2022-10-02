import 'package:flutter/material.dart';

import '../../../services/constrants.dart';

Widget billTable(BuildContext context) {
  final ScrollController controller = ScrollController();
  return Column(
    children: [
      Container(
        height: 420,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(13),
            topLeft: Radius.circular(13),
          ),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: transparentBlack,
              offset: Offset(0, 1),
            ),
          ],
        ),
        // color: Colors.red,
        width: double.infinity,
        child: Scrollbar(
          thumbVisibility: true,
          controller: controller,
          child: ListView(
            controller: controller,
            children: [
              DataTable(
                horizontalMargin: 0,
                columnSpacing: 10,
                dataRowHeight: 35,
                headingRowHeight: 25.0,
                border: TableBorder.all(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                columns: [
                  DataColumn(label: dCoulmn(context, 190, 10, 'مبلغ الفاتورة')),
                  DataColumn(
                    label: dCoulmn(context, 90, 10, 'رقم الفاتورة'),
                  ),
                  DataColumn(
                    label: dCoulmn(context, 40, 12, 'ID'),
                  )
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(taskPrice(context, 2.53)),
                      DataCell(taskNum(context, 654651)),
                      DataCell(taskId(context, 12)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(13),
            bottomLeft: Radius.circular(13),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: transparentBlack,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            DataTable(
              horizontalMargin: 0,
              headingRowColor:
                  MaterialStateProperty.resolveWith((states) => primaryBlue),
              columnSpacing: 10,
              dataRowHeight: 35,
              headingRowHeight: 25.0,
              border: TableBorder.all(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                ),
                color: Colors.grey.shade200,
              ),
              columns: [
                DataColumn(
                  label: resColumn(context, 'المجموع النهائي'),
                ),
                DataColumn(
                  label: resColumn(context, 'الضريبة'),
                ),
                DataColumn(
                  label: resColumn(context, 'إجمالي الفواتير'),
                )
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(resCell(context, 11.425)),
                    DataCell(resCell(context, 2.715)),
                    DataCell(resCell(context, 45))
                  ],
                )
              ],
            ),
          ],
        ),
      )
    ],
  );
}

// ---- Table Widgets ----

Widget dCoulmn(
    BuildContext context, double width, double fontSize, String text) {
  return Container(
    width: width,
    alignment: Alignment.center,
    child: Text(
      text,
      style: TextStyle(
        fontFamily: 'NotoBold',
        fontSize: fontSize,
        color: cyan,
      ),
    ),
  );
}

Widget resColumn(BuildContext context, String text) {
  return Container(
    width: 112,
    alignment: Alignment.center,
    child: Text(
      text,
      style: const TextStyle(
        fontFamily: 'NotoBold',
        fontSize: 10,
        color: cyan,
      ),
    ),
  );
}

Widget resCell(BuildContext context, double num) {
  return Container(
    width: 112,
    alignment: Alignment.center,
    child: Text(
      num.toString(),
      style: const TextStyle(
          fontFamily: 'NotoBold',
          fontSize: 13.5,
          height: 2.7,
          fontWeight: FontWeight.w600,
          color: primaryBlue),
    ),
  );
}

Widget taskPrice(BuildContext context, double price) {
  return SizedBox(
    width: 190,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              constraints: const BoxConstraints(
                maxWidth: 33,
              ),
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/printer.png',
              ),
            ),
            IconButton(
              onPressed: () {},
              constraints: const BoxConstraints(
                maxWidth: 33,
              ),
              icon: Image.asset(
                'assets/icons/viewed.png',
              ),
            ),
          ],
        ),
        Text(
          price.toString(),
          style: const TextStyle(
              fontFamily: 'NotoBold',
              fontSize: 13.5,
              height: 2.7,
              fontWeight: FontWeight.w600,
              color: lightGray),
        ),
        const SizedBox(width: 30)
      ],
    ),
  );
}

Widget taskNum(BuildContext context, int num) {
  return Container(
    width: 95,
    alignment: Alignment.center,
    child: Text(
      num.toString(),
      style: const TextStyle(
          fontFamily: 'NotoBold',
          fontSize: 13,
          height: 2.7,
          fontWeight: FontWeight.w600,
          color: lightGray),
    ),
  );
}

Widget taskId(BuildContext context, int id) {
  return Container(
    width: 40,
    alignment: Alignment.center,
    child: Text(
      '#$id',
      style: const TextStyle(
          fontFamily: 'NotoBold',
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: lightGray),
    ),
  );
}
