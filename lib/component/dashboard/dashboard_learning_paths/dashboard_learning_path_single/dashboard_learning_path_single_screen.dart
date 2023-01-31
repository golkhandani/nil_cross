import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/common/ui/overlay_sliver_appbar.dart';
import 'package:test_routing_flow/common/ui/safe_area.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/categories_feature_list_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_complete_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/widgets/learning_path_item_step_card.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/shared/konstants.dart';
import 'package:timelines/timelines.dart';
import 'package:vrouter/vrouter.dart';

class DashboardLearningPathSingleScreen extends StatefulWidget {
  static const routerName = 'DashboardLearningPathSingleRouter';
  static const routerPath = ':id';

  const DashboardLearningPathSingleScreen({super.key});

  @override
  State<DashboardLearningPathSingleScreen> createState() =>
      _DashboardLearningPathSingleScreenState();
}

class _DashboardLearningPathSingleScreenState
    extends State<DashboardLearningPathSingleScreen> {
  LearningPathSummary? _learningPathSummary;
  LearningPathComplete? _learningPathComplete;
  final LearningPathListBloc _learningPathListBloc = locator.get();
  String? id;
  @override
  void initState() {
    // _loadData();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _loadData();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _loadData() {
    id ??= context.vRouter.pathParameters['id']!;
    if (id == null) {
      return;
    }
    if (_learningPathListBloc.state.learningPathSummary != null) {
      _learningPathSummary = _learningPathListBloc.state.learningPathSummary!;
    }
    _learningPathListBloc.add(LearningPathListEvent.getLearningPath(id!));
  }

  var pressed = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearningPathListBloc, LearningPathListState>(
      bloc: _learningPathListBloc,
      builder: (context, state) {
        if (state.isLoading || state.learningPathSummary == null) {
          return kLoadingBox(context);
        }
        _learningPathSummary = state.learningPathSummary!;

        if (state.learningPathComplete != null) {
          _learningPathComplete = state.learningPathComplete!;
        }

        final slivers = [
          const Gap(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                iconSize: 32.0,
                icon: const Icon(Icons.access_time, size: 32),
                onPressed: () {},
              ),
              const Gap(width: 8),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Duration: ',
                    ),
                    TextSpan(
                      text: _learningPathComplete?.duration,
                    )
                  ],
                ),
              ),
            ],
          ),
          const Gap(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                iconSize: 32.0,
                icon: pressed == true
                    ? const Icon(Icons.get_app)
                    : const Icon(Icons.get_app_outlined),
                onPressed: () {
                  setState(() {
                    pressed = !pressed;
                  });
                },
              ),
              const Gap(width: 8),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Forks: ',
                    ),
                    TextSpan(
                      text: _learningPathComplete?.counts.forks.toString(),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Gap(height: 8),
          Flex(
            mainAxisAlignment: MainAxisAlignment.start,
            direction: Axis.horizontal,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    iconSize: 32.0,
                    icon: pressed == true
                        ? const Icon(Icons.thumb_up_alt_outlined)
                        : const Icon(Icons.thumb_up_alt),
                    onPressed: () {
                      setState(() {
                        pressed = !pressed;
                      });
                    },
                  ),
                  const Gap(width: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Like: ',
                        ),
                        TextSpan(
                          text: _learningPathComplete?.counts.likes.toString(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(width: 16),
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    iconSize: 32.0,
                    icon: pressed == true
                        ? const Icon(Icons.thumb_down_alt_outlined)
                        : const Icon(Icons.thumb_down_alt),
                    onPressed: () {
                      setState(() {
                        pressed = !pressed;
                      });
                    },
                  ),
                  const Gap(width: 8),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Not like: ',
                        ),
                        TextSpan(
                          text:
                              _learningPathComplete?.counts.notLikes.toString(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(height: 32),
          Text.rich(
            TextSpan(text: _learningPathComplete?.summary),
          ),
          const Gap(height: 32),
          Row(
            children: [
              const Icon(Icons.list_alt_outlined),
              const Gap(width: 8),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Steps: ',
                    ),
                    TextSpan(
                      text: _learningPathComplete?.counts.steps.toString(),
                    )
                  ],
                ),
              ),
            ],
          ),
          FixedTimeline.tileBuilder(
            key: GlobalKey(),
            clipBehavior: Clip.none,
            builder: TimelineTileBuilder.connected(
                indicatorBuilder: (context, index) {
                  final isLast = index >= _learningPathComplete!.steps.length;
                  if (isLast) {
                    return const Icon(
                      Icons.done,
                      color: Colors.green,
                    );
                  }
                  return Icon(
                    Icons.home_work_outlined,
                    color: context.theme.primaryColor,
                  );
                },
                connectorBuilder: (context, index, type) {
                  return Connector.dashedLine(
                    gap: 4,
                    dash: 4,
                    thickness: 4,
                    color: context.theme.primaryColor,
                  );
                },
                contentsAlign: ContentsAlign.basic,
                nodePositionBuilder: (context, index) => 0,
                addRepaintBoundaries: true,
                indicatorPositionBuilder: (context, index) => 0.1,
                contentsBuilder: (context, index) {
                  final isLast = index >= _learningPathComplete!.steps!.length;

                  if (isLast) {
                    return const SizedBox();
                  }
                  LearningPathStep step = _learningPathComplete!.steps[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LearningPathItemStepCard(
                      learningPathStep: step,
                      height: 200,
                      width: context.width,
                    ),
                  );
                },
                itemCount: _learningPathComplete?.steps != null
                    ? (_learningPathComplete!.steps.length + 1)
                    : 0),
          ),
          const NavigationBarSafeArea(),
        ];
        return Scaffold(
          body: CustomScrollView(
            slivers: !state.isLoadingLearningPathComplete ||
                    state.learningPathComplete != null
                ? [
                    SliverPersistAppbar(
                      backButtonEnable: true,
                      expandedHeight: 200,
                      backButtonColor: context.textTheme.color!,
                      backgroundImage:
                          state.learningPathCategories[0].thumbnail,
                      title: state.learningPathCategoriesPageTitle,
                      pinned: true,
                      floating: false,
                      childHeight: 140,
                      child: Center(
                        child: Container(
                          height: 140,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    _learningPathSummary!.title,
                                    style: kHeadingTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  const Text(
                                    'by',
                                    style: kContentTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    _learningPathSummary!.author.username,
                                    style: kContentTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  const Gap(height: 8),
                                  RatingBarIndicator(
                                    rating:
                                        _learningPathSummary!.score.toDouble(),
                                    unratedColor: Colors.amber[400],
                                    itemBuilder: (context, index) => Icon(
                                      index > _learningPathSummary!.score
                                          ? Icons.star_outline_rounded
                                          : index ==
                                                  _learningPathSummary!.score
                                                      .toInt()
                                              ? Icons.star_half_rounded
                                              : Icons.star_rounded,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 25.0,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ...slivers.map(
                      (e) => SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: e,
                        ),
                      ),
                    ),
                  ]
                : [
                    SliverFillRemaining(
                      child: kLoadingBox(context),
                    )
                  ],
          ),
        );
      },
    );
  }
}
