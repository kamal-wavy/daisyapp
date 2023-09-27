class RotaeDaisyModel {
  String? v;
  int? fr;
  int? ip;
  int? op;
  int? w;
  int? h;
  String? nm;
  int? ddd;
  List? assets;
  List<Layers>? layers;
  List? markers;

  RotaeDaisyModel(
      {this.v,
      this.fr,
      this.ip,
      this.op,
      this.w,
      this.h,
      this.nm,
      this.ddd,
      this.assets,
      this.layers,
      this.markers});

  RotaeDaisyModel.fromJson(Map<String, dynamic> json) {
    v = json['v'];
    fr = json['fr'];
    ip = json['ip'];
    op = json['op'];
    w = json['w'];
    h = json['h'];
    nm = json['nm'];
    ddd = json['ddd'];
    if (json['assets'] != null) {
      assets = <Null>[];
      //  json['assets'].forEach((v) { assets!.add(new Null.fromJson(v)); });
    }
    if (json['layers'] != null) {
      layers = <Layers>[];
      json['layers'].forEach((v) {
        layers!.add(new Layers.fromJson(v));
      });
    }
    if (json['markers'] != null) {
      markers = <Null>[];
      //  json['markers'].forEach((v) { markers!.add(new Null.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['v'] = this.v;
    data['fr'] = this.fr;
    data['ip'] = this.ip;
    data['op'] = this.op;
    data['w'] = this.w;
    data['h'] = this.h;
    data['nm'] = this.nm;
    data['ddd'] = this.ddd;
    if (this.assets != null) {
      data['assets'] = this.assets!.map((v) => v.toJson()).toList();
    }
    if (this.layers != null) {
      data['layers'] = this.layers!.map((v) => v.toJson()).toList();
    }
    if (this.markers != null) {
      data['markers'] = this.markers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Layers {
  int? ddd;
  int? ind;
  int? ty;
  String? nm;
  int? sr;
  Ks? ks;
  int? ao;
  List<Shapes>? shapes;
  int? ip;
  int? op;
  int? st;
  int? bm;
  int? parent;

  Layers(
      {this.ddd,
      this.ind,
      this.ty,
      this.nm,
      this.sr,
      this.ks,
      this.ao,
      this.shapes,
      this.ip,
      this.op,
      this.st,
      this.bm,
      this.parent});

  Layers.fromJson(Map<String, dynamic> json) {
    ddd = json['ddd'];
    ind = json['ind'];
    ty = json['ty'];
    nm = json['nm'];
    sr = json['sr'];
    ks = json['ks'] != null ? new Ks.fromJson(json['ks']) : null;
    ao = json['ao'];
    if (json['shapes'] != null) {
      shapes = <Shapes>[];
      json['shapes'].forEach((v) {
        shapes!.add(new Shapes.fromJson(v));
      });
    }
    ip = json['ip'];
    op = json['op'];
    st = json['st'];
    bm = json['bm'];
    parent = json['parent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ddd'] = this.ddd;
    data['ind'] = this.ind;
    data['ty'] = this.ty;
    data['nm'] = this.nm;
    data['sr'] = this.sr;
    if (this.ks != null) {
      data['ks'] = this.ks!.toJson();
    }
    data['ao'] = this.ao;
    if (this.shapes != null) {
      data['shapes'] = this.shapes!.map((v) => v.toJson()).toList();
    }
    data['ip'] = this.ip;
    data['op'] = this.op;
    data['st'] = this.st;
    data['bm'] = this.bm;
    data['parent'] = this.parent;
    return data;
  }
}

class Ks {
  O? o;
  R? r;
  S? p;
  O? a;
  S? s;

  Ks({this.o, this.r, this.p, this.a, this.s});

  Ks.fromJson(Map<String, dynamic> json) {
    o = json['o'] != null ? new O.fromJson(json['o']) : null;
    r = json['r'] != null ? new R.fromJson(json['r']) : null;
    p = json['p'] != null ? new S.fromJson(json['p']) : null;
    a = json['a'] != null ? new O.fromJson(json['a']) : null;
    s = json['s'] != null ? new S.fromJson(json['s']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.o != null) {
      data['o'] = this.o!.toJson();
    }
    if (this.r != null) {
      data['r'] = this.r!.toJson();
    }
    if (this.p != null) {
      data['p'] = this.p!.toJson();
    }
    if (this.a != null) {
      data['a'] = this.a!.toJson();
    }
    if (this.s != null) {
      data['s'] = this.s!.toJson();
    }
    return data;
  }
}

class O {
  int? a;
  int? k;
  int? ix;

  O({this.a, this.k, this.ix});

  O.fromJson(Map<String, dynamic> json) {
    a = json['a'];
    k = json['k'];
    ix = json['ix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['a'] = this.a;
    data['k'] = this.k;
    data['ix'] = this.ix;
    return data;
  }
}

class R {
  int? a;
  List<K>? k;
  int? ix;

  R({this.a, this.k, this.ix});

  R.fromJson(Map<String, dynamic> json) {
    a = json['a'];
    if (json['k'] != null) {
      k = <K>[];
      json['k'].forEach((v) {
        k!.add(new K.fromJson(v));
      });
    }
    ix = json['ix'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['a'] = this.a;
    if (this.k != null) {
      data['k'] = this.k!.map((v) => v.toJson()).toList();
    }
    data['ix'] = this.ix;
    return data;
  }
}

class K {
  I? i;
  O? o;
  int? t;
  List<int>? s;

  K({this.i, this.o, this.t, this.s});

  K.fromJson(Map<String, dynamic> json) {
    i = json['i'] != null ? new I.fromJson(json['i']) : null;
    o = json['o'] != null ? new O.fromJson(json['o']) : null;
    t = json['t'];
    s = json['s'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.i != null) {
      data['i'] = this.i!.toJson();
    }
    if (this.o != null) {
      data['o'] = this.o!.toJson();
    }
    data['t'] = this.t;
    data['s'] = this.s;
    return data;
  }
}

class I {
  List<double>? x;
  List<double>? y;

  I({this.x, this.y});

  I.fromJson(Map<String, dynamic> json) {
    x = json['x'].cast<double>();
    y = json['y'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    return data;
  }
}

class P {
  int? a;
  List<K>? k;
  int? ix;
  int? l;

  P({this.a, this.k, this.ix, this.l});

  P.fromJson(Map<String, dynamic> json) {
    a = json['a'];
    if (json['k'] != null) {
      k = <K>[];
      json['k'].forEach((v) {
        k!.add(new K.fromJson(v));
      });
    }
    ix = json['ix'];
    l = json['l'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['a'] = this.a;
    if (this.k != null) {
      data['k'] = this.k!.map((v) => v.toJson()).toList();
    }
    data['ix'] = this.ix;
    data['l'] = this.l;
    return data;
  }
}

class A {
  int? a;
  List<double>? k;
  int? ix;
  int? l;

  A({this.a, this.k, this.ix, this.l});

  A.fromJson(Map<String, dynamic> json) {
    a = json['a'];
    k = json['k'].cast<double>();
    ix = json['ix'];
    l = json['l'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['a'] = this.a;
    data['k'] = this.k;
    data['ix'] = this.ix;
    data['l'] = this.l;
    return data;
  }
}

class S {
  int? a;
  List<int>? k;
  int? ix;
  int? l;

  S({this.a, this.k, this.ix, this.l});

  S.fromJson(Map<String, dynamic> json) {
    a = json['a'];
    k = json['k'].cast<int>();
    ix = json['ix'];
    l = json['l'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['a'] = this.a;
    data['k'] = this.k;
    data['ix'] = this.ix;
    data['l'] = this.l;
    return data;
  }
}

class Shapes {
  String? ty;
  List<It>? it;
  String? nm;
  int? np;
  int? cix;
  int? bm;
  int? ix;
  String? mn;
  bool? hd;

  Shapes(
      {this.ty,
      this.it,
      this.nm,
      this.np,
      this.cix,
      this.bm,
      this.ix,
      this.mn,
      this.hd});

  Shapes.fromJson(Map<String, dynamic> json) {
    ty = json['ty'];
    if (json['it'] != null) {
      it = <It>[];
      json['it'].forEach((v) {
        it!.add(new It.fromJson(v));
      });
    }
    nm = json['nm'];
    np = json['np'];
    cix = json['cix'];
    bm = json['bm'];
    ix = json['ix'];
    mn = json['mn'];
    hd = json['hd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ty'] = this.ty;
    if (this.it != null) {
      data['it'] = this.it!.map((v) => v.toJson()).toList();
    }
    data['nm'] = this.nm;
    data['np'] = this.np;
    data['cix'] = this.cix;
    data['bm'] = this.bm;
    data['ix'] = this.ix;
    data['mn'] = this.mn;
    data['hd'] = this.hd;
    return data;
  }
}

class It {
  int? ind;
  String? ty;
  int? ix;
  Ks? ks;
  String? nm;
  String? mn;
  bool? hd;
  O? o;
  int? r;
  int? bm;
  G? g;
  S? s;
  S? e;
  int? t;
  O? h;
  O? a;
  S? p;
  O? sk;
  O? sa;
  S? c;
  int? mm;

  It(
      {this.ind,
      this.ty,
      this.ix,
      this.ks,
      this.nm,
      this.mn,
      this.hd,
      this.o,
      this.r,
      this.bm,
      this.g,
      this.s,
      this.e,
      this.t,
      this.h,
      this.a,
      this.p,
      this.sk,
      this.sa,
      this.c,
      this.mm});

  It.fromJson(Map<String, dynamic> json) {
    ind = json['ind'];
    ty = json['ty'];
    ix = json['ix'];
    ks = json['ks'] != null ? new Ks.fromJson(json['ks']) : null;
    nm = json['nm'];
    mn = json['mn'];
    hd = json['hd'];
    o = json['o'] != null ? new O.fromJson(json['o']) : null;
    r = json['r'];
    bm = json['bm'];
    g = json['g'] != null ? new G.fromJson(json['g']) : null;
    s = json['s'] != null ? new S.fromJson(json['s']) : null;
    e = json['e'] != null ? new S.fromJson(json['e']) : null;
    t = json['t'];
    h = json['h'] != null ? new O.fromJson(json['h']) : null;
    a = json['a'] != null ? new O.fromJson(json['a']) : null;
    p = json['p'] != null ? new S.fromJson(json['p']) : null;
    sk = json['sk'] != null ? new O.fromJson(json['sk']) : null;
    sa = json['sa'] != null ? new O.fromJson(json['sa']) : null;
    c = json['c'] != null ? new S.fromJson(json['c']) : null;
    mm = json['mm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ind'] = this.ind;
    data['ty'] = this.ty;
    data['ix'] = this.ix;
    if (this.ks != null) {
      data['ks'] = this.ks!.toJson();
    }
    data['nm'] = this.nm;
    data['mn'] = this.mn;
    data['hd'] = this.hd;
    if (this.o != null) {
      data['o'] = this.o!.toJson();
    }
    data['r'] = this.r;
    data['bm'] = this.bm;
    if (this.g != null) {
      data['g'] = this.g!.toJson();
    }
    if (this.s != null) {
      data['s'] = this.s!.toJson();
    }
    if (this.e != null) {
      data['e'] = this.e!.toJson();
    }
    data['t'] = this.t;
    if (this.h != null) {
      data['h'] = this.h!.toJson();
    }
    if (this.a != null) {
      data['a'] = this.a!.toJson();
    }
    if (this.p != null) {
      data['p'] = this.p!.toJson();
    }
    if (this.sk != null) {
      data['sk'] = this.sk!.toJson();
    }
    if (this.sa != null) {
      data['sa'] = this.sa!.toJson();
    }
    if (this.c != null) {
      data['c'] = this.c!.toJson();
    }
    data['mm'] = this.mm;
    return data;
  }
}

class G {
  int? p;
  K? k;

  G({this.p, this.k});

  G.fromJson(Map<String, dynamic> json) {
    p = json['p'];
    k = json['k'] != null ? new K.fromJson(json['k']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['p'] = this.p;
    if (this.k != null) {
      data['k'] = this.k!.toJson();
    }
    return data;
  }
}
