class ACF {
  String? bierTyp;
  String? alkoholgehalt;
  String? herkunftDesBieres;
  String? farbeDerFlasche;
  String? brauerei;
  String? bewertung;
  String? bewertungChristoph;
  Map<String, dynamic>? bild_sizes;
  int? imageIDAfterUpload;

  ACF({
    this.bierTyp,
    this.alkoholgehalt,
    this.herkunftDesBieres,
    this.farbeDerFlasche,
    this.brauerei,
    this.bewertung,
    this.bewertungChristoph,
    this.imageIDAfterUpload
  });

  ACF.fromJson(Map<String, dynamic> json) {
    bierTyp = json['bier-typ'];
    alkoholgehalt = json['alkoholgehalt'];
    herkunftDesBieres = json['herkunft_des_bieres'];
    farbeDerFlasche = json['farbe_der_flasche'];
    brauerei = json['brauerei'] != false ? json['brauerei'] : "";
    bewertung = json['bewertung'] != false ? json['bewertung'] : "";
    bewertungChristoph = json['bewertung_christoph'] != false ? json['bewertung_christoph'] : "";
    bild_sizes = json['bild_neben_text_bild'] != false ? json['bild_neben_text_bild'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bierTyp != null) data['bier-typ'] = this.bierTyp;
    if (this.alkoholgehalt != null) data['alkoholgehalt'] = this.alkoholgehalt;
    if (this.herkunftDesBieres != null) data['herkunft_des_bieres'] = this.herkunftDesBieres;
    if (this.farbeDerFlasche != null) data['farbe_der_flasche'] = this.farbeDerFlasche;
    if (this.brauerei != null) data['brauerei'] = this.brauerei;
    if (this.bewertung != null) data['bewertung'] = this.bewertung;
    if (this.bewertungChristoph != null) data['bewertung_christoph'] = this.bewertungChristoph;
    if (this.imageIDAfterUpload != null) data['bild_neben_text_bild'] = this.imageIDAfterUpload;

    return data;
  }
}
