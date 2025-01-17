import 'package:equatable/equatable.dart';
import 'package:test_flutter_project/src/data/model/exam/creator_model.dart';
import 'package:test_flutter_project/src/data/model/exam/question_model.dart';

class ExamEntity extends Equatable{


 final int? id;
 final String? title;
 final String? description;
 final List<Questions>? questions;
 final String? startDate;
 final String? endDate;
 final int? duration;
 final String? createdAt;
 final String? updatedAt;
 final Creator? creator;
 final String? deletedAt;


  const ExamEntity({
 this.id,
 this.title,
 this.description,
 this.questions,
 this.startDate,
 this.endDate,
 this.duration,
 this.createdAt,
 this.updatedAt,
 this.creator,
 this.deletedAt
}
      );

  @override

  List<Object?> get props => [id , title , description , questions ,startDate ,endDate ,duration ,
    createdAt , updatedAt ,creator , deletedAt
  ];

}
