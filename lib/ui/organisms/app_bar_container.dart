import 'package:flutter/material.dart';
import 'package:sliver_header_sample/ui/atoms/anime_image.dart';
import 'package:sliver_header_sample/ui/atoms/icon_under_text_button.dart';
import 'package:sliver_header_sample/ui/molecules/anime_action_row.dart';
import 'package:sliver_header_sample/ui/molecules/anime_creator_row.dart';
import 'package:sliver_header_sample/ui/molecules/anime_title_row.dart';
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
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: height * 0.8,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (context, constraint) {
                return Row(
                  children: <Widget>[
                    // Left Content.
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(top: 12.0, left: 8.0),
                        child: Container(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                // Anime Image Atom
                                Expanded(
                                  child: AnimeImage(
                                      id: '1222',
                                      imageUrl:
                                          'https://images-na.ssl-images-amazon.com/images/I/91lGzi-QrvL._SL1500_.jpg',
                                      width: constraint.maxWidth),
                                ),
                                // Rating Container Molecule
                                RatingContainer(
                                    height: height / 10,
                                    width: constraint.maxWidth,
                                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                                    rating: 4.2,
                                    total: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Right Content.
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: EdgeInsets.only(top: 12.0, right: 8.0, left: 8.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              // 製作・放送
                              AnimeCreatorRow(vendor: 'エイベックス・ピクチャーズ', broadcaster: 'TBS'),
                              // 余白
                              SizedBox(height: 10.0),
                              // タイトル
                              AnimeTitleRow(
                                  title:
                                      '「(この世界はもう俺が救って富と権力を手に入れたし、女騎士や女魔王と城で楽しく暮らしてるから、俺以外の勇者は)もう異世界に来ないでください。」',
                                  textColor: Color(0xFF030D11),
                                  fontSize: 12.0,
                                  age: 2017),
                              // 余白(ボタンを下つけ)
                              Expanded(child: Container()),
                              // ボタン
                              AnimeActionRow(height: 50.0, isWatched: true, isHope: false),
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
          Container(
            height: height * 0.2,
            width: double.infinity,
            child: LayoutBuilder(builder: (context, constraint) {
              const items = [
                const IconButton('視聴', 'assets/images/icons/play-icon.png'),
                const IconButton('キャスト', 'assets/images/icons/play-icon.png'),
                const IconButton('グッズ', 'assets/images/icons/play-icon.png'),
                const IconButton('ニュース', 'assets/images/icons/play-icon.png'),
                const IconButton('公式HP', 'assets/images/icons/play-icon.png'),
              ];
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(items.length, (index) {
                  return IconUnderTextButton(
                    asset: items[index].asset,
                    text: items[index].text,
                    height: constraint.maxHeight / 2,
                    width: constraint.maxHeight / 2,
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    onPressed: () => print('${items[index].text}ボタンをタップ'),
                  );
                }),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class IconButton {
  final String text;
  final String asset;

  const IconButton(this.text, this.asset);
}
