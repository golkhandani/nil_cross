import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/dashboard_learning_path_list/dashboard_learning_path_list_screen.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_category_model.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';
import 'package:test_routing_flow/shared/konstants.dart';

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
  late LearningPathSummary _learningPathSummary;
  final LearningPathListBloc _learningPathListBloc = locator.get();
  @override
  void initState() {
    print(_learningPathListBloc.state.selectedLearningPath == null);
    if (_learningPathListBloc.state.selectedLearningPath != null) {
      _learningPathSummary = _learningPathListBloc.state.selectedLearningPath!;
    } else {
      print(widget.id);
      _learningPathListBloc.add(LearningPathListEvent.loadSelectLearningPath(widget.id));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearningPathListBloc, LearningPathListState>(
      bloc: _learningPathListBloc,
      builder: (context, state) {
        if (state.isLoading || state.selectedLearningPath == null) {
          return kLoadingBox;
        }
        final data = state.selectedLearningPath!;
        // print("Navigator.canPop(context)) ${Navigator.canPop(context)}");
        return Scaffold(
          body:
              // Container(
              //   color: Colors.red,
              // ),
              CustomScrollView(
            slivers: [
              newMethod(),
              SliverAppBar(
                toolbarHeight: 0,
                collapsedHeight: 54,
                expandedHeight: 240,
                backgroundColor: Colors.amber,
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: Icon(
                    Icons.read_more,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
                // bottom: AppBar(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 1000,
                ),
              ),
              // const NavigationBarSafeArea()
            ],
          ),
        );
      },
    );
  }

  NewWidget newMethod() => const NewWidget();
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: MySliverAppBar(expandedHeight: 200),
      pinned: true,
      floating: true,
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final navigator = locator.get<AppNavigator>();
    // print(navigator.stack.canNavigateBack);
    // print(navigator.stack.hasPagelessTopRoute);
    // print(navigator.stack.parentAsStackRouter);
    // print('');
    // navigator.stack.pop(context);
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Image.network(
          "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              "MySliverAppBar",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: FlutterLogo(),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: BackButton(
            onPressed: () => {
              navigator.back(),
            },
            color: Colors.red,
            // navigator
            //     .push(DashboardRouter(page: DashboardLearningPathListScreen.routerPath)),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
