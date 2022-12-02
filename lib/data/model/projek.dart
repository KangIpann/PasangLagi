
import 'dart:ffi';

class Projek {
  String? name;
  String? status;
  int? durasiBln;
  int? pekerja;
  int? biaya;
  int? progress;
  List<detailProgress>? dtlProgress;

  Projek({this.name, this.status, this.durasiBln, this.pekerja, this.biaya, this.progress, this.dtlProgress});

}

class detailProgress {
  String? name;
  bool? isDone;

  detailProgress({this.name, this.isDone});
}

// some dummy data
final List<Projek> projek = [
  Projek(
    name: 'Rumah Anya',
    status: 'Belum Selesai',
    durasiBln: 6,
    pekerja: 10,
    biaya: 60000000,
    progress: 80,
    dtlProgress: [
      detailProgress(name: 'Pondasi', isDone: true),
      detailProgress(name: 'Dinding', isDone: true),
      detailProgress(name: 'Rangkap Atas', isDone: true),
      detailProgress(name: 'Finishing', isDone: false),
    ],
  ),
  Projek(
    name: 'Budi',
    status: 'Selesai',
    durasiBln: 6,
    pekerja: 10,
    biaya: 60000000,
    progress: 80,
    dtlProgress: [

      detailProgress(name: 'Pondasi', isDone: true),
      detailProgress(name: 'Dinding', isDone: true),
      detailProgress(name: 'Rangkap Atas', isDone: true),
      detailProgress(name: 'Finishing', isDone: true),
    ],
  ),
 ];