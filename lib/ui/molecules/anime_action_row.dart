import 'package:flutter/material.dart';
import 'package:sliver_header_sample/helper/helper.dart';
import 'package:sliver_header_sample/ui/atoms/square_icon_button.dart';

class AnimeActionRow extends StatefulWidget {
  final double height;
  final bool isWatched;
  final bool isHope;

  const AnimeActionRow({
    Key key,
    @required this.height,
    @required this.isWatched,
    @required this.isHope,
  }) : super(key: key);

  @override
  _AnimeActionRowState createState() => _AnimeActionRowState(height: height);
}

class _AnimeActionRowState extends State<AnimeActionRow> {
  final double height;

  bool isWatched;
  bool isHope;

  _AnimeActionRowState({
    this.height,
  });

  @override
  void initState() {
    isWatched = widget.isWatched;
    isHope = widget.isHope;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAwareSize(height, context, flag: true),
      child: LayoutBuilder(builder: (context, constraint) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            // CheckDisable State.
            SquareIconButton(
              width: constraint.maxHeight,
              height: constraint.maxHeight,
              icon: Icons.check,
              padding: EdgeInsets.all(8.0),
              text: "視聴済",
              isCheck: isWatched,
              backgroundColor: colorBackgroundDecision(isWatched),
              iconColor: colorTextDecision(isWatched),
              textColor: colorTextDecision(isWatched),
              onPressed: () {
                //TODO: データ更新
                print('視聴済みボタンタップ');
                this.setState(() {
                  isWatched = !isWatched;
                });
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            // Checkable State
            SquareIconButton(
              width: constraint.maxHeight,
              height: constraint.maxHeight,
              icon: Icons.remove_red_eye,
              padding: EdgeInsets.all(8.0),
              text: "見たい",
              isCheck: isHope,
              backgroundColor: colorBackgroundDecision(isHope),
              iconColor: colorTextDecision(isHope),
              textColor: colorTextDecision(isHope),
              onPressed: () {
                //TODO: データ更新
                print('見たいボタンタップ');
                this.setState(() {
                  isHope = !isHope;
                });
              },
            ),
          ],
        );
      }),
    );
  }

  Color colorBackgroundDecision(bool isCheck) {
    return isCheck ? Colors.deepOrangeAccent : Colors.white;
  }

  Color colorTextDecision(bool isCheck) {
    return isCheck ? Colors.white : Colors.deepOrangeAccent;
  }
}
