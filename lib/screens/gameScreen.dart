import 'package:flutter/material.dart';
import 'package:manga_toon/widgets/customNavBar.dart';
import 'package:manga_toon/widgets/customTopBar.dart';

import '../const/colors.dart';
import '../utils/helper.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});
  static const routeName = "/gameScreen";

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> with TickerProviderStateMixin {
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
                        Column(
                          children: [
                            Text(
                              "Ngay trong tầm tay",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text("Tải những trò chơi này xuống"),
                          ],
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
                          CateBigCard(
                              image: Image.asset(
                                Helper.getAssetName("image.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5,
                              cate: "Hành động"),
                          CateBigCard(
                              image: Image.asset(
                                Helper.getAssetName("image.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5,
                              cate: "Hành động"),
                          CateBigCard(
                              image: Image.asset(
                                Helper.getAssetName("image.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5,
                              cate: "Hành động"),
                          CateBigCard(
                              image: Image.asset(
                                Helper.getAssetName("image.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5,
                              cate: "Hành động"),
                          CateBigCard(
                              image: Image.asset(
                                Helper.getAssetName("image.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              thumbnail: Image.asset(
                                Helper.getAssetName("thumbnail.webp", "real"),
                                fit: BoxFit.fill,
                              ),
                              name: "Zooba: Fun Battle Royale Games",
                              vote: 4.5,
                              cate: "Hành động"),
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
                game: true,
                book: false,
                appl: false,
              )),
        ],
      ),
    );
  }
}

class CateBigCard extends StatelessWidget {
  CateBigCard({
    Key? key,
    required Image thumbnail,
    required String name,
    required String cate,
    required double vote,
    required Image image,
  })  : _thumbnail = thumbnail,
        _name = name,
        _cate = cate,
        _vote = vote,
        _image = image,
        super(key: key);

  final String _name;
  final Image _thumbnail;
  final String _cate;
  final double _vote;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
        child: Container(
            width: Helper.getScreenWidth(context) / 1.85,
            height: Helper.getScreenHeight(context) / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    height: 120,
                    width: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child: _image,
                      ),
                    )),
                SizedBox(
                  height: 12,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(10), // Image border
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(48), // Image radius
                            child: _thumbnail,
                          ),
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _name,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(_cate),
                          Text("$_vote"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}

class CateSmallCard extends StatelessWidget {
  CateSmallCard({
    Key? key,
    required Image thumbnail,
    required String name,
    required double vote,
  })  : _thumbnail = thumbnail,
        _name = name,
        _vote = vote,
        super(key: key);

  final String _name;
  final Image _thumbnail;
  final double _vote;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
        child: Container(
            width: 120,
            height: Helper.getScreenHeight(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child: _thumbnail,
                      ),
                    )),
                SizedBox(height: 8),
                Text(
                  _name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                SizedBox(height: 5),
                Text("$_vote"),
              ],
            )
        )
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48), // Image radius
                        child: _thumbnail,
                      ),
                    )),
                SizedBox(width: 16,),
                Container(
                  width: Helper.getScreenWidth(context)/1.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(_cate),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text("$_vote"),
                          SizedBox(width: 10,),
                          Text("65MB")
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}

class Loai extends StatelessWidget {
  Loai({
    Key? key,
    required IconData icon,
    required String name,
  })  : _icon = icon,
        _name = name,
        super(key: key);

  final String _name;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
        child: Container(
            width: Helper.getScreenWidth(context),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(_icon, size: 30, color: AppColor.main,),
                SizedBox(width: 20,),
                Text(_name)
              ],
            )
        )
    );
  }
}
