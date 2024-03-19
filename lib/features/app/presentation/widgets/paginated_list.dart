import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:weather_app/base/presentation/widgets/error_view.dart';

class PaginatedList<T> extends StatelessWidget {
  const PaginatedList({
    super.key,
    required this.pagingController,
    required this.itemBuilder,
    this.onRefresh,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.onDrag,
    this.dragStartBehavior = DragStartBehavior.start,
    this.transitionDuration = const Duration(milliseconds: 350),
    this.scrollDirection = Axis.vertical,
    this.clipBehavior = Clip.hardEdge,
    this.animateTransitions = true,
    this.reverse = false,
    this.shrinkWrap = false,
    this.addAutomaticKeepAlive = true,
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
    this.firstPageProgressIndicatorBuilder = const Center(child: CircularProgressIndicator()),
    this.noItemsFoundIndicatorBuilder,
    this.noMoreItemsIndicatorBuilder,
    this.separatorBuilder,
  });

  final RefreshCallback? onRefresh;

  final PagingController<int, T> pagingController;
  final Widget Function(BuildContext context, int index, T data) itemBuilder;
  final bool animateTransitions;
  final Duration transitionDuration;
  final bool shrinkWrap;
  final double itemsMargin;

  final bool addAutomaticKeepAlive;
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
    final list = PagedListView<int, T>.separated(
      pagingController: pagingController,
      shrinkWrap: shrinkWrap,
      addAutomaticKeepAlives: addAutomaticKeepAlive,
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
        firstPageProgressIndicatorBuilder:
            firstPageProgressIndicatorBuilder == null ? null : (_) => firstPageProgressIndicatorBuilder!,
        newPageProgressIndicatorBuilder:
            newPageProgressIndicatorBuilder == null ? null : (_) => newPageProgressIndicatorBuilder!,
        firstPageErrorIndicatorBuilder: firstPageErrorIndicatorBuilder == null
            ? (_) => ErrorView(
                  message: pagingController.error.toString(),
                  onAction: pagingController.refresh,
                )
            : (_) => firstPageErrorIndicatorBuilder!,
        newPageErrorIndicatorBuilder: newPageErrorIndicatorBuilder == null
            ? (_) => InkWell(
                  onTap: pagingController.retryLastFailedRequest,
                  child: FooterTile(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(pagingController.error.toString(), textAlign: TextAlign.center),
                        const SizedBox(height: 4),
                        const Icon(Icons.refresh, size: 16),
                      ],
                    ),
                  ),
                )
            : (_) => newPageErrorIndicatorBuilder!,
        noItemsFoundIndicatorBuilder:
            noItemsFoundIndicatorBuilder == null ? (_) => const SizedBox() : (_) => noItemsFoundIndicatorBuilder!,
        noMoreItemsIndicatorBuilder: noMoreItemsIndicatorBuilder == null ? null : (_) => noMoreItemsIndicatorBuilder!,
      ),
    );

    if (onRefresh != null) {
      return RefreshIndicator(onRefresh: onRefresh!, child: list);
    }

    return list;
  }
}

class FooterTile extends StatelessWidget {
  const FooterTile({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Center(child: child),
      );
}
