import 'package:core/core.dart';
import 'package:design/color/color.dart';
import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parish/src/feature/provider/controller/action/parish_action.dart';
import 'package:parish/src/feature/provider/controller/store/parish_store.dart';

class ParishMobile extends StatefulWidget {
  final String type;
  final String parishId;
  final String senderId;
  final String invite;

  const ParishMobile({
    super.key,
    required this.parishId,
    required this.senderId,
    required this.type,
    required this.invite,
  });

  @override
  State<ParishMobile> createState() => _ParishMobileState();
}

class _ParishMobileState extends State<ParishMobile> {
  final ParishReducer viewStore = Modular.get();

  @override
  void initState() {
    super.initState();

    viewStore.send(ParishAction.onAppear(widget.parishId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: SystemMode.isDark(context)
                      ? darkBackground
                      : Colors.grey.shade200,
                  surfaceTintColor: Colors.transparent,
                  pinned: true,
                  elevation: 0,
                  leadingWidth: 66,
                  leading: CupertinoButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    onPressed: () => Modular.to.pop(),
                    child: Icon(
                      CupertinoIcons.clear_thick_circled,
                      color: SystemMode.isDark(context)
                          ? Colors.white
                          : Colors.black,
                      size: 26,
                    ),
                  ),
                ),
                const SliverPadding(
                    padding: EdgeInsets.symmetric(vertical: 12)),
                SliverToBoxAdapter(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Vamos criar a', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge! //
                                  .copyWith(
                                    fontWeight: FontWeight.w400,
                                    // color: Colors.white,
                                  ),
                            ),
                            Text(
                              ' Paroquia', // TODO: move to i18n
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium! //
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: SystemMode.isDark(context)
                                        ? Colors.deepPurple.shade200
                                        : Colors.deepPurple.shade900,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Essa paroquia, sera a base de todos os acampamentos do poscrisma.', // TODO: move to i18n
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge! //
                              .copyWith(
                                  // color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) => CustomTextFormField(
                      enabled: false,
                      controller: TextEditingController(
                        text: value.parish?.name ?? "Paroquia não cadastrada",
                      ),
                      boxDecorationColor: SystemMode.isDark(context)
                          ? Colors.black
                          : Colors.grey.shade200,
                      autoFocus: true,
                      labelText: 'Criar nome da paroquia', // TODO: Move to i18n
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                SliverToBoxAdapter(
                  child: ValueListenableBuilder(
                    valueListenable: viewStore,
                    builder: (context, value, child) => CustomTextFormField(
                      enabled: false,
                      controller: TextEditingController(
                        text:
                            value.parish?.address ?? "Paroquia não cadastrada",
                      ),
                      boxDecorationColor: SystemMode.isDark(context)
                          ? Colors.black
                          : Colors.grey.shade200,
                      autoFocus: true,
                      labelText: 'Endereço paroquia', // TODO: Move to i18n
                    ),
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            width: MediaQuery.of(context).size.width,
            child: AnimatedButton(
              onPress: () => Modular.to.pushNamed('/create_user/', arguments: {
                "parishId": widget.parishId,
                "senderId": widget.senderId,
                "type": widget.type,
                "invite": widget.invite,
              }),
              enableColor: Colors.deepPurple.shade300,
              disableColor: Colors.deepPurple.shade100,
              disabledChild: const CircularProgressIndicator.adaptive(),
              child: Text(
                'Proximo',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium! //
                    .copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
