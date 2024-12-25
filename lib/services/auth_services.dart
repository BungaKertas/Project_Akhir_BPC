import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_akhir/services/user_services.dart';
import 'package:project_akhir/users_models.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign Up
  Future<UsersModels> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      // Membuat akun baru dengan Firebase
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Membuat objek user model
      final UsersModels user = UsersModels(
        id: userCredential.user?.uid,
        username: name,
        email: email,
      );

      // Menyimpan data user ke database Firestore
      await UserServices().addUser(user);

      return user;
    
    } catch (e) {
      throw Exception("Sign-up gagal: ${e.toString()}");
    }
  }

  // Sign In
  Future<UsersModels> signIn({
    required String email,
    required String password,
  }) async {
    try {
      // Autentikasi pengguna dengan Firebase
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Mengambil data user dari Firestore berdasarkan ID pengguna
      final userId = userCredential.user?.uid;
      if (userId == null) {
        throw Exception("User ID tidak ditemukan setelah autentikasi.");
      }

      final UsersModels? user = await UserServices().getUserById(userId);
      if (user == null) {
        throw Exception("Data user tidak ditemukan di database.");
      }

      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception("Akun tidak ditemukan. Periksa kembali email Anda.");
      } else if (e.code == 'wrong-password') {
        throw Exception("Kata sandi salah. Periksa kembali kata sandi Anda.");
      } else {
        throw Exception("Sign-in gagal: ${e.message}");
      }
    } catch (e) {
      throw Exception("Sign-in gagal: ${e.toString()}");
    }
  }

  // Logout
  Future<void> logout() async {
    try {
      await _auth.signOut();
      // ignore: avoid_print
      print("Logout berhasil");
    } catch (e) {
      throw Exception("Logout gagal: ${e.toString()}");
    }
  }
}
