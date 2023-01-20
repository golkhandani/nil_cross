import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/common/ui/overlay_sliver_appbar.dart';
import 'package:test_routing_flow/common/ui/safe_area.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_category_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_complete_model.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/shared/konstants.dart';
import 'package:timelines/timelines.dart';

class DashboardLearningPathSingleScreen extends StatefulWidget {
  static const routerName = 'DashboardLearningPathSingleRouter';
  static const routerPath = ':id';

  final String id;
  const DashboardLearningPathSingleScreen({super.key, @PathParam('id') required this.id});

  @override
  State<DashboardLearningPathSingleScreen> createState() =>
      _DashboardLearningPathSingleScreenState();
}

class _DashboardLearningPathSingleScreenState extends State<DashboardLearningPathSingleScreen> {
  LearningPathSummary? _learningPathSummary;
  LearningPathComplete? _learningPathComplete;
  final LearningPathListBloc _learningPathListBloc = locator.get();
  @override
  void initState() {
    if (_learningPathListBloc.state.learningPathSummary != null) {
      _learningPathSummary = _learningPathListBloc.state.learningPathSummary!;
    } else {
      _learningPathListBloc.add(LearningPathListEvent.loadSelectLearningPath(widget.id));
    }

    super.initState();
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

        return Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverPersistAppbar(
                backButtonEnable: true,
                floating: innerBoxIsScrolled,
                backButtonColor: context.theme.primaryColorLight,
                backgroundColor: context.theme.backgroundColor,
                expandedHeight: 56,
                collapsedHeight: 56.0,
                title: _learningPathSummary?.title,
              ),
            ],
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(height: 16),
                    _learningPathComplete != null
                        ? Text.rich(TextSpan(text: _learningPathComplete?.summary))
                        : kLoadingBox,
                    const Gap(height: 16),
                    FixedTimeline.tileBuilder(
                      key: GlobalKey(),
                      clipBehavior: Clip.none,
                      builder: TimelineTileBuilder.connected(
                        indicatorBuilder: (context, index) {
                          return const Icon(
                            Icons.home_work_outlined,
                            color: Colors.red,
                          );
                        },

                        connectorBuilder: (context, index, type) {
                          return Connector.dashedLine(
                            gap: 4,
                            dash: 4,
                            thickness: 4,
                            color: Colors.red,
                          );
                        },
                        contentsAlign: ContentsAlign.basic,
                        nodePositionBuilder: (context, index) => 0,
                        addRepaintBoundaries: true,
                        indicatorPositionBuilder: (context, index) => 0.1,
                        contentsBuilder: (context, index) {
                          LearningPathStep step = _learningPathComplete!.steps![index]!;
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                              elevation: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: context.width,
                                height: 200,
                                child: Text(step.title!),
                                // color: Colors.red,
                              ),
                            ),
                          );
                        },
                        // connectorStyleBuilder: (context, index) => ConnectorStyle.dashedLine,
                        // indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
                        itemCount: _learningPathComplete?.steps?.length ?? 0,
                      ),
                    ),
                    const NavigationBarSafeArea(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
