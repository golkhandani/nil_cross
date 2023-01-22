import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/categories_feature_list_model.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class LearningPathItemCard extends StatefulWidget {
  final LearningPathSummary learningPath;
  final double height;
  final double width;
  final double borderRadius;
  const LearningPathItemCard(
      {Key? key,
      required this.learningPath,
      required this.height,
      required this.width,
      this.borderRadius = 10})
      : super(key: key);

  @override
  State<LearningPathItemCard> createState() => _LearningPathItemCardState();
}

class _LearningPathItemCardState extends State<LearningPathItemCard> {
  final LearningPathListBloc _bloc = locator.get();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          children: [
            Material(
              clipBehavior: Clip.none,
              elevation: 10,
              borderRadius: BorderRadius.circular(widget.borderRadius),
              // shadowColor: context.theme.shadowColor,
              child: SizedBox(
                width: widget.width,
                height: widget.height,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(widget.borderRadius),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        width: widget.width,
                        height: widget.height,
                        imageUrl: widget.learningPath.thumbnail,
                        imageBuilder: (context, imageProvider) {
                          return Material(
                            child: Ink.image(
                              image: imageProvider,
                              fit: BoxFit.cover,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: IntrinsicHeight(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(
                                              widget.borderRadius),
                                          bottomRight: Radius.circular(
                                              widget.borderRadius),
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.centerRight,
                                              end: Alignment.centerLeft,
                                              colors: [
                                                context.theme.cardColor
                                                    .withOpacity(0.1),
                                                context.theme.cardColor
                                                    .withOpacity(0.8),
                                              ],
                                            ),
                                          ),
                                          child: ClipRRect(
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 10,
                                                sigmaY: 10,
                                                tileMode: TileMode.mirror,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    FittedBox(
                                                      fit: BoxFit.fitWidth,
                                                      child: Text(
                                                        widget
                                                            .learningPath.title,
                                                        maxLines: 1,
                                                        style: kTitleTextStyle
                                                            .copyWith(
                                                          color: context
                                                              .theme
                                                              .textTheme
                                                              .bodyMedium!
                                                              .color,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: InkWell(
                                      splashColor: context.theme.primaryColor
                                          .withOpacity(0.5),
                                      onTap: () => _bloc.add(
                                        LearningPathListEvent
                                            .selectLearningPath(
                                          widget.learningPath.id,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        placeholder: (context, url) => kLoadingBox,
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
