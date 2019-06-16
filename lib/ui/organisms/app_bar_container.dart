import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';
import 'package:sliver_header_sample/ui/atoms/anime_image.dart';
import 'package:sliver_header_sample/ui/molecules/rating_container.dart';

class AppBarContainer extends StatelessWidget {
  final double height;

  AppBarContainer({
    Key key,
    @required this.height,
  })  : assert(height != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Column(
        children: <Widget>[
          // TODO: Molecules
          Container(
            height: height * 0.8,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (context, constraint) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(top: 12.0, left: 8.0),
                        child: Container(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                // Anime Image Atom
                                AnimeImage(
                                  id: '1222',
                                  imageUrl:
                                      'https://images-na.ssl-images-amazon.com/images/I/91lGzi-QrvL._SL1500_.jpg',
                                  width: constraint.maxWidth,
                                ),
                                // Rating Container Molecule
                                RatingContainer(
                                  height: height / 10,
                                  width: constraint.maxWidth,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  rating: 4.2,
                                  total: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 12.0, right: 8.0, left: 8.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              // TODO: Create Molecules Contents
                              Container(
                                child: Row(
                                  // TODO: 改行
                                  children: <Widget>[
                                    Text(
                                      "エイベックス・ピクチャーズ",
                                      style: textTheme.caption.copyWith(
                                          color: Color(0xFF030D11),
                                          fontSize: screenAwareSize(
                                              8.0, context,
                                              flag: true),
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                      ",",
                                    ),
                                    Text(
                                      "TBS",
                                      style: textTheme.caption.copyWith(
                                          color: Color(0xFF030D11),
                                          fontSize: screenAwareSize(
                                              8.0, context,
                                              flag: true),
                                          decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              // タイトル
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "「(この世界はもう俺が救って富と権力を手に入れたし、女騎士や女魔王と城で楽しく暮らしてるから、俺以外の勇者は)もう異世界に来ないでください。」",
                                        style: textTheme.subtitle.copyWith(
                                          color: Color(0xFF030D11),
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenAwareSize(
                                              12.0, context,
                                              flag: true),
                                        ),
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "2017",
                                        style: textTheme.subtitle.copyWith(
                                          color: Color(0xFF030D11),
                                          fontSize: screenAwareSize(
                                            12.0,
                                            context,
                                            flag: true,
                                          ),
                                        ),
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // ボタン
                              Expanded(
                                child: Container(),
                              ),
                              Container(
                                width: double.infinity,
                                height:
                                    screenAwareSize(50.0, context, flag: true),
                                child: LayoutBuilder(
                                    builder: (context, constraint) {
                                  return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      // TODO: Create Atom Button
                                      Stack(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            child: Container(
                                              height: constraint.maxHeight,
                                              width: constraint.maxHeight,
                                              color: Colors.deepOrangeAccent,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Center(
                                                        child: Icon(
                                                          Icons.check,
                                                          color: Colors.white,
                                                          size: screenAwareSize(
                                                            24.0,
                                                            context,
                                                            flag: true,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10.0,
                                                    ),
                                                    Text(
                                                      "見た",
                                                      style: textTheme.caption
                                                          .copyWith(
                                                        fontSize:
                                                            screenAwareSize(
                                                                8.0, context,
                                                                flag: true),
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: constraint.maxHeight,
                                            width: constraint.maxHeight,
                                            color: Colors.white30,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                            child: Container(
                                              height: constraint.maxHeight,
                                              width: constraint.maxHeight,
                                              color: Colors.deepOrangeAccent,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Center(
                                                        child: Icon(
                                                          Icons.remove_red_eye,
                                                          color: Colors.white,
                                                          size: screenAwareSize(
                                                            24.0,
                                                            context,
                                                            flag: true,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10.0,
                                                    ),
                                                    Text(
                                                      "見たい",
                                                      style: textTheme.caption
                                                          .copyWith(
                                                        fontSize:
                                                            screenAwareSize(
                                                                8.0, context,
                                                                flag: true),
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          // TODO: Molecules
          Container(
            height: height * 0.2,
            width: double.infinity,
            child: LayoutBuilder(builder: (context, constraint) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  // TODO: Create Atom Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/icons/play-icon.png',
                            width: constraint.maxHeight / 2,
                            height: constraint.maxHeight / 2,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "視聴",
                            style: textTheme.overline.copyWith(
                                fontSize:
                                    screenAwareSize(8.0, context, flag: true)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/icons/play-icon.png',
                            width: constraint.maxHeight / 2,
                            height: constraint.maxHeight / 2,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "キャスト",
                            style: textTheme.overline.copyWith(
                                fontSize:
                                    screenAwareSize(8.0, context, flag: true)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/icons/play-icon.png',
                            width: constraint.maxHeight / 2,
                            height: constraint.maxHeight / 2,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "グッズ",
                            style: textTheme.overline.copyWith(
                                fontSize:
                                    screenAwareSize(8.0, context, flag: true)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/icons/play-icon.png',
                            width: constraint.maxHeight / 2,
                            height: constraint.maxHeight / 2,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "ニュース",
                            style: textTheme.overline.copyWith(
                                fontSize:
                                    screenAwareSize(8.0, context, flag: true)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/icons/play-icon.png',
                            width: constraint.maxHeight / 2,
                            height: constraint.maxHeight / 2,
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "公式HP",
                            style: textTheme.overline.copyWith(
                                fontSize:
                                    screenAwareSize(8.0, context, flag: true)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
