enum QuizType {
  choice,
  multiChoice,
  ox,
  shortAnswer,
}

abstract class Quiz {
  final QuizType type;
  final String description;

  const Quiz(this.type, this.description);
}

class QuizChoice extends Quiz {
  final int answer;
  final int length;
  final List<String> options;

  const QuizChoice(
    String description,
    this.answer,
    this.length,
    this.options
  ) : super(QuizType.choice, description);
}

class QuizMultiChoice extends Quiz {
  final List<int> answer;
  final int length;
  final List<String> options;

  const QuizMultiChoice(
    String description,
    this.answer,
    this.length,
    this.options
  ) : super(QuizType.multiChoice, description);
}

class QuizOX extends Quiz {
  final bool answer;

  const QuizOX(
    String description,
    this.answer
  ) : super(QuizType.ox, description);
}

class QuizShort extends Quiz {
  final String answer;

  const QuizShort(
    String description,
    this.answer
  ) : super(QuizType.shortAnswer, description);
}