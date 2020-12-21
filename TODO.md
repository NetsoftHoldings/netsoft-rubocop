## Custom cops to develop:

* `DeepFreeze`: Instead of `Style/MutableConstant`, we need our custom `.deep_freeze` method and cop checking it is
  attached to arrays, hashes, and values from configs.
