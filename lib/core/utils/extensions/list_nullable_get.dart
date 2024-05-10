extension ListNullableGet<T> on List<T> {
  T? at(int index) {
    if(index < 0 || index > length-1) return null;
    return this[index];
  }
}