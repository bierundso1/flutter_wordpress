class ACF {
  String? bierTyp;
  String? alkoholgehalt;
  String? herkunftDesBieres;
  String? farbeDerFlasche;
  String? brauerei;
  Map<String, dynamic>? bild_sizes;
  int? imageIDAfterUpload;
  List<dynamic>? bewertungenJson;

  ACF({
    this.bierTyp,
    this.alkoholgehalt,
    this.herkunftDesBieres,
    this.farbeDerFlasche,
    this.brauerei,
    this.imageIDAfterUpload,
    this.bewertungenJson,
  });

  ACF.fromJson(Map<String, dynamic> json) {
    bierTyp = json['bier-typ'];
    alkoholgehalt = json['alkoholgehalt'];
    herkunftDesBieres = json['herkunft_des_bieres'];
    farbeDerFlasche = json['farbe_der_flasche'];
    brauerei = json['brauerei'] != false ? json['brauerei'] : "";
    bild_sizes = json['bild_neben_text_bild'] != false ? json['bild_neben_text_bild'] : null;
    bewertungenJson = json['bewertungen_app_rep'] != false ? json['bewertungen_app_rep'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bierTyp != null) data['bier-typ'] = this.bierTyp;
    if (this.alkoholgehalt != null) data['alkoholgehalt'] = this.alkoholgehalt;
    if (this.herkunftDesBieres != null) data['herkunft_des_bieres'] = this.herkunftDesBieres;
    if (this.farbeDerFlasche != null) data['farbe_der_flasche'] = this.farbeDerFlasche;
    if (this.brauerei != null) data['brauerei'] = this.brauerei;
    if (this.imageIDAfterUpload != null) data['bild_neben_text_bild'] = this.imageIDAfterUpload;
    if (this.bewertungenJson != null) data['bewertungen_app_rep'] = this.bewertungenJson;

    return data;
  }
}
