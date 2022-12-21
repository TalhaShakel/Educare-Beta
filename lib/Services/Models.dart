class UserModel {
  String? uid;
  // String? Nationality;
  // String? dob;
  // String? description;
  String? fullName;
  String? userEmail, address, search, childName, schoolAddress, grade, zipCode;
  // int? singup_step;
  // List? award;
  // List ? album;
  String? userImage;
  String? userPhone;
  String? password;
  Map? child, tutor, parent, student;
  // List? musicCategorie;
  // List? links;
  // var time;
  bool? vehicleInformation;

  UserModel(
      {this.uid,
      this.vehicleInformation,
      this.password,
      this.address,
      this.fullName,
      this.userEmail,
      this.childName,
      this.schoolAddress,
      this.userImage,
      this.search,
      this.grade,
      this.zipCode,
      this.child,
      this.tutor,
      this.parent,
      this.student,
      this.userPhone});

  UserModel.fromMap(map) {
    // album = map["album"];
    // time = map["time"];
    // links = map["links"];
    // musicCategorie = map["musicCategorie"];
    child = map["child"];
    uid = map["uid"];
    parent = map["parent"];
    tutor = map["tutor"];
    student = map["student"];
    // dob = map["dob"];
    userImage = map["profilePic"];
    fullName = map["fullName"];
    search = map["search"];
    // description = map["description"];
    userPhone = map["userPhone"];
    userEmail = map["userEmail"];

    zipCode = map["zipCode"];
    address = map["address"];
    // userType = map["userType"];
    // singup_step = map["singupStep"];
  }
  Map<String, dynamic> toMap() {
    return {
      // "album": album,
      // "time": time,
      // "musicCategorie": musicCategorie,
      // "links": links,
      "vehicleInformation": vehicleInformation,
      "password": password,
      // "userType": userType,
      // "singupStep": singup_step,
      "uid": uid,
      "userPhone": userPhone,
      "fullName": fullName,
      "userEmail": userEmail,
      "search": search,
      "tutor": tutor,
      "parent": parent,
      "student": student,

      "address": address,
      "profilePic":
          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png",
      // "nationality": Nationality,
      // "dob": dob,
      // "description": description
    };
  }
}

class ChildData {
  Map? child;
  bool? submitData;

  String? childName, schoolAddress, grade, uid;
  ChildData(
      {this.child,
      this.childName,
      this.schoolAddress,
      this.grade,
      this.uid,
      this.submitData});
  ChildData.fromMap(map) {
    child = map["child"];
    submitData = map["submitData"];
    childName = map["childName"];
    schoolAddress = map["schoolAddress"];
    grade = map["grade"];
    uid = map["uid"];
  }
  Map<String, dynamic> toMap() {
    return {
      "submitData": false,
      "uid": uid,
      "childName": childName,
      "schoolAddress": schoolAddress,
      "grade": grade
    };
  }
}

class TutorData {
  Map? child;
  bool? submitdata;

  String? fullName,
      experience,
      teaching,
      teaching2,
      experience2,
      major,
      uid,
      profilePic;
  TutorData(
      {this.child,
      this.major,
      this.fullName,
      this.experience,
      this.teaching,
      this.experience2,
      this.teaching2,
      this.uid,
      this.profilePic,
      this.submitdata});
  TutorData.fromMap(map) {
    child = map["child"];
    major = map["major"];
    fullName = map["fullName"];
    experience = map["experience"];
    teaching = map["teaching"];
    experience2 = map["experience2"];
    teaching2 = map["teaching2"];
    uid = map["uid"];
    profilePic = map["profilePic"];
    submitdata = map["submitdata"];
  }
  Map<String, dynamic> toMap() {
    return {
      // "child": {},
      "uid": uid,
      // "major": "$major",
      "usertype": "tutor",
      "fullName": "$fullName",
      "experience": "$experience",
      "teaching": "$teaching",
      // "experience2": "$experience2",
      // "teaching2": "$teaching2",
      "profilePic":
          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png",
      "submitdata": false,
    };
  }
}

class TutorData2 {
  Map? child;

  String? fullName,
      experience,
      teaching,
      teaching2,
      experience2,
      major,
      uid,
      profilePic;
  TutorData2(
      {this.child,
      this.major,
      this.fullName,
      this.experience,
      this.teaching,
      this.experience2,
      this.teaching2,
      this.uid,
      this.profilePic});
  TutorData2.fromMap(map) {
    child = map["child"];
    major = map["major"];
    fullName = map["fullName"];
    experience = map["experience"];
    teaching = map["teaching"];
    experience2 = map["experience2"];
    teaching2 = map["teaching2"];
    uid = map["uid"];
    profilePic = map["profilePic"];
  }
  Map<String, dynamic> toMap() {
    return {
      // "child": {},
      "uid": uid,
      "major": "$major",
      // "usertype": "tutor",
      // "fullName": "$fullName",
      // "experience": "$experience",
      // "teaching": "$teaching",
      "experience2": "$experience2",
      "teaching2": "$teaching2",
      // "profilePic":
      //     "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png"
    };
  }
}

class StudentData {
  Map? child;
  bool? submitdata;

  String? fullName, age, search, uid, profilePic;
  StudentData(
      {this.child,
      this.fullName,
      this.age,
      this.search,
      this.uid,
      this.profilePic,
      this.submitdata});
  StudentData.fromMap(map) {
    child = map["child"];
    fullName = map["fullName"];
    age = map["age"];
    search = map["search"];
    uid = map["uid"];
    profilePic = map["profilePic"];
    submitdata = map["submitdata"];
  }
  Map<String, dynamic> toMap() {
    return {
      "child": {},
      "uid": uid,
      "usertype": "student",
      "fullName": fullName,
      "age": age,
      "search": search,
      "profilePic":
          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png",
      "submitdata": false,
    };
  }
}

class ParentsData {
  Map? child;

  String? fullName, address, search, uid, profilePic;
  bool? submitdata;
  ParentsData(
      {this.child,
      this.fullName,
      this.address,
      this.search,
      this.uid,
      this.profilePic,
      this.submitdata});
  ParentsData.fromMap(map) {
    child = map["child"];
    fullName = map["fullName"];
    address = map["address"];
    search = map["search"];
    uid = map["uid"];
    profilePic = map["profilePic"];
    submitdata = map["submitdata"];

    ;
  }
  Map<String, dynamic> toMap() {
    return {
      // "parentchild": null,
      "uid": uid,
      "usertype": "parent",
      "fullName": fullName,
      "address": address,
      "search": search,
      "profilePic":
          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png",
      "submitdata": false
    };
  }
}
