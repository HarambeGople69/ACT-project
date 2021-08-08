import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:myapp/models/circular_tab_model.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custom_circular_attachment.dart';
import 'package:file_picker/file_picker.dart';
import 'package:myapp/widgets/custom_pdf_file.dart';
import 'package:myapp/widgets/custom_text_field.dart';
import 'package:myapp/widgets/our_sized_height.dart';

class CircularTab extends StatefulWidget {
  const CircularTab({Key? key}) : super(key: key);

  @override
  _CircularTabState createState() => _CircularTabState();
}

class _CircularTabState extends State<CircularTab> {
  final _formKey = GlobalKey<FormState>();
  final title = TextEditingController();
  final circulatFor = TextEditingController();
  final circularAdded = TextEditingController();
  String titleText = "";
  String circularAtText = "";
  String circularAddedText = "";
  String? basename;

  File? file;
  List<CircularTabModel> circularList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setSp(15),
          vertical: ScreenUtil().setSp(10),
        ),
        child: Column(
          children: [
            Text(
              "Please pull down from top of the screen and release to get the latest updates.",
              style: BlueinfoStyle,
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  size: ScreenUtil().setSp(
                    20,
                  ),
                ),
                labelText: "Search",
                labelStyle: TextStyle(
                  fontSize: ScreenUtil().setSp(20),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: circularList.length,
                  itemBuilder: (context, index) {
                    return CustomAttachment(
                      title: circularList[index].title,
                      circularFor: circularList[index].circularFor,
                      circularAdded: circularList[index].circularAdded,
                      file: circularList[index].file,
                      basename: circularList[index].basename,
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDrawDialog(context);
        },
        child: Icon(
          Icons.add,
          size: ScreenUtil().setSp(
            25,
          ),
        ),
      ),
    );
  }

  _showDrawDialog(BuildContext contexts) {
    pickDocument() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null) {
        setState(() {
          file = File(result.files.single.path!);
          basename = file!.path.split('/').last;
        });
        // basename = file!.path.split('/').last;

        print("PDF selected=========================================");
      } else {
        // User canceled the picker
        print("No files selected");
      }
    }

    showDialog(
        barrierDismissible: false,
        context: contexts,
        builder: (BuildContext context) {
          return AlertDialog(
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomTextField(
                          onchange: (value) {
                            titleText = value;
                            print(titleText);
                          },
                          controller: title,
                          validator: (value) {
                            if (value.trim().isNotEmpty) {
                              return null;
                            } else {
                              return "Can't be empty";
                            }
                          },
                          title: "Subject name",
                          type: TextInputType.name,
                        ),
                        OurSizedHeight(),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: "Circular for:",
                              // labelStyle: paratext,
                              errorStyle: TextStyle(
                                fontSize: ScreenUtil().setSp(
                                  15,
                                ),
                              )),
                          controller: circulatFor,
                          readOnly: true,
                          onTap: () async {
                            DateTime selectTime = DateTime.now();
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: selectTime,
                              firstDate: DateTime(2021),
                              lastDate: DateTime(2022),
                            );
                            if (pickedDate != null) {
                              selectTime = pickedDate;
                              print(pickedDate);
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              circulatFor.text = formattedDate;
                              circularAtText = formattedDate;
                            } else {}
                          },
                        ),
                        OurSizedHeight(),
                        (file == null)
                            ? ElevatedButton(
                                onPressed: () async {
                                  await pickDocument();
                                  setState(() {});
                                },
                                child: Text("Upload PDF"),
                              )
                            : InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return PdfViewFile(
                                      file: file!,
                                      title: basename!,
                                    );
                                  }));
                                },
                                child: Container(
                                  child: Text("$basename"),
                                ),
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
            actions: [
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && file != null) {
                    circularList.add(CircularTabModel(
                        title: titleText,
                        circularFor: "Circular for: $circularAtText",
                        circularAdded:
                            "Circular added on ${DateFormat('yyyy-MM-dd').format(
                          DateTime.now(),
                        )}",
                        file: file!,
                        basename: basename!));
                    setState(() {
                      file = null;
                      circulatFor.text = "";
                    });
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  "Upload",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                    color: Colors.red,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    file = null;
                    circulatFor.text = "";
                  });
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(20),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
