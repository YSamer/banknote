import 'package:banknote/src/app/data/models/category_model.dart';
import 'package:banknote/src/app/providers/category_provider.dart';
import 'package:banknote/src/app/utils/color.dart';
import 'package:banknote/src/presentation/home/subCategory/sub_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({super.key, required this.category,required this.iconImage});
  final Category category;
  String iconImage ;
  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (_) => ChangeNotifierProvider<CategoryProvider>.value(
              value: CategoryProvider(widget.category.id!),
              child: const SubCategoryPage(),
            ),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 45,
          right: MediaQuery.of(context).size.width / 45,
          bottom: MediaQuery.of(context).size.height / 45,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 9,
          width: MediaQuery.of(context).size.width / 0.6,
          decoration:
              BoxDecoration(color: p3, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
               CircleAvatar(
                backgroundColor: p7,
              radius: 25,
                backgroundImage:  AssetImage(
                  widget.iconImage,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 25,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.category.titl ?? ' ',
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.category.desc ?? ' ',
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      color: p7, borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.category.date ?? ' ',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        widget.category.price ?? ' ',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
