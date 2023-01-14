import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/common/ui/scrollable_opacity.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_category_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/widgets/learning_path_category_items.dart';
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
    if (_bloc.state.learningPathCategories.isEmpty) {
      _bloc.add(const LearningPathListEvent.load());
    }

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
            if (state.isLoading == false && state.learningPathCategories.isEmpty) {
              return kNotFoundBox;
            }
            return NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [];
              },
              body: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    toolbarHeight: 54,
                    elevation: 0,
                    pinned: true,
                    floating: true,
                    snap: false,
                    backgroundColor: context.theme.backgroundColor,
                    expandedHeight: 160,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.parallax,
                      centerTitle: true,
                      expandedTitleScale: 1.6,
                      title: Text(
                        state.learningPathCategoriesPageTitle!,
                        style: kTitleTextStyle.copyWith(
                          fontSize: 16,
                          color: context.theme.textTheme.titleLarge?.color,
                        ),
                      ),
                      background: Stack(
                        children: [
                          Container(
                            color: context.theme.backgroundColor,
                            width: context.width,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: state.learningPathCategories[0].thumbnail,
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
                              color: context.theme.backgroundColor.withOpacity(0.9),
                            ),
                          ),
                          ScrollableOpacity(
                            scrollController: _scrollController,
                            scrollDirection: ScrollDirection.reverse,
                            hideLimit: 10,
                            showLimit: 160,
                            child: Center(
                              child: Icon(
                                Icons.library_books,
                                size: 54,
                                color: context.theme.iconTheme.color,
                              ),
                            ),
                          )
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
                      backgroundColor: context.theme.backgroundColor,
                      centerTitle: true,
                      automaticallyImplyLeading: false,
                      title: Container(
                        margin: const EdgeInsets.all(16),
                        child: Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxHeight: 48,
                              minHeight: 48,
                              minWidth: 320,
                              maxWidth: 400,
                            ),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: (context.theme.brightness == Brightness.dark
                                      ? kSearchDarkDecoration
                                      : kSearchLightDecoration)
                                  .copyWith(
                                hintText: 'Search',
                                hintStyle: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ...state.learningPathCategories
                      .map(
                        (learningPathCategory) => LearningPathCategoryItems(
                          categoryTitle: learningPathCategory.title,
                          learningPaths: learningPathCategory.items,
                        ),
                      )
                      .toList(),
                  const NavigationBarSafeArea()
                ],
              ),
            );
          }),
        );
      },
    );
  }
}

class NavigationBarSafeArea extends StatelessWidget {
  const NavigationBarSafeArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: SizedBox(height: 80),
    );
  }
}
