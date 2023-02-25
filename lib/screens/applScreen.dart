import 'package:flutter/material.dart';
import 'package:manga_toon/screens/gameScreen.dart';
import '../widgets/customTopBar.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class ApplScreen extends StatefulWidget {
  const ApplScreen({Key? key}) : super(key: key);
  static const routeName = "/applScreen";

  @override
  State<ApplScreen> createState() => _ApplScreenState();
}

class _ApplScreenState extends State<ApplScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(105.0),
        child: AppBar(
          title: CustomTopBar(),
          bottom: TabBar(
            unselectedLabelColor: AppColor.placeholder,
            labelColor: AppColor.main,
            isScrollable: true,
            indicatorColor: AppColor.main,
            indicatorWeight: 5,
            controller: _tabController,
            tabs: const <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                      'Cho Bạn',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                      'Bảng xếp hạng',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                      'Trẻ em',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                      'Có tình phí',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                      'Loại',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Được đề xuất cho bạn",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          Icons.arrow_forward,
                          size: 30,
                        )
                      ],
                    ),
                    Container(
                      height: 225,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text("Quảng cáo"),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Được đề xuất cho bạn",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 225,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ), CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ), CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ), CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ), CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ), CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ), CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("appl.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Ahamove",
                              vote: 4.5
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Được đề xuất cho bạn",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5,),
                        Icon(
                          Icons.arrow_forward,
                          size: 30,
                        )
                      ],
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("thumbnail.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Zooba: Fun Battle Royale Games",
                          vote: 4.5,
                          cate: "Hành Động"
                      ),

                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Quảng cáo"),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Được đề xuất cho bạn",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 225,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Quảng cáo"),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Được đề xuất cho bạn",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 225,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  // Link đây tự tìm Icon : https://fonts.google.com/icons?icon.set=Material+Icons&icon.platform=flutter
                  children: [
                    Loai(icon: Icons.diversity_1_outlined, name: "Câu đố"),
                    Loai(icon: Icons.account_tree_outlined, name: "Chiến thuật"),
                    Loai(icon: Icons.event_note_outlined, name: "Dạng bảng"),
                    Loai(icon: Icons.manage_search_outlined, name: "Đố vui"),
                    Loai(icon: Icons.sports_kabaddi_outlined, name: "Hành động"),
                    Loai(icon: Icons.two_wheeler_outlined, name: "Đua xe"),
                    Loai(icon: Icons.school_outlined, name: "Giáo dục"),
                    Loai(icon: Icons.sms, name: "Câu đố"),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                game: false,
                book: false,
                appl: true,
              )),
        ],
      ),
    );
  }
}

