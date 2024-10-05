import 'package:flutter/material.dart';
import 'package:hack_ur_self/features/project/model/project_entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LifeProjectTile extends HookConsumerWidget {
  const LifeProjectTile({super.key, required this.project});
  final ProjectEntity project;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        project.name,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          width: 8,
          height: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      subtitle: Text.rich(TextSpan(text: project.description)),
    );
  }
}
