import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/component/dashboard_learning_path_list/bloc/learning_path_list_bloc.dart';
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

class _DashboardLearningPathListScreenState extends State<DashboardLearningPathListScreen> with AuthenticationGuardMixin {
  final LearningPathListBloc _bloc = locator.get();

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
          appBar: kAppBar(title: const Text('Dashboard Learning Page!')),
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
                padding: const EdgeInsets.all(8),
                child: CustomScrollView(
                  slivers: [
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
    final cardSize = (MediaQuery.of(context).size.width / 3.2).floorToDouble();
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: cardSize + 40,
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
                    (learningPath) => LearningPathItem(learningPath: learningPath, cardSize: cardSize),
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
  final double cardSize;
  const LearningPathItem({
    Key? key,
    required this.learningPath,
    required this.cardSize,
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
            width: widget.cardSize,
            height: widget.cardSize,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: "https://images.unsplash.com/photo-1671227498016-93aa927686f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
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
