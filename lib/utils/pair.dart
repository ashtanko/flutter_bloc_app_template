class Pair<F, S> {
  const Pair(this.first, this.second);

  final F first;
  final S second;

  @override
  String toString() => 'Pair($first, $second)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pair &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;

  @override
  int get hashCode => first.hashCode ^ second.hashCode;
}
