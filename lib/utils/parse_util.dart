import 'package:noonting_view_draw/provider/cate_provider.dart';

class ParseUtil {
  static FilterState ParseToFilterStateFromString(String cate) {
    //"전체", "가족이야기", "물물교환", '결혼생활', '임신·출산', '19금'
    switch (cate) {
      case "가족이야기":
        return FilterState.family;
      case "물물교환":
        return FilterState.exchange;
      case "결혼생활":
        return FilterState.marry;
      case "임신·출산":
        return FilterState.baby;
      case "19금":
        return FilterState.adult;
      default:
        return FilterState.all;
    }
  }

  static String ParseToStringFromFilterState(FilterState filterState) {
    //"전체", "가족이야기", "물물교환", '결혼생활', '임신·출산', '19금'
    switch (filterState) {
      case FilterState.family:
        return "가족이야기";
      case FilterState.exchange:
        return "물물교환";
      case FilterState.marry:
        return "결혼생활";
      case FilterState.baby:
        return "임신·출산";

      case FilterState.adult:
        return "19금";
      default:
        return "";
    }
  }
}
