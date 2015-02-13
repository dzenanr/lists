// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The lists library.
library lists;

List flatten(List list) {
  var result = [];
  list.forEach((e) => e is Iterable ? result.addAll(e) : result.add(e));
  return result;
}

int maxLength(List<String> list) => list.fold(0, (v, e) => v < e.length ? e.length : v);

dynamic max(List list) => list.reduce((v, e) => v.compareTo(e) == -1 ? e : v);