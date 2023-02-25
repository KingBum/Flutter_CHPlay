import 'package:flutter/material.dart';
import 'package:manga_toon/screens/gameScreen.dart';
import '../const/colors.dart';
import '../widgets/customTopBar.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);
  static const routeName = "/bookScreen";

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
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
            indicatorWeight: 6,
            controller: _tabController,
            tabs: const <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                  'Sách điện tử',
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                  'Sách nói',
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                  'Thể loại',
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                  'Bán chạy nhất',
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                  'Mới phát hành',
                  style: TextStyle(fontSize: 18),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, top: 10),
                child: Center(
                    child: Text(
                  'Miễn phí phổ biến',
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
                        SizedBox(
                          width: 5,
                        ),
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
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
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
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("bookne.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Chúng ta sống vì điều gì ?",
                              vote: 4.5),
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
                        SizedBox(
                          width: 5,
                        ),
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
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
                      CateCrossCard(
                          thumbnail: Image.asset(
                            Helper.getAssetName("bookne.webp", "real"),
                            fit: BoxFit.fill,
                          ),
                          name: "Chúng ta sống vì điều gì",
                          vote: 4.5,
                          cate: "Hành Động"),
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
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
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
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                          CateSmallCard(
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  // Link đây tự tìm Icon : https://fonts.google.com/icons?icon.set=Material+Icons&icon.platform=flutter
                  children: [
                    Loai(icon: Icons.diversity_1_outlined, name: "Câu đố"),
                    Loai(
                        icon: Icons.account_tree_outlined, name: "Chiến thuật"),
                    Loai(icon: Icons.event_note_outlined, name: "Dạng bảng"),
                    Loai(icon: Icons.manage_search_outlined, name: "Đố vui"),
                    Loai(
                        icon: Icons.sports_kabaddi_outlined, name: "Hành động"),
                    Loai(icon: Icons.two_wheeler_outlined, name: "Đua xe"),
                    Loai(icon: Icons.school_outlined, name: "Giáo dục"),
                    Loai(icon: Icons.sms, name: "Câu đố"),
                  ],
                ),
                Column(
                  children: [
                    CateCrossCard(
                        thumbnail: Image.asset(
                          Helper.getAssetName("bookne.webp", "real"),
                          fit: BoxFit.fill,
                        ),
                        name: "Chúng ta sống vì điều gì",
                        vote: 4.5,
                        cate: "Hành Động"),
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
                book: true,
                appl: false,
              )),
        ],
      ),
    );
  }
}

class CateCrossCard extends StatelessWidget {
  CateCrossCard({
    Key? key,
    required Image thumbnail,
    required String name,
    required double vote,
    required String cate,
  })  : _thumbnail = thumbnail,
        _name = name,
        _vote = vote,
        _cate = cate,
        super(key: key);

  final String _name;
  final String _cate;
  final Image _thumbnail;
  final double _vote;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
        child: Container(
            width: Helper.getScreenWidth(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 90,
                    height: 110,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child: _thumbnail,
                      ),
                    )),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: Helper.getScreenWidth(context) / 1.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(_cate),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text("$_vote"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("65MB")
                        ],
                      ),
                      SizedBox(height: 5),
                      Text("Miễn Phí")
                    ],
                  ),
                )
              ],
            )));
  }
}
