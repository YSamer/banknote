import 'dart:io';

import 'package:banknote/src/app/utils/color.dart';
import 'package:banknote/src/app/widgets/button.dart';
import 'package:banknote/src/presentation/home/SubmitForm/widget/file_card.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddAttachmentWidget extends StatefulWidget {
  const AddAttachmentWidget({Key? key, this.onFetchImage, this.isImage = false})
      : super(key: key);

  final bool isImage;

  final Function(File)? onFetchImage;

  @override
  State<AddAttachmentWidget> createState() => _AddAttachmentWidgetState();
}

class _AddAttachmentWidgetState extends State<AddAttachmentWidget> {
  final ImagePicker _picker = ImagePicker();
  File? _imageFile;

  bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Choose Profile Photo",
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton.icon(
                icon: const Icon(
                  Icons.camera,
                ),
                onPressed: () {
                  _getImage(ImageSource.camera);
                },
                label: const Text("camera"),
              ),
              TextButton.icon(
                icon: const Icon(
                  Icons.image,
                ),
                onPressed: () {
                  _getImage(ImageSource.gallery);
                },
                label: const Text("Gallery"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Theme.of(context).cardColor,
          width: 0.2,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.07),
            offset: const Offset(12, 26),
            blurRadius: 50,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr('attachments'),
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          DottedBorder(
            color: Theme.of(context).primaryColor,
            strokeWidth: 1,
            radius: const Radius.circular(10),
            dashPattern: const [10],
            borderType: BorderType.RRect,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 14),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: _imageFile != null
                  ? Container(
                      height: MediaQuery.of(context).size.height / 1.5,
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Image(
                          image: FileImage(_imageFile!), fit: BoxFit.cover),
                    )
                  : Column(
                      children: [
                        Image.asset(
                          'assets/icon/Upload.png',
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 5.8,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 35,
                        ),
                        Text(
                          tr('upload_image'),
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 35,
                        ),
                        Button(
                          buttonText: tr('choose_file'),
                          onpress: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return bottomSheet();
                                });
                          },
                          textColor: p3,
                          buttonColor: p1,
                          buttonRadius: 12,
                          buttonHight: 60,
                          buttonWidth: 150,
                          textSize: 18,
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
