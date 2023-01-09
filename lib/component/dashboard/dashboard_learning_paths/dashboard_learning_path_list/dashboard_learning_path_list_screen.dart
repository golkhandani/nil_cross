import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/authentication_gaurd.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class DashboardLearningPathListScreen extends StatefulWidget {
  static const routerName = 'DashboardLearningPathListRouter';
  static const routerPath = 'learning-paths';
  const DashboardLearningPathListScreen({super.key});

  @override
  State<DashboardLearningPathListScreen> createState() => _DashboardLearningPathListScreenState();
}

class _DashboardLearningPathListScreenState extends State<DashboardLearningPathListScreen>
    with AuthenticationGuardMixin {
  final LearningPathListBloc _bloc = locator.get();
  final ScrollController _scrollController = ScrollController();
  bool showHeaderIcon = true;

  @override
  void initState() {
    _bloc.add(const LearningPathListEvent.load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearningPathListBloc, LearningPathListState>(
      bloc: _bloc,
      builder: (context, state) {
        return Scaffold(
          body: Builder(builder: (context) {
            if (state.isLoading && state.learningPaths.isEmpty) {
              return kLoadingBox;
            }
            if (state.isLoading == false && state.learningPaths.isEmpty) {
              return kNotFoundBox;
            }
            return NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [];
              },
              body: Container(
                color: Colors.white,
                child: CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      toolbarHeight: 54,
                      elevation: 0,
                      pinned: true,
                      floating: true,
                      snap: false,
                      backgroundColor: Colors.white,
                      expandedHeight: 200,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.parallax,
                        centerTitle: true,
                        expandedTitleScale: 1.6,
                        title: Text(
                          'Learning Path Categories!',
                          style: kHeadingTextStyle.copyWith(fontSize: 16, color: Colors.black),
                        ),
                        background: Stack(
                          children: [
                            Container(
                              color: Colors.white54,
                              width: context.width,
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                    "https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                placeholder: (context, url) => kLoadingBox,
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                            BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10,
                                sigmaY: 10,
                                tileMode: TileMode.mirror,
                              ),
                              child: Container(
                                color: Colors.white38,
                              ),
                            ),
                            ScrollableOpacity(
                                scrollController: _scrollController,
                                scrollDirection: ScrollDirection.reverse,
                                scrollLimit: 10,
                                child: const Center(
                                  child: Icon(
                                    Icons.library_books,
                                    size: 80,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    SliverAppBar(
                      pinned: true,
                      floating: false,
                      snap: false,
                      expandedHeight: 0,
                      toolbarHeight: 0,
                      bottom: AppBar(
                        elevation: 0,
                        toolbarHeight: 64,
                        backgroundColor: Colors.white,
                        centerTitle: true,
                        title: Container(
                          margin: const EdgeInsets.all(16),
                          child: Center(
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(
                                  maxHeight: 48, minHeight: 48, minWidth: 320, maxWidth: 400),
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: kSearchDecoration.copyWith(
                                    hintText: 'Search', hintStyle: TextStyle(fontSize: 14)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    LearningPathCategoryItems(
                      categoryTitle: 'Category 1!',
                      learningPaths: state.learningPaths,
                    ),
                    LearningPathCategoryItems(
                      categoryTitle: 'Category 2!',
                      learningPaths: state.learningPaths,
                    ),
                    LearningPathCategoryItems(
                      categoryTitle: 'Category 3!',
                      learningPaths: state.learningPaths,
                    ),
                    LearningPathCategoryItems(
                      categoryTitle: 'Category 4!',
                      learningPaths: state.learningPaths,
                    ),
                    LearningPathCategoryItems(
                      categoryTitle: 'Category 5!',
                      learningPaths: state.learningPaths,
                    )
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}

class ScrollableOpacity extends StatefulWidget {
  const ScrollableOpacity({
    Key? key,
    required this.scrollController,
    this.child,
    required this.scrollLimit,
    required this.scrollDirection,
  }) : super(key: key);
  final Widget? child;
  final ScrollController scrollController;
  final double scrollLimit;
  final ScrollDirection scrollDirection;

  @override
  State<ScrollableOpacity> createState() => _ScrollableOpacityState();
}

class _ScrollableOpacityState extends State<ScrollableOpacity> {
  bool showHeaderIcon = true;

  @override
  void initState() {
    widget.scrollController.addListener(_scrollControllerListener);
    super.initState();
  }

  void _scrollControllerListener() {
    if (!mounted) {
      return;
    }
    final isDown = widget.scrollController.position.userScrollDirection == widget.scrollDirection;
    final isDownEnough = widget.scrollController.offset > widget.scrollLimit;
    // print(1 - widget.scrollController.offset / context.height);
    // print(context.height);
    if (isDown && isDownEnough && showHeaderIcon) {
      setState(() {
        showHeaderIcon = false;
      });
    } else if (!isDown && !isDownEnough && !showHeaderIcon) {
      setState(() {
        showHeaderIcon = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: showHeaderIcon ? 1 : 0,
      duration: const Duration(milliseconds: 100),
      child: widget.child,
    );
  }
}

class LearningPathCategoryItems extends StatefulWidget {
  final List<dynamic> learningPaths;
  final String categoryTitle;
  const LearningPathCategoryItems({
    Key? key,
    required this.learningPaths,
    required this.categoryTitle,
  }) : super(key: key);

  @override
  State<LearningPathCategoryItems> createState() => _LearningPathCategoryItemsState();
}

class _LearningPathCategoryItemsState extends State<LearningPathCategoryItems> {
  @override
  Widget build(BuildContext context) {
    final ratio = context.screenType == ScreenType.largePortrait ? 8 : 2.8;
    final cardSize = (context.width / ratio).floorToDouble();

    final height = cardSize + 40;
    final width = cardSize;
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(16),
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.categoryTitle,
              style: kTitleTextStyle,
            ),
            const Spacer(),
            SizedBox(
              height: cardSize,
              child: CustomScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                slivers: [
                  ...widget.learningPaths.map(
                    (learningPath) {
                      double randomFactor = 1.5 + Random().nextInt(120) / 100;
                      return LearningPathItem(
                        learningPath: learningPath,
                        height: height,
                        width: width * randomFactor,
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

class LearningPathItem extends StatefulWidget {
  final dynamic learningPath;
  final double height;
  final double width;
  const LearningPathItem({
    Key? key,
    required this.learningPath,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<LearningPathItem> createState() => _LearningPathItemState();
}

class _LearningPathItemState extends State<LearningPathItem> {
  final LearningPathListBloc _bloc = locator.get();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () => _bloc.add(LearningPathListEvent.select(widget.learningPath.toString())),
        child: Card(
          elevation: 10,
          color: Colors.white,
          shadowColor: Colors.black,
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    "https://images.unsplash.com/photo-1671227498016-93aa927686f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                placeholder: (context, url) => kLoadingBox,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
