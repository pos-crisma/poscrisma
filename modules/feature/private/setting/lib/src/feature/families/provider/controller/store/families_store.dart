import 'dart:async';

import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:error/error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/family_api.dart';
import '../../dto/families_response_dto.dart';
import '../action/families_action.dart';
import '../state/families_state.dart';

class FamiliesReducer extends Reducer<FamiliesAction, FamiliesState> {
  FamiliesReducer(BuildContext context)
      : super(FamiliesState(context: context));

  @override
  Future<Effect> reduce(FamiliesAction action) async => //
      action.when(
        onAppear: _onAppear,
        pullToRefresh: _pullToRefresh,
        loading: _loading,
        service: _service,
        success: _success,
        failure: _failure,
        showMore: _showMore,
      );

  FutureOr<Effect> _onAppear() {
    return Effect.run(() async {
      await send(const FamiliesAction.loading(true));
      await send(const FamiliesAction.service());
    });
  }

  FutureOr<Effect> _pullToRefresh() {
    return Effect.run(() async {
      await send(const FamiliesAction.loading(true));
      await send(const FamiliesAction.service());
    });
  }

  FutureOr<Effect> _loading(bool isLoading) {
    state.isLoading = isLoading;
    return Effect.emit();
  }

  FutureOr<Effect> _service() {
    return Effect.run(() async {
      await FamilyAPI.get().fold(
        (success) => send(FamiliesAction.success(success)),
        (error) => send(FamiliesAction.failure(error)),
      );
    });
  }

  FutureOr<Effect> _failure(ErrorInfo errorInfo) {
    return Effect.run(() async {
      send(const FamiliesAction.loading(false));

      final message =
          errorInfo.message?.toString().replaceAll("[", "").replaceAll("]", "");
      final errorMessage = errorInfo.error?.message.toString();

      Navigator.of(state.context).push(
        MaterialPageRoute(
          builder: (context) {
            return ErrorPage(
              title: errorMessage,
              content: message == "" ? null : message,
              backButton: () => Navigator.of(state.context).pop(),
              onPress: null,
              isShowButton: false,
              enableColor: Colors.transparent,
            );
          },
        ),
      );
    });
  }

  FutureOr<Effect> _success(FamiliesResponseDTO data) {
    state.families = data.families;
    return Effect.send(const FamiliesAction.loading(false));
  }

  FutureOr<Effect> _showMore(Family family) {
    return Effect.run(() async {
      showModalBottomSheet(
        useSafeArea: true,
        isScrollControlled: true,
        context: state.context,
        barrierColor: Colors.transparent,
        builder: (context) => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: Scaffold(
            backgroundColor: Colors.grey.shade900,
            appBar: AppBar(
              backgroundColor: Colors.grey.shade900,
              leading: Container(
                margin: const EdgeInsets.only(left: 8.0),
                child: const CustomBackButton(
                  backTitle: "",
                  backIcon: CupertinoIcons.clear_circled_solid,
                ),
              ),
              title: Text(
                "Detalhe da familia",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge! //
                    .copyWith(),
              ),
            ),
            body: CustomScrollView(
              slivers: [
                family.childrens != null
                    ? SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: Text(
                            "Mascotes",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge! //
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: ColorMode.setColor(
                                    context: context,
                                    light: Colors.black,
                                    dark: Colors.white,
                                  ),
                                ),
                          ),
                        ),
                      )
                    : const SliverToBoxAdapter(),

                // * Children
                family.childrens != null
                    ? SliverList.builder(
                        itemCount: family.childrens?.length ?? 0,
                        itemBuilder: (context, index) {
                          final child = family.childrens![index];
                          return CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              child.name ?? "",
                              style: TextStyle(
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.white,
                                ),
                              ),
                            ),
                            subtitle: RichText(
                                text: TextSpan(
                              text: "Idade: ",
                              children: [
                                TextSpan(
                                  text: child.age.toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )),
                            additionalInfo: Text(
                              child.gender?.text ?? "",
                            ),
                          );
                        },
                      )
                    : const SliverToBoxAdapter(),

                family.groups != null && family.groups!.first.grupo != null
                    ? const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: CustomDivider(),
                        ),
                      )
                    : const SliverToBoxAdapter(),

                // * Youngs
                family.groups != null && family.groups!.first.grupo != null
                    ? SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: Text(
                            "Jovens do poscrisma",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge! //
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: ColorMode.setColor(
                                    context: context,
                                    light: Colors.black,
                                    dark: Colors.white,
                                  ),
                                ),
                          ),
                        ),
                      )
                    : const SliverToBoxAdapter(),

                // * Youngs
                family.groups != null && family.groups!.first.grupo != null
                    ? SliverList.builder(
                        itemCount: family.groups!.first.grupo?.length ?? 0,
                        itemBuilder: (context, index) {
                          final young = family.groups!.first.grupo![index];
                          return CupertinoListTile.notched(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            title: Text(
                              young.name ?? "",
                              style: TextStyle(
                                color: ColorMode.setColor(
                                  context: context,
                                  light: Colors.black,
                                  dark: Colors.white,
                                ),
                              ),
                            ),
                            subtitle: RichText(
                                text: TextSpan(
                              text: "Idade: ",
                              children: [
                                TextSpan(
                                  text: young.age.toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )),
                            additionalInfo: Text(
                              young.gender?.text ?? "",
                            ),
                          );
                        },
                      )
                    : const SliverToBoxAdapter(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
