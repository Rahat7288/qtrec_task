// ignore_for_file: public_member_api_docs, sort_constructors_first
class CustomError {
  final String errMsg;
  CustomError({
    this.errMsg = '',
  });

  @override
  List<Object> get props => [errMsg];

  @override
  String toString() => 'CustomError(errMsg: $errMsg)';
}
