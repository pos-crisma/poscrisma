import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../store/action/user_mobile_action.dart';
import '../../store/user_mobile_reducer.dart';

class UserMedicalRecordsMobile extends StatelessWidget {
  const UserMedicalRecordsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final viewStore = context.watch<UserMobileReducer>();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  surfaceTintColor: Colors.transparent,
                  pinned: true,
                  elevation: 0,
                  leadingWidth: 66,
                  leading: CupertinoButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () => Modular.to.pop(),
                    child: Icon(
                      CupertinoIcons.arrow_left,
                      color: SystemMode.isDark(context)
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Para finalizar', // TODO: move to i18n
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Preenche os dados medicos do jovem', // TODO: move to i18n
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                  // fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 24),
                ),
                SliverList.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: CustomTextFormField(
                        labelText: 'Informação medica',
                      ),
                    );
                  },
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 16),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Observação:', // TODO: move to i18n
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.green.shade500,
                                width: 5,
                              ),
                            ),
                          ),
                          child: Text(
                            'Apos o acampamento os dados medicos dos jovens serão removidos.', // TODO: move to i18n
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium! //
                                .copyWith(
                                    // fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.green.shade500,
                                width: 5,
                              ),
                            ),
                          ),
                          child: Text(
                            'Esses dados serão mais para ajuda da equipe medica resolver os problemas do jovens no acampamento.', // TODO: move to i18n
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium! //
                                .copyWith(
                                    // fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 24),
                ),
              ],
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              child: Column(
                children: [
                  CupertinoButton(
                    minSize: 44,
                    color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.zero,
                    pressedOpacity: 0.9,
                    onPressed: () => viewStore.send(
                      UserMobileAction.medicalRecordsButtonTapped(
                          medicalRecords: ""),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Finalizar', // TODO: move to i18n
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge! //
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                        ),
                        const SizedBox(width: 16),
                        const Icon(
                          CupertinoIcons.paperplane_fill,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
