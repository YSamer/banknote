import 'package:banknote/src/app/data/dio/exception/dio_error_extention.dart';
import 'package:banknote/src/app/data/models/category_model.dart';
import 'package:banknote/src/app/providers/category_provider.dart';
import 'package:banknote/src/app/utils/color.dart';
import 'package:banknote/src/app/widgets/custom_snackbar.dart';

import 'package:flutter/material.dart';

class TiketContainer extends StatefulWidget {
  const TiketContainer({super.key});

  @override
  State<TiketContainer> createState() => _TiketContainerState();
}

class _TiketContainerState extends State<TiketContainer> {
   @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getData();
    });
  }

  _getData() async {
    try {
      await context.read<CategoryProvider>().getCategoryhDetails();
    } catch (e) {
      showCustomSnackBar(readableError(e), context, isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
     final category = context
        .select<CategoryProvider, CategoryModel>((CategoryProvider p) => p.category);
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 40,
        right: MediaQuery.of(context).size.width / 40,
        bottom: MediaQuery.of(context).size.height / 40,
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 9,
            width: MediaQuery.of(context).size.width / 0.5,
            decoration: BoxDecoration(
                color: p6, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Stack(children: [
                  Image.asset(
                    "assets/icon/Ellipse 1653.png",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 7,
                  ),
                  Image.asset(
                    "assets/icon/Credit card_light.png",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 7,
                  ),
                ]),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 25,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.3,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Category.titel',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ' Category.desc ',
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(color: p1, fontSize: 12),
                        ),
                        Text(
                          "+50.20 EGY",
                          style: TextStyle(color: p1, fontSize: 12),
                        )
                      ],
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
