
abstract class Cache<T, K> {
  T? getByKey(K key);
  void setByKey(K key, T value);
}

class MyCache<T, K> implements Cache<T, K> {

  Map<K, T> _cache = Map();

  @override
  T? getByKey(K key) {
    return _cache[key];
  }

  @override
  void setByKey(K key, T value) {
    _cache[key] = value;
  }
}

void main(List<String> args) {
  MyCache<String, int> cache = MyCache();
  cache.setByKey(0, 'Blumenau');
  cache.setByKey(1, 'Gaspar');

  print( cache.getByKey(1) );
}