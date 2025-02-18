import 'package:credit_hub_new/src/ui/auth/change_pass/cubit/change_password_cubit.dart';
import 'package:credit_hub_new/src/ui/auth/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:credit_hub_new/src/ui/auth/otp/cubit/otp_cubit.dart';
import 'package:credit_hub_new/src/ui/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:credit_hub_new/src/shared/app_export.dart';
import 'package:credit_hub_new/src/ui/main/account/cubit/account_cubit.dart';
import 'package:credit_hub_new/src/ui/main/add/cubit/add_cubit.dart';
import 'package:credit_hub_new/src/ui/main/dashboard/cubit/dashboard_cubit.dart';
import 'package:credit_hub_new/src/ui/main/history/cubit/history_cubit.dart';
import 'package:credit_hub_new/src/ui/main/notification/cubit/notification_cubit.dart';

enum AppRoute {
  splash,
  signIn,
  forgotPassword,
  changePassword,
  otp,
  main,
  dashboard,
  history,
  historydetail,
  add,
  notification,
  account,
  accountdetails,
  accountlist,
  accountadd,
  accountedit,
}

extension AppRouteExt on AppRoute {
  String get name {
    switch (this) {
      case AppRoute.splash:
        return '/splash';
      case AppRoute.signIn:
        return '/sign_in';
      case AppRoute.forgotPassword:
        return '/forgot_password';
      case AppRoute.otp:
        return '/otp';
      case AppRoute.changePassword:
        return '/change_password';
      case AppRoute.main:
        return '/main';
      case AppRoute.dashboard:
        return '/dashboard';
      case AppRoute.history:
        return '/history';
      case AppRoute.historydetail:
        return '/history_detail';
      case AppRoute.add:
        return '/add';
      case AppRoute.notification:
        return '/change_password';
      case AppRoute.account:
        return '/account';
      case AppRoute.accountdetails:
        return '/account_details';
      case AppRoute.accountlist:
        return '/account_list';
      case AppRoute.accountadd:
        return '/account_add';
      case AppRoute.accountedit:
        return '/account_edit';
      default:
        return '';
    }
  }

  static AppRoute? from(String? name) {
    for (final item in AppRoute.values) {
      if (item.name == name) {
        return item;
      }
    }
    return null;
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (AppRouteExt.from(settings.name)) {
      case AppRoute.splash:
        return GetPageRoute(
          settings: settings,
          page: () => const SplashScreen(),
        );
      case AppRoute.signIn:
        return GetPageRoute(
          settings: settings,
          page: () => const SignInScreen(),
          bindings: [BindingsBuilder.put(() => SignInCubit(Get.find(), Get.find()))],
        );
      case AppRoute.forgotPassword:
        return GetPageRoute(
          settings: settings,
          page: () => const ForgetPasswordScreen(),
          bindings: [BindingsBuilder.put(() => ForgotPasswordCubit(Get.find(), Get.find()))],
        );
      case AppRoute.otp:
        return GetPageRoute(
          settings: settings,
          page: () => const OtpScreen(),
          bindings: [
            BindingsBuilder.put(() => OtpCubit(Get.find(), Get.find())),
            BindingsBuilder.put(() => ForgotPasswordCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.changePassword:
        return GetPageRoute(
          settings: settings,
          page: () => ChangePasswordScreen(appManager: Get.find<AppManager>()),
          bindings: [
            BindingsBuilder.put(() => ChangePasswordCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.main:
        return GetPageRoute(
          settings: settings,
          page: () => const BottomMenu(),
          bindings: [
            BindingsBuilder.put(() => DashboardCubit(Get.find(), Get.find())),
            BindingsBuilder.put(() => HistoryCubit(Get.find(), Get.find())),
            BindingsBuilder.put(() => NotificationCubit(Get.find(), Get.find())),
            BindingsBuilder.put(() => AccountCubit(Get.find(), Get.find())),
          ],
        );

      case AppRoute.dashboard:
        return GetPageRoute(
          settings: settings,
          page: () => const DashboardScreen(),
          bindings: [
            BindingsBuilder.put(() => DashboardCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.history:
        return GetPageRoute(
          settings: settings,
          page: () => const HistoryScreen(),
          bindings: [
            BindingsBuilder.put(() => HistoryCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.historydetail:
        return GetPageRoute(
          settings: settings,
          page: () => const HistoryDetailScreen(),
          bindings: [
            BindingsBuilder.put(() => HistoryCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.add:
        return GetPageRoute(
          settings: settings,
          page: () => const AddScreen(),
          bindings: [
            BindingsBuilder.put(() => AddCubit(Get.find(), Get.find())),
            BindingsBuilder.put(() => AddImageCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.notification:
        return GetPageRoute(
          settings: settings,
          page: () => const NotificationScreen(),
          bindings: [
            BindingsBuilder.put(() => NotificationCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.account:
        return GetPageRoute(
          settings: settings,
          page: () => const AccountScreen(),
          bindings: [
            BindingsBuilder.put(() => AccountCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.accountdetails:
        return GetPageRoute(
          settings: settings,
          page: () => const AccountDetailsScreen(),
          bindings: [
            BindingsBuilder.put(() => AccountCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.accountlist:
        return GetPageRoute(
          settings: settings,
          page: () => const AccountListScreen(),
          bindings: [
            BindingsBuilder.put(() => AccountCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.accountadd:
        return GetPageRoute(
          settings: settings,
          page: () => const AccountAddScreen(),
          bindings: [
            BindingsBuilder.put(() => AccountCubit(Get.find(), Get.find())),
          ],
        );
      case AppRoute.accountedit:
        return GetPageRoute(
          settings: settings,
          page: () => const AccountEditScreen(),
          bindings: [
            BindingsBuilder.put(() => AccountCubit(Get.find(), Get.find())),
          ],
        );
      default:
        return GetPageRoute(
          settings: settings,
          page: () => Scaffold(
            appBar: AppBar(),
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
