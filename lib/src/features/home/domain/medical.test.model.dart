class MedicalTest {
  String? name;
  int? measure;
  String? status;
  String? createdAt;
  String? testedAt;
  String? organisation;
  MedicalTest? lastResult;

  MedicalTest({
    required this.testedAt,
    required this.name,
    required this.measure,
    required this.status,
    required this.createdAt,
    required this.organisation,
    required this.lastResult,
  });

  MedicalTest.fromJson(Map<String, dynamic> json) {
    testedAt = json['testedAt'];
    name = json['name'];
    measure = json['measure'];
    status = json['status'];
    createdAt = json['createdAt'];
    organisation = json['organisation'];
    lastResult = json['lastResult'] != null
        ? MedicalTest.fromJson(json['lastResult'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['testedAt'] = testedAt;
    data['name'] = name;
    data['measure'] = measure;
    data['status'] = status;
    data['createdAt'] = createdAt;
    data['organisation'] = organisation;
    if (lastResult != null) {
      data['lastResult'] = lastResult!.toJson();
    }
    return data;
  }
}
