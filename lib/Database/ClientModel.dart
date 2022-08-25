// @dart=2.9
class StudentDatabase {
  final double id;
  final double courseID;
  final double topicID;
  final String courseName;
  final String courseDescription;
  final String videoURl;

  StudentDatabase({
      this.id,
     this.courseID,
      this.topicID,
     this.courseName,
     this.courseDescription,
     this.videoURl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'courseID': courseID,
      'topicID': topicID,
      'courseName': courseName,
      'courseDescription': courseDescription,
      'videoURl': videoURl,
    };
  }
  factory StudentDatabase.fromMap(Map<String, dynamic> json) =>  StudentDatabase(
        id: json["id"],
        courseID: json["courseID"],
        topicID: json["topicID"],
        courseName: json["courseName"],
        courseDescription: json["courseDescription"],
        videoURl: json["videoURl"],
  );
  @override
  String toString() {
    return 'VideoDatabase{id: $id, courseID: $courseID, topicID: $topicID, courseName : $courseName, courseDescription: $courseDescription, videoURl:$videoURl }';
  }


}
