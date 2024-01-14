class Medication {
  String? name;
  String? grams;
  int? dosage;
  bool? morning;
  bool? afternoon;
  bool? evening;

  Medication({
    required this.name,
    required this.grams,
    required this.dosage,
    required this.morning,
    required this.afternoon,
    required this.evening,
  });

  Medication.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    grams = json['grams'];
    dosage = json['dosage'];
    morning = json['morning'];
    afternoon = json['afternoon'];
    evening = json['evening'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['grams'] = grams;
    data['dosage'] = dosage;
    data['morning'] = morning;
    data['afternoon'] = afternoon;
    data['evening'] = evening;
    return data;
  }
}

final medications = <Medication>[
  Medication(
    name: 'ENTRESTO',
    grams: '100 mg',
    dosage: 2,
    morning: true,
    afternoon: false,
    evening: true,
  ),
  Medication(
    name: 'Spironolactone',
    grams: '25 mg',
    dosage: 1,
    morning: true,
    afternoon: false,
    evening: false,
  ),
  Medication(
    name: 'Anaesthetic Antacid',
    grams: '125 mg',
    dosage: 3,
    morning: true,
    afternoon: true,
    evening: false,
  ),
  Medication(
    name: 'Cyproheptadine',
    grams: '200 ml',
    dosage: 1,
    morning: false,
    afternoon: false,
    evening: true,
  ),
  Medication(
    name: 'Apetamin',
    grams: '200 mg',
    dosage: 2,
    morning: true,
    afternoon: false,
    evening: true,
  ),
];
