import 'package:flutter_test/flutter_test.dart';
import 'package:interview_flutter_challenge/features/albums/domain/models/data_model.dart';
import 'package:mockito/mockito.dart';

class MockData extends Mock {
  final collectionId = getOneAlbum().collectionId;
}

void main() {
  final mockData = MockData();
  setUp(() {});
  tearDown(() {});
  test('Get the second algum from data', () {
    expect(mockData.collectionId, 1440851963);
  });
}
