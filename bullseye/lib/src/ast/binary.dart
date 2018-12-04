import 'package:bullseye/bullseye.dart';
import 'package:source_span/source_span.dart';
import 'expression.dart';

abstract class BinaryExpression extends Expression {
  final Expression left, right;
  final Token op;

  BinaryExpression(
      List<Token> comments, FileSpan span, this.left, this.right, this.op)
      : super(comments, span);
}

class ExponentialExpression extends BinaryExpression {
  ExponentialExpression(List<Token> comments, FileSpan span, Expression left,
      Expression right, Token op)
      : super(comments, span, left, right, op);
}

class MulDivModExpression extends BinaryExpression {
  MulDivModExpression(List<Token> comments, FileSpan span, Expression left,
      Expression right, Token op)
      : super(comments, span, left, right, op);
}

class AddSubExpression extends BinaryExpression {
  AddSubExpression(List<Token> comments, FileSpan span, Expression left,
      Expression right, Token op)
      : super(comments, span, left, right, op);
}