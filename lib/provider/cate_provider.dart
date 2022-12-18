import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noonting_view_draw/model/feed_model.dart';
import 'package:noonting_view_draw/test_data.dart';

final cateProvider = Provider<List<FeedModel>>((ref) {
  final filterState = ref.watch(filterProvider);
  final cateListState = ref.watch(cateListProvider);

  if (filterState == FilterState.all) {
    return cateListState;
  }

  return cateListState
      .where((element) => element.category == filterState)
      .toList();
});

enum FilterState {
  //"전체", "가족이야기", "물물교환", '결혼생활', '임신·출산', '19금'
  all,
  family,
  exchange,
  marry,
  baby,
  adult,
}

final filterProvider = StateProvider<FilterState>((ref) => FilterState.all);

final cateListProvider =
    StateNotifierProvider<CateStateManager, List<FeedModel>>(
        (ref) => CateStateManager());

class CateStateManager extends StateNotifier<List<FeedModel>> {
  CateStateManager() : super(testData);
}
