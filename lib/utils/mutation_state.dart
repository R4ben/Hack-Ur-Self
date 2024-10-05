import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_ur_self/core/model/failures.dart';

part 'mutation_state.freezed.dart';

@freezed
class MutationState<F extends Failure> with _$MutationState {
  const MutationState._();

  const factory MutationState.initial() = MutationInitial<F>;
  const factory MutationState.inProgress() = MutationInProgress<F>;
  const factory MutationState.failures(Failure failures) = MutationFailures<F>;
  const factory MutationState.success() = MutationSucess<F>;

  bool get isInProgress => this is MutationInProgress;
}
