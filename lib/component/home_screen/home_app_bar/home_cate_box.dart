import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noonting_view_draw/provider/cate_provider.dart';
import 'package:noonting_view_draw/utils/parse_util.dart';

class HomeCateBox extends ConsumerWidget {
  final String cate;
  const HomeCateBox({super.key, required this.cate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref
            .read(filterProvider.notifier)
            .update((state) => ParseUtil.ParseToFilterStateFromString(cate));
      },
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            cate,
          ),
        ),
      ),
    );
  }
}
