import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/controllers/auth/auth_state_controller.dart';
import 'package:instagram_clone/controllers/auth/auth_state.dart';
import 'package:instagram_clone/controllers/liked_posts/liked_posts_controller.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'repositories/repositories.dart';
import 'package:instagram_clone/screens/profile/controllers/profile_controller.dart';

final firebaseAuthProvider =
Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final firebaseFirestoreProvider =
Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

final firebaseStorageProvider =
Provider<FirebaseStorage>((ref) => FirebaseStorage.instance);

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
  return AuthRepository(firebaseAuth, firebaseFirestore);
});

final authProvider =
    StateNotifierProvider.autoDispose<AuthStateController, AuthState>((ref) {
  final authState = ref.watch(authRepositoryProvider);
  return AuthStateController(authState);
});

final postRepositoryProvider = Provider<PostRepository>((ref) {
  final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
  return PostRepository(firebaseFirestore: firebaseFirestore);
});

final likedPostsProvider =
StateNotifierProvider.autoDispose<LikedPostsController, LikedPostsState>((ref) {
  final postRepository = ref.watch(postRepositoryProvider);
  final authState = ref.watch(authProvider.notifier);
  return LikedPostsController(postRepository,authState);
});

final storageRepositoryProvider = Provider<StorageRepository>((ref) {
  final firebaseStorage = ref.watch(firebaseStorageProvider);
  return StorageRepository(firebaseStorage: firebaseStorage);
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final firebaseFirestore = ref.watch(firebaseFirestoreProvider);
  return UserRepository(firebaseFirestore: firebaseFirestore);
});

final profileProvider =
StateNotifierProvider.autoDispose<ProfileController, ProfileState>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  final postRepository = ref.watch(postRepositoryProvider);
  final authStateController = ref.watch(authProvider.notifier);
  final likedPostsController = ref.watch(likedPostsProvider.notifier);
  return ProfileController(userRepository, postRepository, authStateController,
      likedPostsController);
});