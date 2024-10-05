import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hack_ur_self/core/localization/translations.dart';
import 'package:hack_ur_self/core/model/failures.dart';
import 'package:hack_ur_self/features/common/custom_text_form_field.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';
import 'package:hack_ur_self/features/project/notifier/project_details_notifier.dart';
import 'package:hack_ur_self/utils/alerts.dart';
import 'package:hack_ur_self/utils/mutation_state.dart';
import 'package:hack_ur_self/utils/placeholders.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LifeProjectsDetails extends HookConsumerWidget {
  const LifeProjectsDetails({
    super.key,
    required this.id,
  });
  final String id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final provider =
        projectDetailsNotifierProvider(id: id, type: ProjectType.life);
    final notifier = ref.watch(provider.notifier);
    final theme = Theme.of(context);
    const buttonsPadding = 24.0;
    const buttonsGap = 16.0;

    ref.listen(provider.selectAsync((data) => data.save), (_, next) async {
      switch (await next) {
        case AsyncData():
          CustomToast.success(t.lifeProjects.save.successMsg).show(context);
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (context.mounted) context.pop();
          });
        case AsyncError(:final error):
          final String action;
          if (ref.read(provider) case AsyncData(value: final data)
              when data.isEditing) {
            action = t.lifeProjects.save.failureMsg;
          } else {
            action = t.lifeProjects.add.failureMsg;
          }
          CustomAlertDialog.fromErr(t.presentError(error, action: action))
              .show(context);
      }
    });

    ref.listen(
      provider.selectAsync((data) => data.delete),
      (_, next) async {
        switch (await next) {
          case AsyncData():
            CustomToast.success(t.lifeProjects.delete.successMsg).show(context);
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (context.mounted) context.pop();
            });
          case AsyncError(:final error):
            CustomToast.error(t.presentShortError(error)).show(context);
        }
      },
    );

    switch (ref.watch(provider)) {
      case AsyncData(value: final state):
        final showLoadingOverlay = state.isBusy ||
            state.save is MutationSucess ||
            state.delete is MutationSucess;

        return Stack(
          children: [
            Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Text(t.lifeProjects.pageTitle),
                  ),
                  Form(
                    child: SliverList.list(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: CustomTextFormField(
                            initialValue: state.project.name,
                            onChanged: (value) =>
                                notifier.setField(name: value),
                            validator: (value) => (value?.isEmpty ?? true)
                                ? t.lifeProjects.detailsForm.emptyNameMsg
                                : null,
                            label: t.lifeProjects.detailsForm.nameLabel,
                            hint: t.lifeProjects.detailsForm.nameHint,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: CustomTextFormField(
                            initialValue: "",
                            onChanged: (value) =>
                                notifier.setField(description: value),
                            label: t.lifeProjects.detailsForm.descriptionLabel,
                            hint: t.lifeProjects.detailsForm.descriptionHint,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OverflowBar(
                            spacing: 12,
                            overflowAlignment: OverflowBarAlignment.end,
                            children: [
                              OutlinedButton(
                                  onPressed: context.pop,
                                  child: Text(MaterialLocalizations.of(context)
                                      .cancelButtonLabel)),
                              FilledButton(
                                  onPressed: notifier.save,
                                  child: Text(t.lifeProjects.save.buttonText))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );

      case AsyncError(:final error):
        return Stack(
          children: [
            Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                      title: Text(t.lifeProjects.pageTitle), pinned: true),
                  //SliverErrorBodyPlaceholder(t.presentShortError(error)),
                ],
              ),
            ),
          ],
        );
      default:
        return const Scaffold(
          body: Text("Default"),
        );
    }
  }
}
