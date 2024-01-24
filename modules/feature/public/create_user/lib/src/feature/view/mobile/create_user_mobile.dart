import 'package:design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../provider/controller/action/user_mobile_action.dart';
import '../../provider/controller/state/create_user_state.dart';
import '../../provider/controller/store/create_user_reducer.dart';
import '../../provider/dto/create_user_request_dto.dart';
import '../../provider/model/user_type.dart';

class UserMobile extends StatelessWidget {
  final UserMobileReducer viewStore;

  const UserMobile({
    super.key,
    required this.viewStore,
  });

  @override
  Widget build(BuildContext context) {
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
                    onPressed: () =>
                        viewStore.send(const UserMobileAction.backTapped()),
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
                        ValueListenableBuilder(
                          valueListenable: viewStore,
                          builder: (context, value, child) {
                            if (value.type != null) {
                              final type = value.type;
                              final result = switch (type) {
                                UserType.GodParent => 'Padrinho',
                                UserType.Voluntary => 'Voluntarios',
                                UserType.Young => 'Jovens',
                                _ => 'Jovens',
                              };

                              return Text(
                                'Seu convite e para $result do acampamento',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge! //
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              );
                            } else {
                              return Container();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverPadding(padding: EdgeInsets.symmetric(vertical: 8)),
                ValueListenableBuilder(
                  valueListenable: viewStore,
                  builder: (context, value, child) {
                    return SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      sliver: SliverList.builder(
                        itemCount: value.contentOnPage.list.length,
                        itemBuilder: (context, index) {
                          final contentOnPage = value.contentOnPage.list[index];

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                contentOnPage.text,
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge! //
                                    .copyWith(
                                        // fontWeight: FontWeight.bold,
                                        ),
                              ),
                              const SizedBox(height: 8),
                              contentOnPage == CreateUserType.gender
                                  ? Column(
                                      children: [
                                        RadioListTile(
                                          contentPadding: EdgeInsets.zero,
                                          title: const Text('Masculino'),
                                          value: UserGender.Male,
                                          groupValue: value.genderInput,
                                          onChanged: (UserGender? value) {
                                            if (value != null) {
                                              viewStore.send(
                                                UserMobileAction.genderTapped(
                                                  value,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                        RadioListTile(
                                          contentPadding: EdgeInsets.zero,
                                          title: const Text('Feminino'),
                                          value: UserGender.Female,
                                          groupValue: value.genderInput,
                                          onChanged: (UserGender? value) {
                                            if (value != null) {
                                              viewStore.send(
                                                UserMobileAction.genderTapped(
                                                  value,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                      ],
                                    )
                                  : CustomTextFormField(
                                      edgeInsets: EdgeInsets.zero,
                                      focusNote: switch (contentOnPage) {
                                        CreateUserType.email =>
                                          value.emailFocus,
                                        CreateUserType.name => value.nameFocus,
                                        CreateUserType.nickname =>
                                          value.nicknameFocus,
                                        CreateUserType.phone =>
                                          value.phoneFocus,
                                        CreateUserType.password =>
                                          value.passwordFocus,
                                        CreateUserType.medicalRecords =>
                                          value.medicalFocus,
                                        CreateUserType.gender => null,
                                        CreateUserType.birthday =>
                                          value.birthdayFocus,
                                      },
                                      controller: switch (contentOnPage) {
                                        CreateUserType.email =>
                                          value.emailController,
                                        CreateUserType.name =>
                                          value.nameController,
                                        CreateUserType.nickname =>
                                          value.nicknameController,
                                        CreateUserType.phone =>
                                          value.phoneController,
                                        CreateUserType.password =>
                                          value.passwordController,
                                        CreateUserType.medicalRecords =>
                                          value.medicalController,
                                        CreateUserType.gender => null,
                                        CreateUserType.birthday =>
                                          value.birthdayController,
                                      },
                                      keyboardType: switch (contentOnPage) {
                                        CreateUserType.email =>
                                          TextInputType.emailAddress,
                                        CreateUserType.name =>
                                          TextInputType.name,
                                        CreateUserType.nickname =>
                                          TextInputType.text,
                                        CreateUserType.phone =>
                                          TextInputType.phone,
                                        CreateUserType.password =>
                                          TextInputType.visiblePassword,
                                        CreateUserType.medicalRecords =>
                                          TextInputType.multiline,
                                        CreateUserType.gender => null,
                                        CreateUserType.birthday =>
                                          TextInputType.number,
                                      },
                                      maxLine: switch (contentOnPage) {
                                        CreateUserType.email => 1,
                                        CreateUserType.name => 1,
                                        CreateUserType.nickname => 1,
                                        CreateUserType.phone => 1,
                                        CreateUserType.password => 1,
                                        CreateUserType.gender => 1,
                                        CreateUserType.birthday => 1,
                                        CreateUserType.medicalRecords => null,
                                      },
                                      inputFormatters: switch (contentOnPage) {
                                        CreateUserType.email => null,
                                        CreateUserType.name => null,
                                        CreateUserType.nickname => null,
                                        CreateUserType.phone => [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                            TelefoneInputFormatter(),
                                          ],
                                        CreateUserType.password => null,
                                        CreateUserType.gender => null,
                                        CreateUserType.birthday => [
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                            DataInputFormatter(),
                                          ],
                                        CreateUserType.medicalRecords => null,
                                      },
                                      boxDecorationColor:
                                          SystemMode.isDark(context)
                                              ? Colors.black
                                              : Colors.grey.shade200,
                                      labelText: contentOnPage.inputText,
                                    ),
                              SizedBox(
                                  height: (contentOnPage.tipTitle != '' ||
                                          contentOnPage.tipContent != '')
                                      ? 16
                                      : 0),
                              contentOnPage.tipTitle == ''
                                  ? const SizedBox(height: 0)
                                  : Text(
                                      contentOnPage.tipTitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                              contentOnPage.tipContent == ''
                                  ? const SizedBox(height: 0)
                                  : Text(
                                      contentOnPage.tipContent,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium! //
                                          .copyWith(
                                            fontWeight: FontWeight.w300,
                                            color: SystemMode.isDark(context)
                                                ? Colors.grey.shade50
                                                : Colors.grey.shade800,
                                          ),
                                    ),
                              const SizedBox(height: 16),
                            ],
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          AnimatedOpacity(
            opacity: View.of(context).viewInsets.bottom > 0.0 ? 0 : 1,
            duration: Durations.medium1,
            child: const Divider(
              thickness: 0.2,
              height: 1,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              top: 8,
              bottom: MediaQuery.of(context).padding.bottom == 0
                  ? View.of(context).viewInsets.bottom > 0.0
                      ? 0
                      : 8
                  : MediaQuery.of(context).padding.bottom,
            ),
            child: ValueListenableBuilder(
              valueListenable: viewStore,
              builder: (context, value, child) {
                return AnimatedButton(
                  isFocus: View.of(context).viewInsets.bottom > 0.0,
                  isDisabled: value.isLoading,
                  onPress: () =>
                      viewStore.send(UserMobileAction.handlerTapped(context)),
                  enableColor: Colors.deepPurple.shade300,
                  disableColor: SystemMode.isDark(context)
                      ? Colors.deepPurple.shade500
                      : Colors.deepPurple.shade100,
                  disabledChild: const CupertinoActivityIndicator(),
                  child: Text(
                    'Proximo',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium! //
                        .copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
