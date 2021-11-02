import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/config/paths.dart';
import 'package:instagram_clone/enums/enums.dart';
import 'package:instagram_clone/models/models.dart';
import 'package:instagram_clone/models/user_model.dart';
import 'package:instagram_clone/repositories/repositories.dart';

class UserRepository extends BaseUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Future<User> getUserWithId({required String userId}) async {
    final doc =
        await _firebaseFirestore.collection(Paths.users).doc(userId).get();
    return doc.exists ? User.fromDocument(doc) : User.empty;
  }

  @override
  Future<void> updateUser({required User user}) async {
    await _firebaseFirestore
        .collection(Paths.users)
        .doc(user.id)
        .update(user.toDocument());
  }

  @override
  Future<List<User>> searchUsers({required String query}) async {
    final userSnap = await _firebaseFirestore
        .collection(Paths.users)
        .where('username', isGreaterThanOrEqualTo: query.toLowerCase())
        .get();
    return userSnap.docs.map((doc) => User.fromDocument(doc)).toList();
  }

  @override
  void followUser({
    required String userId,
    required String followUserId,
  }) {
    // Add followUser to user's userFollowing.
    _firebaseFirestore
        .collection(Paths.following)
        .doc(userId)
        .update({"userFollowing": FieldValue.arrayUnion([followUserId])});
    // Add user to followUser's userFollowers.
    _firebaseFirestore
        .collection(Paths.followers)
        .doc(followUserId)
        .update({"userFollowers": FieldValue.arrayUnion([userId])});

    _firebaseFirestore.collection(Paths.users).doc(userId).update({"following": FieldValue.increment(1)});
    _firebaseFirestore.collection(Paths.users).doc(followUserId).update({"followers": FieldValue.increment(1)});
    final notification = Notif(
      type: NotifType.follow,
      fromUser: User.empty.copyWith(id: userId),
      date: DateTime.now(),
    );

    _firebaseFirestore
        .collection(Paths.notifications)
        .doc(followUserId)
        .collection(Paths.userNotifications)
        .add(notification.toDocument());
  }

  @override
  void unfollowUser({
    required String userId,
    required String unfollowUserId,
  }) {
    // Remove unfollowUser from user's userFollowing.
    _firebaseFirestore
        .collection(Paths.following)
        .doc(userId)
        .collection(Paths.userFollowing)
        .doc(unfollowUserId)
        .delete();
    _firebaseFirestore
        .collection(Paths.following)
        .doc(userId)
        .update({"userFollowing": FieldValue.arrayRemove([unfollowUserId])});


    // Remove user from unfollowUser's userFollowers.
    _firebaseFirestore
        .collection(Paths.followers)
        .doc(unfollowUserId)
        .update({"userFollowers": FieldValue.arrayRemove([userId])});

    _firebaseFirestore.collection(Paths.users).doc(userId).update({"following": FieldValue.increment(-1)});
    _firebaseFirestore.collection(Paths.users).doc(unfollowUserId).update({"followers": FieldValue.increment(-1)});

  }

  @override
  Future<bool> isFollowing({
    required String userId,
    required String otherUserId,
  }) async {
    // is otherUser in user's userFollowing
    final otherUserDoc = await _firebaseFirestore
        .collection(Paths.following)
        .doc(userId)
        .get();
    List<dynamic> data = otherUserDoc.data()!['userFollowing'] as List<dynamic>;
    return data.contains(otherUserId);
  }
}
