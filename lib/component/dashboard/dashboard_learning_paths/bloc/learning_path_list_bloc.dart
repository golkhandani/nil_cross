import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_category_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/model/learning_path_complete_model.dart';
import 'package:test_routing_flow/component/dashboard/dashboard_learning_paths/repo/categories.dart';
import 'package:test_routing_flow/router/app_locator.dart';
import 'package:test_routing_flow/router/app_navigator.dart';
import 'package:test_routing_flow/router/app_router.dart';

part 'learning_path_list_event.dart';
part 'learning_path_list_state.dart';
part 'learning_path_list_bloc.freezed.dart';

class LearningPathListBloc
    extends Bloc<LearningPathListEvent, LearningPathListState> {
  LearningPathListBloc() : super(LearningPathListState.initial()) {
    on<LearningPathListEvent>((event, emit) async {
      await event.when<Future<void>>(
        selectLearningPath: (id) => _selectLearningPath(id, emit),
        loadSelectLearningPath: (id) => _loadselectLearningPath(id, emit),
        load: () => _load(emit),
        getLearningPath: (id) => _getLearningPath(id, emit),
      );
    });
  }

  _getLearningPath(String id, Emitter<LearningPathListState> emit) async {
    await getHttp();
    emit(state.copyWith(
      isLoadingLearningPathComplete: true,
      learningPathComplete: null,
    ));
    await Future.delayed(const Duration(milliseconds: 2000));
    final lc = LearningPathComplete.fromJson({
      "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
      "title": "Raven",
      "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
      "summary":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
      "score": 1,
      "duration": "10 days",
      "counts": {"steps": 10, "likes": 1000, "notLikes": 3000, "forks": 20},
      "steps": [
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 1",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 2",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 3",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 4",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 5",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 6",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 7",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        },
        {
          "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
          "title": "Raven 8",
          "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
          "summary":
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor",
          "htmlContent": "",
          "createdAt": "2018-12-10T13:49:51.141Z",
          "updatedAt": "2018-12-10T13:49:51.141Z"
        }
      ],
      "author": {
        "id": "id",
        "username": "username",
        "name": "name",
        "bio": "bio",
        "email": "email",
        "expertise": ["expertise", "expertise", "expertise", "expertise"],
        "createdAt": "2018-12-10T13:49:51.141Z",
        "updatedAt": "2018-12-10T13:49:51.141Z"
      },
      "createdAt": "2018-12-10T13:49:51.141Z",
      "updatedAt": "2018-12-10T13:49:51.141Z"
    });
    List<LearningPathStep?> steps = List.from(lc.steps?.map((e) => e) ?? []);
    steps.shuffle();
    emit(state.copyWith(
      isLoadingLearningPathComplete: false,
      learningPathComplete: LearningPathComplete(
        id: lc.id,
        title: lc.title,
        thumbnail: lc.thumbnail,
        summary: lc.summary,
        score: lc.score,
        duration: lc.duration,
        counts: lc.counts,
        steps: steps,
        author: lc.author,
        createdAt: lc.createdAt,
        updatedAt: lc.updatedAt,
      ),
      isLoading: false,
    ));
  }

  _loadselectLearningPath(
    String id,
    Emitter<LearningPathListState> emit,
  ) async {
    late LearningPathSummary? selected;
    await _load(emit);
    emit(state.copyWith(
      learningPathSummary: null,
      learningPathComplete: null,
      isLoading: true,
    ));
    state.learningPathCategories.firstWhere((e) {
      selected = e.items
          .firstWhere((element) => element?.id == id, orElse: () => null);
      return selected != null ? true : false;
    });
    emit(state.copyWith(learningPathSummary: selected));
    emit(state.copyWith(
      learningPathComplete: null,
      isLoading: false,
    ));
    locator.get<AppNavigator>().push(DashboardLearningPathSingleRouter(id: id));
  }

  _selectLearningPath(String id, Emitter<LearningPathListState> emit) async {
    late LearningPathSummary? selected;
    state.learningPathCategories.firstWhere((e) {
      selected = e.items
          .firstWhere((element) => element?.id == id, orElse: () => null);
      return selected != null ? true : false;
    });
    emit(state.copyWith(learningPathSummary: selected));
    locator.get<AppNavigator>().push(DashboardLearningPathSingleRouter(id: id));
  }

  _load(Emitter<LearningPathListState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(milliseconds: 200));
    emit(state.copyWith(learningPathCategories: fakeList));
    emit(state.copyWith(isLoading: false));
  }

  List<LearningPathCategory> get fakeList {
    return [
      LearningPathCategory.fromJson({
        "id": "d7a48d9c-abf8-42f4-a299-70daa20ac704",
        "title": "Librarian",
        "thumbnail": "http://dummyimage.com/231x100.png/ff4444/ffffff",
        "summary": "Highway rest stop as place",
        "items": [
          {
            "id": "22de8dcd-47fe-4f7d-a3cf-7aee8af4fb5b",
            "title": "Raven",
            "thumbnail": "http://dummyimage.com/172x100.png/5fa2dd/ffffff",
            "summary":
                '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum egestas quam id dolor tempus, nec sollicitudin leo hendrerit. Donec ut tortor malesuada, imperdiet augue nec, maximus ipsum. In ac sem nec sem efficitur lobortis. Curabitur rutrum lorem in tincidunt lobortis. Mauris facilisis dui vel eros tincidunt, vitae lacinia ex vehicula. Morbi aliquam, lorem eget fermentum eleifend, lectus felis semper arcu, quis vulputate mi risus quis nibh. Vestibulum sed ante egestas lorem tempus consequat. In venenatis tortor felis, non malesuada mauris venenatis vitae. Aliquam id leo enim. Quisque vitae porta orci, ut aliquam lacus. Aenean vitae tortor elit.''',
            "score": 1
          },
          {
            "id": "71a2cd5f-040c-4778-8960-6d4ce8c0b72a",
            "title": "Village",
            "thumbnail": "http://dummyimage.com/119x100.png/dddddd/000000",
            "summary":
                "Removal of Infusion Device from Testis, Perc Endo Approach",
            "score": 5
          },
          {
            "id": "a65d34f4-27b6-40de-b87c-50a60f065c7f",
            "title": "Cottonwood",
            "thumbnail": "http://dummyimage.com/204x100.png/dddddd/000000",
            "summary":
                "Replacement of R Toe Phalanx with Autol Sub, Perc Approach",
            "score": 1
          }
        ]
      }),
      LearningPathCategory.fromJson({
        "id": "383a1332-e7b4-4bbe-85e9-e9f55b9e99d6",
        "title": "Sales Associate",
        "thumbnail": "http://dummyimage.com/104x100.png/5fa2dd/ffffff",
        "summary": "Mild laceration of heart with hemopericardium",
        "items": [
          {
            "id": "c4dd8019-cc67-4e04-b6c1-797fc3ed1f96",
            "title": "Bay",
            "thumbnail": "http://dummyimage.com/147x100.png/dddddd/000000",
            "summary": "Magnetic Resonance Imaging (MRI) of Bi Salivary Gland",
            "score": 2
          },
          {
            "id": "7d646c1a-b431-4428-909f-75431807fcc9",
            "title": "Mayer",
            "thumbnail": "http://dummyimage.com/148x100.png/dddddd/000000",
            "summary": "Reposition Upper Tooth, Single, Open Approach",
            "score": 5
          },
          {
            "id": "e4534fe6-e947-4ad1-a3ad-9c184dcf15ca",
            "title": "Carberry",
            "thumbnail": "http://dummyimage.com/102x100.png/dddddd/000000",
            "summary":
                "Supplement R Elbow Bursa/Lig with Autol Sub, Open Approach",
            "score": 1
          }
        ]
      }),
      LearningPathCategory.fromJson({
        "id": "dfd2155b-16f6-432f-a980-a19571fb5b9a",
        "title": "Help Desk Technician",
        "thumbnail": "http://dummyimage.com/124x100.png/dddddd/000000",
        "summary":
            "Disp fx of neck of scapula, right shoulder, init for opn fx",
        "items": [
          {
            "id": "ba212a9e-db55-4da2-9250-0010a0f923cc",
            "title": "Meadow Ridge",
            "thumbnail": "http://dummyimage.com/179x100.png/ff4444/ffffff",
            "summary": "Reposition Right Metatarsal, Percutaneous Approach",
            "score": 3
          },
          {
            "id": "b020b177-3ec6-4d7f-a1bd-99fa5ab66244",
            "title": "Northwestern",
            "thumbnail": "http://dummyimage.com/142x100.png/dddddd/000000",
            "summary": "Release Right Femoral Artery, Percutaneous Approach",
            "score": 1
          },
          {
            "id": "28eec14e-122d-45fc-97da-1bd5b871e8f6",
            "title": "Heffernan",
            "thumbnail": "http://dummyimage.com/103x100.png/5fa2dd/ffffff",
            "summary":
                "Restriction of Left Colic Artery, Percutaneous Approach",
            "score": 3
          }
        ]
      }),
      LearningPathCategory.fromJson({
        "id": "3af84cb9-04e4-4f4a-a24c-538f9af38d2c",
        "title": "Health Coach IV",
        "thumbnail": "http://dummyimage.com/193x100.png/ff4444/ffffff",
        "summary":
            "Other specified injury of axillary artery, unspecified side",
        "items": [
          {
            "id": "c9f70938-553f-4f1e-9ee0-67b9c79c3a74",
            "title": "Farwell",
            "thumbnail": "http://dummyimage.com/140x100.png/5fa2dd/ffffff",
            "summary":
                "Supplement Left Palatine Bone with Nonaut Sub, Open Approach",
            "score": 3
          },
          {
            "id": "ddbae1d6-961e-4c90-bc74-0f2ddba3fcf9",
            "title": "Blaine",
            "thumbnail": "http://dummyimage.com/152x100.png/ff4444/ffffff",
            "summary": "Remove Infusion Dev from R Toe Phalanx Jt, Extern",
            "score": 4
          },
          {
            "id": "3f6775f1-6faa-473f-9eab-a567c7abcf53",
            "title": "Porter",
            "thumbnail": "http://dummyimage.com/243x100.png/ff4444/ffffff",
            "summary": "Supplement C-thor Disc with Nonaut Sub, Perc Approach",
            "score": 3
          }
        ]
      }),
      LearningPathCategory.fromJson({
        "id": "5f2f9e33-00b2-4862-a1f5-1e9905380086",
        "title": "Programmer Analyst IV",
        "thumbnail": "http://dummyimage.com/235x100.png/5fa2dd/ffffff",
        "summary": "Pulmonary paracoccidioidomycosis",
        "items": [
          {
            "id": "3edc4b75-0dab-4dd4-b487-6901a5c6742c",
            "title": "Lakeland",
            "thumbnail": "http://dummyimage.com/112x100.png/ff4444/ffffff",
            "summary": "Drainage of Pharynx, Open Approach, Diagnostic",
            "score": 4
          },
          {
            "id": "7cd40fdc-219c-4405-bf2a-ffd7d8ef81be",
            "title": "Tennyson",
            "thumbnail": "http://dummyimage.com/127x100.png/ff4444/ffffff",
            "summary":
                "Dilation of R Fem Art with 4 Drug-elut, Perc Endo Approach",
            "score": 5
          },
          {
            "id": "e528701d-5741-48d1-8f5d-ddcdcb3a98b3",
            "title": "Coleman",
            "thumbnail": "http://dummyimage.com/121x100.png/dddddd/000000",
            "summary": "Extirpate matter from Hepatic Art, Bifurc, Perc Endo",
            "score": 1
          }
        ]
      }),
      LearningPathCategory.fromJson({
        "id": "f86b485f-1c20-4016-a660-4461ae68992b",
        "title": "Community Outreach Specialist",
        "thumbnail": "http://dummyimage.com/225x100.png/cc0000/ffffff",
        "summary": "Longitudinal reduction defect of femur",
        "items": [
          {
            "id": "ac70204a-3a4a-4ead-bd8f-63c7acd147d4",
            "title": "Melby",
            "thumbnail": "http://dummyimage.com/138x100.png/cc0000/ffffff",
            "summary":
                "Transfer R Foot Muscle with Skin, Subcu, Perc Endo Approach",
            "score": 5
          },
          {
            "id": "39d0fe23-37ae-4619-acab-ba50f65e9d95",
            "title": "Bobwhite",
            "thumbnail": "http://dummyimage.com/126x100.png/dddddd/000000",
            "summary": "Excision of Left Tibia, Open Approach",
            "score": 2
          },
          {
            "id": "146ef468-b7df-4a11-9929-27f93b1a2819",
            "title": "Barnett",
            "thumbnail": "http://dummyimage.com/208x100.png/5fa2dd/ffffff",
            "summary":
                "Introduction of Destr Agent into Mouth/Phar, Via Opening",
            "score": 4
          }
        ]
      }),
      LearningPathCategory.fromJson({
        "id": "bc02123d-fe1c-4755-a1db-cd9098889aa5",
        "title": "Senior Sales Associate",
        "thumbnail": "http://dummyimage.com/246x100.png/5fa2dd/ffffff",
        "summary":
            "Malignant melanoma of unspecified lower limb, including hip",
        "items": [
          {
            "id": "09414775-ab88-4f75-9569-e3aa53a60f15",
            "title": "Loeprich",
            "thumbnail": "http://dummyimage.com/137x100.png/dddddd/000000",
            "summary": "Bypass Stomach to Ileum with Autol Sub, Open Approach",
            "score": 3
          },
          {
            "id": "67f858cf-8875-4cbd-8363-18a7c61d1702",
            "title": "Lighthouse Bay",
            "thumbnail": "http://dummyimage.com/130x100.png/dddddd/000000",
            "summary": "Extraction of Abducens Nerve, Percutaneous Approach",
            "score": 3
          },
          {
            "id": "08be4ea1-a6cc-45b0-acbe-a95b83338c83",
            "title": "Sachs",
            "thumbnail": "http://dummyimage.com/164x100.png/ff4444/ffffff",
            "summary":
                "Supplement Left Lower Arm with Autol Sub, Open Approach",
            "score": 4
          }
        ]
      })
    ];
  }
}
