class BhagavadGita {
  int? chapterNum;
  String? chaptersummary;
  String? SummaryinHindi;
  int? id;
  String? name;
  String? meaningofName;
  String? nameTranslation;

  BhagavadGita({
    this.chapterNum,
    this.chaptersummary,
    this.SummaryinHindi,
    this.id,
    this.name,
    this.meaningofName,
    this.nameTranslation,
  });

  factory BhagavadGita.fromjson(Map<String, dynamic> json) => BhagavadGita(
      chapterNum: json['chapter_number'],
      chaptersummary: json['chapter_summary'],
      SummaryinHindi: json['chapter_summary_hindi'],
      id: json['id'],
      name: json['name'],
      meaningofName: json['name_meaning'],
      nameTranslation: json['name_translation'],
  );

  Map<String , dynamic> tojson() => {
   'chapter_number': chapterNum,
    "chapter_summary": chaptersummary,
    "chapter_summary_hindi": SummaryinHindi,
    "id": id,
    "name": name,
    "name_meaning": meaningofName,
    "name_translation": nameTranslation,
  };
}
