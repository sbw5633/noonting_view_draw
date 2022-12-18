import 'package:flutter/material.dart';
import 'package:noonting_view_draw/model/feed_model.dart';
import 'package:noonting_view_draw/model/user_model.dart';
import 'package:noonting_view_draw/utils/parse_util.dart';

final List<FeedModel> testData = [
  FeedModel(
    id: "01",
    user: UserModel(name: "name", imgUrl: null),
    imgUrl: [
      'assets/images/banana.jpg',
      'assets/images/car.jpg',
      'assets/images/nature.jpg',
      'assets/images/notebook.jpg'
    ],
    category: ParseUtil.ParseToFilterStateFromString("가족이야기"),
    writeTime: DateTime(2022, 12, 16),
    desc: "dsdsdsddddescdesc",
    view: 234,
    like: 12,
    emotion: Emotion(love: 3, good: 1, sad: 0),
  ),
  FeedModel(
    id: "02",
    user: UserModel(
        name: "유저닉네임", imgUrl: const AssetImage('assets/images/notebook.jpg')),
    category: ParseUtil.ParseToFilterStateFromString("물물교환"),
    writeTime: DateTime(2022, 12, 16),
    desc:
        "여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. ",
    view: 2345,
    like: 1211,
    emotion: Emotion(love: 321, good: 1234, sad: 5541),
  ),
  FeedModel(
    id: "03",
    user: UserModel(
        name: "유저닉네임", imgUrl: const AssetImage('assets/images/notebook.jpg')),
    category: ParseUtil.ParseToFilterStateFromString("물물교환"),
    imgUrl: [
      'assets/images/nature.jpg',
      'assets/images/notebook.jpg',
      'assets/images/banana.jpg',
      'assets/images/car.jpg',
    ],
    writeTime: DateTime(2022, 12, 16),
    desc:
        "여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. ",
    view: 2345,
    like: 1211,
    emotion: Emotion(love: 321, good: 1234, sad: 5541),
  ),
  FeedModel(
    id: "04",
    user: UserModel(
        name: "유저닉네임", imgUrl: const AssetImage('assets/images/notebook.jpg')),
    category: ParseUtil.ParseToFilterStateFromString("19금"),
    imgUrl: [
      'assets/images/notebook.jpg',
      'assets/images/nature.jpg',
      'assets/images/car.jpg',
      'assets/images/banana.jpg',
    ],
    writeTime: DateTime(2022, 12, 16),
    desc:
        "여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. ",
    view: 2345,
    like: 1211,
    emotion: Emotion(love: 321, good: 1234, sad: 5541),
  ),
  FeedModel(
    id: "05",
    user: UserModel(
        name: "유저닉네임", imgUrl: const AssetImage('assets/images/notebook.jpg')),
    category: ParseUtil.ParseToFilterStateFromString("결혼생활"),
    imgUrl: [
      'assets/images/nature.jpg',
      'assets/images/banana.jpg',
      'assets/images/car.jpg',
      'assets/images/notebook.jpg',
    ],
    writeTime: DateTime(2022, 12, 16),
    desc:
        "여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. 여기는 내용이 들어갑니다. ",
    view: 2345,
    like: 1211,
    emotion: Emotion(love: 321, good: 1234, sad: 5541),
  ),
];
