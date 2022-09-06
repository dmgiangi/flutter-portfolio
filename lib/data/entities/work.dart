class Work {
  final String _image;
  final String _category;
  final String _title;
  final String _description;
  final String _link;

  Work(
      {required image,
      required category,
      required title,
      required description,
      required link})
      : _image = image,
        _category = category,
        _title = title,
        _description = description,
        _link = link;

  String get title => _title;

  String get category => _category;

  String get image => _image;

  String get description => _description;

  String get link => _link;
}
