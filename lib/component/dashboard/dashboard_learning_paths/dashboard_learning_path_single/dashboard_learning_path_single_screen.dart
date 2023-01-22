import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class DashboardLearningPathSingleScreen extends StatefulWidget {
  static const routerName = 'DashboardLearningPathSingleRouter';
  static const routerPath = ':id';

  final String id;
  const DashboardLearningPathSingleScreen(
      {super.key, @PathParam('id') required this.id});

  @override
  State<DashboardLearningPathSingleScreen> createState() =>
      _DashboardLearningPathSingleScreenState();
}

class _DashboardLearningPathSingleScreenState
    extends State<DashboardLearningPathSingleScreen> {
  LearningPathSummary? _learningPathSummary;
  LearningPathComplete? _learningPathComplete;
  final LearningPathListBloc _learningPathListBloc = locator.get();

  @override
  void initState() {
    print(" uoiuiouio");
    _loadData();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // _loadData();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _loadData() {
    if (_learningPathListBloc.state.learningPathSummary != null) {
      _learningPathSummary = _learningPathListBloc.state.learningPathSummary!;
      // _learningPathListBloc
      //     .add(LearningPathListEvent.getLearningPath(widget.id));
    } else {
      //
    }
    _learningPathListBloc.add(LearningPathListEvent.getLearningPath(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearningPathListBloc, LearningPathListState>(
      bloc: _learningPathListBloc,
      builder: (context, state) {
        if (state.isLoading || state.learningPathSummary == null) {
          return kLoadingBox;
        }
        _learningPathSummary = state.learningPathSummary!;

        if (state.learningPathComplete != null) {
          _learningPathComplete = state.learningPathComplete!;
        }
        // print("_learningPathComplete $_learningPathComplete");
        return SafeArea(
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverPersistAppbar(
                  backButtonEnable: true,
                  floating: innerBoxIsScrolled,
                  backButtonColor: context.theme.primaryColorLight,
                  backgroundColor: context.theme.backgroundColor,
                  expandedHeight: 56,
                  title: _learningPathSummary?.title,
                  elevation: 2,
                ),
              ],
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: state.isLoadingLearningPathComplete
                        ? [
                            SizedBox(
                              height: context.safeHeight,
                              child: kLoadingBox,
                            ),
                          ]
                        : [
                            const Gap(height: 16),
                            Text.rich(
                              TextSpan(text: _learningPathComplete?.summary),
                            ),
                            const Gap(height: 16),
                            FixedTimeline.tileBuilder(
                              key: GlobalKey(),
                              clipBehavior: Clip.none,
                              builder: TimelineTileBuilder.connected(
                                  indicatorBuilder: (context, index) {
                                    final isLast = index >=
                                        _learningPathComplete!.steps!.length;
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
                                  indicatorPositionBuilder: (context, index) =>
                                      0.1,
                                  contentsBuilder: (context, index) {
                                    final isLast = index >=
                                        _learningPathComplete!.steps!.length;

                                    if (isLast) {
                                      return const SizedBox();
                                    }
                                    LearningPathStep step =
                                        _learningPathComplete!.steps![index]!;
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: LearningPathItemStepCard(
                                        learningPathStep: step,
                                        height: 200,
                                        width: context.width,
                                      ),
                                    );
                                  },
                                  itemCount: _learningPathComplete?.steps !=
                                          null
                                      ? (_learningPathComplete!.steps!.length +
                                          1)
                                      : 0),
                            ),
                            const NavigationBarSafeArea(),
                          ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
