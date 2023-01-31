import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/categories_feature_list_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/widgets/learning_path_item_card.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class LearningPathCategoryItems extends StatefulWidget {
  final List<LearningPathSummary?> learningPaths;
  final String categoryTitle;
  const LearningPathCategoryItems({
    Key? key,
    required this.learningPaths,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  State<LearningPathCategoryItems> createState() =>
      _LearningPathCategoryItemsState();
}

class _LearningPathCategoryItemsState extends State<LearningPathCategoryItems> {
  @override
  Widget build(BuildContext context) {
    final ratio = context.screenType == ScreenType.largePortrait ? 8 : 2.8;
    final cardSize = (context.width / ratio).floorToDouble();

    final cardHeight = cardSize + 80;
    final cardWidth = cardSize;
    final sectionHeight = cardHeight + 40;

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(16),
        height: sectionHeight,
        width: double.infinity,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.categoryTitle,
              style: kTitleTextStyle,
            ),
            const Spacer(),
            SizedBox(
              height: cardHeight,
              child: CustomScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                slivers: [
                  ...widget.learningPaths.map(
                    (learningPath) {
                      if (learningPath == null) {
                        return kLoadingBox(context);
                      }
                      double randomFactor = 2.1;
                      return LearningPathItemCard(
                        learningPath: learningPath,
                        height: cardHeight,
                        width: cardWidth * randomFactor,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
