import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_routing_flow/common/breakpoint_extension.dart';
import 'package:test_routing_flow/common/ui/overlay_sliver_appbar.dart';
import 'package:test_routing_flow/common/ui/safe_area.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/bloc/learning_path_list_bloc.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/widgets/learning_path_category_items.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/authentication_gaurd.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class DashboardLearningPathListScreen extends StatefulWidget {
  static const routerName = 'DashboardLearningPathListRouter';
  static const routerPath = '/dashboard/learning-paths';
  const DashboardLearningPathListScreen({super.key});

  @override
  State<DashboardLearningPathListScreen> createState() =>
      _DashboardLearningPathListScreenState();
}

class _DashboardLearningPathListScreenState
    extends State<DashboardLearningPathListScreen> {
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
              return kLoadingBox(context);
            }
            if (state.isLoading == false &&
                state.learningPathCategories.isEmpty) {
              return kNotFoundBox;
            }
            return NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [];
              },
              body: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverPersistAppbar(
                    backButtonEnable: false,
                    expandedHeight: 160,
                    backgroundImage: state.learningPathCategories[0].thumbnail,
                    title: state.learningPathCategoriesPageTitle,
                    pinned: true,
                    floating: true,
                    childHeight: 48,
                    child: const Center(
                      child: QuickSearchBox(),
                    ),
                  ),
                  const SliverGap(height: 48),
                  ...state.learningPathCategories
                      .map(
                        (learningPathCategory) =>
                            learningPathCategory.items.isEmpty
                                ? null
                                : LearningPathCategoryItems(
                                    categoryTitle: learningPathCategory.title,
                                    learningPaths: learningPathCategory.items,
                                  ),
                      )
                      .whereType<LearningPathCategoryItems>()
                      .toList(),
                  const NavigationBarSliverSafeArea()
                ],
              ),
            );
          }),
        );
      },
    );
  }
}

class QuickSearchBox extends StatefulWidget {
  final TextEditingController? controller;
  final BoxConstraints boxConstraints;
  final double radius;
  const QuickSearchBox({
    Key? key,
    this.controller,
    this.boxConstraints = const BoxConstraints(
      maxHeight: 48,
      minHeight: 48,
      maxWidth: 400,
      minWidth: 100,
    ),
    this.radius = 10,
  }) : super(key: key);

  @override
  State<QuickSearchBox> createState() => _QuickSearchBoxState();
}

class _QuickSearchBoxState extends State<QuickSearchBox> {
  late BorderRadius rightRadius;
  late BorderRadius leftRadius;
  @override
  void initState() {
    rightRadius = BorderRadius.only(
      topRight: Radius.circular(widget.radius),
      bottomRight: Radius.circular(widget.radius),
    );
    leftRadius = BorderRadius.only(
      topLeft: Radius.circular(widget.radius),
      bottomLeft: Radius.circular(widget.radius),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: leftRadius,
              elevation: 2,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: widget.boxConstraints.maxHeight,
                  minHeight: widget.boxConstraints.minHeight,
                  maxWidth: widget.boxConstraints.maxWidth - 64,
                ),
                child: NitTextField(
                  hintText: 'Search',
                  hintTextFontSize: 20,
                  borderRadius: leftRadius,
                ),
              ),
            ),
          ),
          Material(
            borderRadius: rightRadius,
            elevation: 2,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: rightRadius,
                color: context.theme.primaryColor,
              ),
              child: InkWell(
                borderRadius: rightRadius,
                highlightColor: context.theme.splashColor,
                splashColor: context.theme.splashColor,
                onTap: () => {},
                child: ClipRRect(
                  borderRadius: rightRadius,
                  child: SizedBox(
                    width: widget.boxConstraints.minHeight,
                    height: widget.boxConstraints.minHeight,
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: context.theme.iconTheme.color!,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NitTextField extends StatelessWidget {
  final double radius;
  final String? hintText;
  final double hintTextFontSize;
  final Color enableBoderColor;
  final Color focusedBoderColor;
  final Color errorBorderColor;
  final BorderRadius? borderRadius;
  final TextEditingController? controller;
  const NitTextField({
    Key? key,
    this.borderRadius,
    this.enableBoderColor = Colors.transparent,
    this.focusedBoderColor = Colors.transparent,
    this.errorBorderColor = Colors.red,
    this.hintText,
    this.hintTextFontSize = 14,
    this.radius = 10,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: hintTextFontSize),
      controller: controller,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 16.0,
        ),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius:
              borderRadius ?? BorderRadius.all(Radius.circular(radius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              borderRadius ?? BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(
            color: enableBoderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              borderRadius ?? BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(color: focusedBoderColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius:
              borderRadius ?? BorderRadius.all(Radius.circular(radius)),
          borderSide: BorderSide(color: errorBorderColor),
        ),
      ).copyWith(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        hintText: hintText,
        hintStyle: kContentTextStyle.copyWith(fontSize: hintTextFontSize),
      ),
    );
  }
}
