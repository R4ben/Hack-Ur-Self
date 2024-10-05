import 'package:hack_ur_self/gen/translations.g.dart';

typedef PresentableError = ({String type, String? message});

mixin Failure {
  ({String type, String? message}) present(Translations t);
}

//Failure that are not expected to happen
mixin UnexpectedFailure {
  Object? get error;
  StackTrace? get stackTrace;
}

// Failure that are expected to happen
mixin ExpectedMeasuredFailure {}

//Failures thad are ignored by analytics
mixin ExpectedFailure {}

extension ErroPresenter on Translations {
  PresentableError errorToPair(Object error) => switch (error) {
        UnexpectedFailure(error: final nestedErr?) => errorToPair(nestedErr),
        Failure() => error.present(this),
        _ => (type: failure.unexpected, message: error.toString()),
      };
  PresentableError presentError(Object error, {String? action}) {
    final pair = errorToPair(error);
    if (action == null) return pair;
    return (
      type: action,
      message: pair.type + (pair.message == null ? "" : "\n${pair.message}")
    );
  }

  String presentShortError(Object error, {String? action}) {
    final pair = errorToPair(error);
    if (action == null) return pair.type;
    return "$action: ${pair.type}";
  }
}
