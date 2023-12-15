import 'package:flutter/material.dart';
import 'package:social_media_app/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:social_media_app/presentation/friend_list_screen/friend_list_screen.dart';
import 'package:social_media_app/presentation/multiplayer_support_screen/multiplayer_support_screen.dart';
import 'package:social_media_app/presentation/share_screen/share_screen.dart';
import 'package:social_media_app/presentation/image_management_screen/image_management_screen.dart';
import 'package:social_media_app/presentation/activity_feed_screen/activity_feed_screen.dart';
import 'package:social_media_app/presentation/add_friends_screen/add_friends_screen.dart';
import 'package:social_media_app/presentation/email_login_screen/email_login_screen.dart';
import 'package:social_media_app/presentation/video_library_screen/video_library_screen.dart';
import 'package:social_media_app/presentation/contact_sharing_screen/contact_sharing_screen.dart';
import 'package:social_media_app/presentation/followers_screen/followers_screen.dart';
import 'package:social_media_app/presentation/hashtag_screen/hashtag_screen.dart';
import 'package:social_media_app/presentation/user_account_screen/user_account_screen.dart';
import 'package:social_media_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String contactUsScreen = '/contact_us_screen';

  static const String friendListScreen = '/friend_list_screen';

  static const String multiplayerSupportScreen = '/multiplayer_support_screen';

  static const String shareScreen = '/share_screen';

  static const String imageManagementScreen = '/image_management_screen';

  static const String activityFeedScreen = '/activity_feed_screen';

  static const String addFriendsScreen = '/add_friends_screen';

  static const String emailLoginScreen = '/email_login_screen';

  static const String videoLibraryScreen = '/video_library_screen';

  static const String contactSharingScreen = '/contact_sharing_screen';

  static const String followersScreen = '/followers_screen';

  static const String hashtagScreen = '/hashtag_screen';

  static const String userAccountScreen = '/user_account_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    contactUsScreen: (context) => ContactUsScreen(),
    friendListScreen: (context) => FriendListScreen(),
    multiplayerSupportScreen: (context) => MultiplayerSupportScreen(),
    shareScreen: (context) => ShareScreen(),
    imageManagementScreen: (context) => ImageManagementScreen(),
    activityFeedScreen: (context) => ActivityFeedScreen(),
    addFriendsScreen: (context) => AddFriendsScreen(),
    emailLoginScreen: (context) => EmailLoginScreen(),
    videoLibraryScreen: (context) => VideoLibraryScreen(),
    contactSharingScreen: (context) => ContactSharingScreen(),
    followersScreen: (context) => FollowersScreen(),
    hashtagScreen: (context) => HashtagScreen(),
    userAccountScreen: (context) => UserAccountScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
