import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:outlay/model/outlay.dart';
import 'package:outlay/outlay_theme.dart';
import 'package:date_format/date_format.dart';

class NewOutlay extends StatefulWidget {
  const NewOutlay(
      { super.key, required this.toggleNewOutlay, required this.isNewOutlayVisible });

  final void Function() toggleNewOutlay;
  final bool isNewOutlayVisible;

  @override
  State<NewOutlay> createState() => _NewOutlay();
}

class _NewOutlay extends State<NewOutlay> {
  Category? _category;
  AmountType? _amountType = AmountType.debit;
  bool showErrorWidget = false;
  DateTime _selectedDate = DateTime.now();

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  void _showDatePicker() {
    final now = DateTime.now();
    showCupertinoModalPopup(
      context: context,
      builder: (_) =>
          Container(
            color: OutlayTheme.darkBackgroundColor,
            height: 180,
            child: SizedBox(
              height: 180,
              child: CupertinoTheme(
                data: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: OutlayTheme.headerFont,)),
                child: CupertinoDatePicker(
                  initialDateTime: now,
                  dateOrder: DatePickerDateOrder.dmy,
                  maximumDate: now,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (value) {
                    setState(() {
                      _selectedDate = value;
                    });
                  },
                ),
              ),
            ),
          ),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.isNewOutlayVisible,
      child: Container(
        height: 150,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: const Text(
                '//NEW EXPENSE',
                style: OutlayTheme.newOutlayCardHeaderFont,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: OutlayTheme.darkBackgroundColor,
                    ),
                    child: TextField(
                      controller: _titleController,
                      style: OutlayTheme.titleFont,
                      decoration: const InputDecoration(
                        hintText: '//TITLE',
                        border: InputBorder.none,
                        hintStyle: OutlayTheme.newOutlayCardFont,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: OutlayTheme.darkBackgroundColor,
                  ),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isDense: false,
                        iconSize: 0.0,
                        value: _amountType,
                        onChanged: (value) {
                          if (value == null) {
                            return;
                          }
                          setState(() {
                            _amountType = value;
                          });
                        },
                        dropdownColor: OutlayTheme.darkBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        items: AmountType.values
                            .map(
                              (type) =>
                              DropdownMenuItem(
                                value: type,
                                child: Text(
                                  type == AmountType.credit ? '+' : '-',
                                  style: type == AmountType.credit
                                      ? OutlayTheme.dropdownCreditFont
                                      : OutlayTheme.dropdownDebitFont,
                                ),
                              ),
                        )
                            .toList(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: OutlayTheme.darkBackgroundColor,
                    ),
                    child: TextField(
                      controller: _amountController,
                      style: _amountType == AmountType.credit
                          ? OutlayTheme.dropdownCreditFont
                          : OutlayTheme.dropdownDebitFont,
                      keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                        hintText: '//AMOUNT',
                        border: InputBorder.none,
                        hintStyle: OutlayTheme.newOutlayCardFont,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: OutlayTheme.darkBackgroundColor,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isDense: false,
                      iconSize: 0.0,
                      value: _category,
                      onChanged: (value) {
                        if (value == null) {
                          return;
                        }
                        setState(() {
                          _category = value;
                        });
                      },
                      hint: const Text(
                        '//CATEGORY',
                        style: OutlayTheme.newOutlayCardFont,
                      ),
                      dropdownColor: OutlayTheme.darkBackgroundColor,
                      borderRadius: BorderRadius.circular(10),
                      items: Category.values
                          .map(
                            (category) =>
                            DropdownMenuItem(
                              value: category,
                              child: Text(
                                '//${category.name.toString()}',
                                style: OutlayTheme.categoryFont,
                              ),
                            ),
                      )
                          .toList(),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: OutlayTheme.darkBackgroundColor,
                  ),
                  child: InkWell(
                    onTap: _showDatePicker,
                    child: Text(
                      formatDate(
                        _selectedDate,
                        [dd, '-', mm, '-', yyyy],
                      ),
                      style: OutlayTheme.dropdownDateFont,
                    ),
                  ),
                ),
                IconButton(
                  color: OutlayTheme.secondaryColor,
                  onPressed: () {},
                  splashRadius: 20,
                  splashColor: Colors.green,
                  icon: const Icon(Icons.check),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
