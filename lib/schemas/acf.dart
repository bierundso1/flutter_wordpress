class ACF {
  String bierTyp;
  String alkoholgehalt;

  ACF.fromJson(Map<String, dynamic> json) {
    bierTyp = json['bier-typ'];
    alkoholgehalt = json['alkoholgehalt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bierTyp != null) data['bier-typ'] = this.bierTyp;
    if (this.alkoholgehalt != null) data['alkoholgehalt'] = this.alkoholgehalt;
    return data;
  }
}
