import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:noonting_view_draw/component/common/category_box.dart';
import 'package:noonting_view_draw/component/common/user_icon_box.dart';
import 'package:noonting_view_draw/component/home_screen/home_feed/feed_image_box.dart';
import 'package:noonting_view_draw/model/feed_model.dart';
import 'package:noonting_view_draw/utils/date_util.dart';
import 'package:noonting_view_draw/utils/parse_util.dart';

class FeedLayOut extends StatelessWidget {
  final FeedModel feedModel;
  const FeedLayOut({super.key, required this.feedModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: feedModel.imgUrl != null ? 400 : 250,
        child: Column(
          children: [
            _UserInfo(feedModel: feedModel),
            Flexible(
                fit: FlexFit.tight, child: _Description(feedModel: feedModel)),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              height: 1,
            ),
          ],
        ));
  }
}

class _UserInfo extends StatelessWidget {
  final FeedModel feedModel;
  const _UserInfo({super.key, required this.feedModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          UserIconBox(userModel: feedModel.user),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(feedModel.user.name),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      CategoryBox(
                          category: ParseUtil.ParseToStringFromFilterState(
                              feedModel.category)),
                      SizedBox(
                        width: 8,
                      ),
                      Text(DateUtil.discWriteTime(feedModel.writeTime)),
                    ],
                  )
                ],
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
        ],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  final FeedModel feedModel;
  const _Description({
    super.key,
    required this.feedModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (feedModel.imgUrl != null)
            SizedBox(
              height: 150,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: feedModel.imgUrl!
                      .map(
                        (e) => FeedImageBox(imgUrl: e),
                      )
                      .toList()),
            ),
          SizedBox(
            height: 8,
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    feedModel.desc,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                _feedback(),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFC3C3C3)),
            ),
            height: 1,
          ),
          _feedbackBtn(),
        ],
      ),
    );
  }

  Widget _feedback() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text("조회: ${feedModel.view}"),
            Text(" · "),
            Text("관심: ${feedModel.like}"),
          ],
        ),
        Row(
          children: [
            Row(
              children: [Text("😍"), Text(feedModel.emotion.love.toString())],
            ),
            Row(
              children: [Text("😆"), Text(feedModel.emotion.good.toString())],
            ),
            Row(
              children: [Text("😔"), Text(feedModel.emotion.sad.toString())],
            ),
          ],
        ),
      ],
    );
  }

  Widget _feedbackBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Fluttertoast.showToast(msg: "공감하기 버튼");
            },
            child: Row(
              children: [Text('😍'), Text(" "), Text("공감하기")],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          InkWell(
            onTap: () {
              Fluttertoast.showToast(msg: "댓글쓰기 버튼");
            },
            child: Row(
              children: [Icon(Icons.comment_rounded), Text(" "), Text("댓글쓰기")],
            ),
          ),
        ],
      ),
    );
  }
}
