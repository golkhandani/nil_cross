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
  static const routerPath = 'learning-paths';
  const DashboardLearningPathListScreen({super.key});

  @override
  State<DashboardLearningPathListScreen> createState() =>
      _DashboardLearningPathListScreenState();
}

class _DashboardLearningPathListScreenState
    extends State<DashboardLearningPathListScreen>
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
        return SafeArea(
          child: Scaffold(
            body: Builder(builder: (context) {
              if (state.isLoading && state.learningPaths.isEmpty) {
                return kLoadingBox;
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
                      expandedHeight: 200,
                      backgroundImage:
                          state.learningPathCategories[0].thumbnail,
                      title: state.learningPathCategoriesPageTitle,
                      pinned: true,
                      floating: true,
                      child: const Center(
                        child: QuickSearchBox(),
                      ),
                    ),
                    const SliverGap(height: 32),
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
          ),
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
      constraints: BoxConstraints(
        maxHeight: widget.boxConstraints.maxHeight,
        minHeight: widget.boxConstraints.minHeight,
        maxWidth: widget.boxConstraints.maxWidth - 48,
      ),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: leftRadius,
              elevation: 10,
              child: NitTextField(
                hintText: 'Search',
                hintTextFontSize: 16,
                borderRadius: leftRadius,
              ),
            ),
          ),
          Material(
            borderRadius: rightRadius,
            elevation: 10,
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
                    width: 48,
                    height: 48,
                    child: Icon(
                      Icons.search,
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
      controller: controller,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
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
        hintText: hintText,
        hintStyle: kContentTextStyle.copyWith(fontSize: hintTextFontSize),
      ),
    );
  }
}
