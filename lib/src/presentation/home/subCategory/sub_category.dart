import 'package:banknote/src/app/data/dio/exception/dio_error_extention.dart';
import 'package:banknote/src/app/providers/category_provider.dart';
import 'package:banknote/src/app/utils/color.dart';
import 'package:banknote/src/app/widgets/custom_snackbar.dart';
import 'package:banknote/src/presentation/auth/widget/arrow_back_cont.dart';
import 'package:banknote/src/presentation/home/Category/widget/category_cont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SubCategoryPage extends StatefulWidget {
  const SubCategoryPage({super.key});

  @override
  State<SubCategoryPage> createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getData();
    });
  }

  _getData() async {
    try {
      await context.read<CategoryProvider>().getCategoryDetails();
    } catch (e) {
      showCustomSnackBar(readableError(e), context, isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final instancOfCategoryProvider = Provider.of<CategoryProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(children: [
        Expanded(child: Image.asset("assets/images/Screen.jpg")),
       Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Center(child: Image.asset("assets/images/logodark.png")),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ArrowBackContainer(
                    onpress: () {
                      Get.back();
                    },
                  ),
                ),
              
                const Padding(
                  padding: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                  child: Text(
                    "Association services",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                instancOfCategoryProvider.isload
                    ? Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 5,
                          child: Center(
                            child: LoadingIndicator(
                              indicatorType: Indicator.lineScalePulseOutRapid,
                              colors: [p7],
                            ),
                          ),
                        ),
                      )
                    : SizedBox(
                        height: MediaQuery.of(context).size.height / 1.4,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: MediaQuery.of(context).size.height / 80,
                          ),
                          itemCount: instancOfCategoryProvider
                                  .category!.listCategory?.length ??
                              0,
                          itemBuilder: ((context, index) {
                            return CategoryWidget(
                                category: instancOfCategoryProvider
                                    .category!.listCategory![index],
                                     iconImage: "assets/icon/Database_light.png",);
                          }),
                        ),
                      )
              ]),
      
      ])),
    );
  }
}
