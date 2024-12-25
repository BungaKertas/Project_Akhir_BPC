import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_akhir/users_models.dart';

class UserServices {
  final CollectionReference _collectionReference =
      FirebaseFirestore.instance.collection("user");

  // Menyimpan data user ke Firestore
  Future<void> addUser(UsersModels user) async {
    try {
      await _collectionReference.doc(user.id).set(user.toJson());
    } catch (e) {
      throw Exception("Error saat menyimpan data user: $e");
    }
  }

  // Mengambil data user berdasarkan ID
  Future<UsersModels?> getUserById(String id) async {
    try {
      DocumentSnapshot documentSnapshot =
          await _collectionReference.doc(id).get();

      if (documentSnapshot.exists) {
        return UsersModels.fromJson(
          documentSnapshot.data() as Map<String, dynamic>,
        );
      } else {
        return null; // Jika data tidak ditemukan
      }
    } catch (e) {
      throw Exception("Error saat mengambil data user: $e");
    }
  }
}
