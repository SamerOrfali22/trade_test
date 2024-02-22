import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app/base/presentation/widgets/loader.dart';
import 'package:weather_app/base/utils/ext/build_context_ext.dart';

/// This widget displays a paginated list of items using the provided
/// `PagingController` and `itemBuilder` function. It also supports
/// refreshing the list using the `onRefresh` callback, and displaying
/// loading indicators and error messages for first page loading,
/// new page loading, and when no items are found or no more items
/// are available.
///
/// [pagingController] : This is a required PagingController object that handles pagination and data loading.
/// [itemBuilder] : This is a required function that builds a widget for each item in the list.
///  It takes in three arguments: a BuildContext, an int index, and a generic type T data.
/// [animateTransitions] : A boolean value indicating whether transitions between pages should be animated or not.
/// [onRefresh] : callback to refresh data, if provided [RefreshIndicator] will be added.
class BasePaginatedList<T> extends StatelessWidget {
  const BasePaginatedList({
    required this.pagingController,
    required this.itemBuilder,
    this.asSliver = false,
    this.onRefresh,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.onDrag,
    this.dragStartBehavior = DragStartBehavior.start,
    this.transitionDuration = const Duration(milliseconds: 350),
    this.scrollDirection = Axis.vertical,
    this.clipBehavior = Clip.hardEdge,
    this.animateTransitions = true,
    this.reverse = false,
    this.shrinkWrap = false,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.itemsMargin = 0.0,
    this.scrollController,
    this.primary,
    this.physics,
    this.padding,
    this.cacheExtent,
    this.restorationId,
    this.itemExtent,
    this.newPageErrorIndicatorBuilder,
    this.newPageProgressIndicatorBuilder,
    this.firstPageErrorIndicatorBuilder,
    this.firstPageProgressIndicatorBuilder,
    this.noItemsFoundIndicatorBuilder,
    this.noMoreItemsIndicatorBuilder,
    this.separatorBuilder,
    super.key,
  }) : assert((asSliver == true && onRefresh != null) == false, 'you can\'t use sliver list with refresh Indicator');

  final RefreshCallback? onRefresh;
  final bool asSliver;

  final PagingController<int, T> pagingController;
  final Widget Function(BuildContext context, int index, T data) itemBuilder;
  final bool animateTransitions;
  final Duration transitionDuration;
  final bool shrinkWrap;
  final double itemsMargin;

  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final ScrollController? scrollController;
  final Axis scrollDirection;
  final bool reverse;
  final bool? primary;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final double? cacheExtent;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;
  final double? itemExtent;
  final Widget? firstPageProgressIndicatorBuilder;
  final Widget? newPageProgressIndicatorBuilder;
  final Widget? firstPageErrorIndicatorBuilder;
  final Widget? newPageErrorIndicatorBuilder;
  final Widget? noItemsFoundIndicatorBuilder;
  final Widget? noMoreItemsIndicatorBuilder;
  final Widget Function(BuildContext, int)? separatorBuilder;

  @override
  Widget build(BuildContext context) {
    if (asSliver) {
      return PagedSliverList<int, T>.separated(
        pagingController: pagingController,
        addAutomaticKeepAlives: addAutomaticKeepAlives,
        addRepaintBoundaries: addRepaintBoundaries,
        addSemanticIndexes: addSemanticIndexes,
        itemExtent: itemExtent,
        separatorBuilder: separatorBuilder ?? (_, __) => SizedBox(height: itemsMargin),
        builderDelegate: PagedChildBuilderDelegate<T>(
          itemBuilder: (context, item, index) => itemBuilder(context, index, item),
          animateTransitions: animateTransitions,
          transitionDuration: transitionDuration,
          firstPageProgressIndicatorBuilder: firstPageProgressIndicatorBuilder == null
              ? (_) => Center(child: Loader(color: context.colors.primary))
              : (_) => firstPageProgressIndicatorBuilder!,
          newPageProgressIndicatorBuilder:
              newPageProgressIndicatorBuilder == null ? null : (_) => newPageProgressIndicatorBuilder!,
          firstPageErrorIndicatorBuilder:
              firstPageErrorIndicatorBuilder == null ? null : (_) => firstPageErrorIndicatorBuilder!,
          newPageErrorIndicatorBuilder:
              newPageErrorIndicatorBuilder == null ? null : (_) => newPageErrorIndicatorBuilder!,
          noItemsFoundIndicatorBuilder:
              noItemsFoundIndicatorBuilder == null ? null : (_) => noItemsFoundIndicatorBuilder!,
          noMoreItemsIndicatorBuilder: noMoreItemsIndicatorBuilder == null ? null : (_) => noMoreItemsIndicatorBuilder!,
        ),
      );
    }

    final list = PagedListView<int, T>.separated(
      pagingController: pagingController,
      shrinkWrap: shrinkWrap,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      clipBehavior: clipBehavior,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      keyboardDismissBehavior: keyboardDismissBehavior,
      padding: padding,
      physics: physics,
      primary: primary,
      restorationId: restorationId,
      reverse: reverse,
      scrollController: scrollController,
      scrollDirection: scrollDirection,
      separatorBuilder: separatorBuilder ?? (_, __) => SizedBox(height: itemsMargin),
      builderDelegate: PagedChildBuilderDelegate<T>(
        itemBuilder: (context, item, index) => itemBuilder(context, index, item),
        animateTransitions: animateTransitions,
        transitionDuration: transitionDuration,
        firstPageProgressIndicatorBuilder: firstPageProgressIndicatorBuilder == null
            ? (_) => Center(child: Loader(color: context.colors.primary))
            : (_) => firstPageProgressIndicatorBuilder!,
        newPageProgressIndicatorBuilder:
            newPageProgressIndicatorBuilder == null ? null : (_) => newPageProgressIndicatorBuilder!,
        firstPageErrorIndicatorBuilder:
            firstPageErrorIndicatorBuilder == null ? null : (_) => firstPageErrorIndicatorBuilder!,
        newPageErrorIndicatorBuilder:
            newPageErrorIndicatorBuilder == null ? null : (_) => newPageErrorIndicatorBuilder!,
        noItemsFoundIndicatorBuilder:
            noItemsFoundIndicatorBuilder == null ? null : (_) => noItemsFoundIndicatorBuilder!,
        noMoreItemsIndicatorBuilder: noMoreItemsIndicatorBuilder == null ? null : (_) => noMoreItemsIndicatorBuilder!,
      ),
    );

    if (onRefresh != null) {
      return RefreshIndicator(onRefresh: onRefresh!, child: list);
    }

    return list;
  }
}
