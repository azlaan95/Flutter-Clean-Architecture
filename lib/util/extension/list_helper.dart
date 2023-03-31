extension ListHelper<E> on List<E> {
  E? firstWhereOrNull(bool Function(E e) condition) {
    return cast<E?>().firstWhere(
      (e) => e == null ? false : condition(e),
      orElse: () => null,
    );
  }
}
