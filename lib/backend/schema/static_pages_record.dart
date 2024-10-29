import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StaticPagesRecord extends FirestoreRecord {
  StaticPagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "lastUpdated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  bool hasVersion() => _version != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
    _lastUpdated = snapshotData['lastUpdated'] as DateTime?;
    _version = snapshotData['version'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('static_pages');

  static Stream<StaticPagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StaticPagesRecord.fromSnapshot(s));

  static Future<StaticPagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StaticPagesRecord.fromSnapshot(s));

  static StaticPagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StaticPagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StaticPagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StaticPagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StaticPagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StaticPagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStaticPagesRecordData({
  String? title,
  String? content,
  DateTime? lastUpdated,
  String? version,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'content': content,
      'lastUpdated': lastUpdated,
      'version': version,
    }.withoutNulls,
  );

  return firestoreData;
}

class StaticPagesRecordDocumentEquality implements Equality<StaticPagesRecord> {
  const StaticPagesRecordDocumentEquality();

  @override
  bool equals(StaticPagesRecord? e1, StaticPagesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.content == e2?.content &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.version == e2?.version;
  }

  @override
  int hash(StaticPagesRecord? e) => const ListEquality()
      .hash([e?.title, e?.content, e?.lastUpdated, e?.version]);

  @override
  bool isValidKey(Object? o) => o is StaticPagesRecord;
}
