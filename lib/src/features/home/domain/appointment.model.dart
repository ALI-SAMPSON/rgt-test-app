class Appointment {
  String? name;
  int? occurrence;
  AppointmentType? appointmentType;

  Appointment({
    required this.name,
    required this.occurrence,
    required this.appointmentType,
  });

  Appointment.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    occurrence = json['occurrence'];
    appointmentType = json['appointment'] != null
        ? AppointmentType.fromJson(json['appointment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['occurrence'] = occurrence;
    if (appointmentType != null) {
      data['appointment'] = appointmentType!.toJson();
    }
    return data;
  }
}

class AppointmentType {
  String? healthProfessional;
  String? visitedAt;
  String? visiteType;

  AppointmentType(
      {required this.healthProfessional,
      required this.visitedAt,
      required this.visiteType});

  AppointmentType.fromJson(Map<String, dynamic> json) {
    healthProfessional = json['healthProfessional'];
    visiteType = json['visiteType'];
    visitedAt = json['visitedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['healthProfessional'] = healthProfessional;
    data['visiteType'] = visiteType;
    data['visitedAt'] = visitedAt;
    return data;
  }
}

final appointments = [
  Appointment(
    name: 'Future Visits',
    occurrence: 1,
    appointmentType: AppointmentType(
        healthProfessional: 'Dr. David Q. Cochran',
        visitedAt: "2024-02-04T17:41:22.586464",
        visiteType: 'Follow Up'),
  ),
  Appointment(
    name: 'Future Vaccinations',
    occurrence: 1,
    appointmentType: AppointmentType(
        healthProfessional: 'Dr. Lord Quashie',
        visitedAt: "2024-02-04T17:41:22.586464",
        visiteType: 'Follow Up'),
  ),
  Appointment(
    name: 'Future Lab Test',
    occurrence: 1,
    appointmentType: AppointmentType(
        healthProfessional: 'Dr. Linda Kingston',
        visitedAt: '2024-02-04T17:41:22.586464',
        visiteType: 'Follow Up'),
  ),
  Appointment(
    name: 'Future Imaging',
    occurrence: 1,
    appointmentType: AppointmentType(
      healthProfessional: 'Dr. David Q. Cochran',
      visitedAt: '2024-02-04T17:41:22.586464',
      visiteType: 'Follow Up',
    ),
  ),
  Appointment(
    name: 'Surgeries',
    occurrence: 1,
    appointmentType: AppointmentType(
      healthProfessional: 'Dr. David Q. Cochran',
      visitedAt: '2024-01-04T17:41:22.586464',
      visiteType: 'Follow Up',
    ),
  ),
];
