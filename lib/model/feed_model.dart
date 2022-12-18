import 'package:noonting_view_draw/model/user_model.dart';
import 'package:noonting_view_draw/provider/cate_provider.dart';

class FeedModel {
  //유저 및 글 정보
  final String id;
  final UserModel user;
  final FilterState category;
  final DateTime writeTime;
  final String desc;
  final List<String>? imgUrl;

  //커뮤니티 정보
  final int view;
  final int like;
  final Emotion emotion;

  FeedModel({
    required this.id,
    required this.user,
    required this.category,
    required this.writeTime,
    required this.desc,
    this.imgUrl,
    required this.view,
    required this.like,
    required this.emotion,
  });
}

class Emotion {
  final int love;
  final int good;
  final int sad;

  Emotion({required this.love, required this.good, required this.sad});
}
