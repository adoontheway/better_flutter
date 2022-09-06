import 'package:get/get.dart';
import 'package:better_flutter/common/index.dart';
import 'package:better_flutter/pages/getwidget/index.dart';
import 'package:better_flutter/routes/app_pages.dart';
import 'package:better_flutter/utils/index.dart';

class GetWidgetPages {
  static final List<GetPage> getWidgetRoutes = [
    GetPage(
      name: GetWidgetRoutes.GET_BUTTON,
      page: GenerateGetPage(
        ButtonsPage(),
        'lib/pages/getwidget/components/buttons.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_BADGE,
      page: GenerateGetPage(
        BadgePage(),
        'lib/pages/getwidget/components/badge.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_AVATAR,
      page: GenerateGetPage(
          AvatarPage(),
          'lib/pages/getwidget/components/avatar.dart',
          'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
          ''),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_IMAGE,
      page: GenerateGetPage(
        ImagePage(),
        'lib/pages/getwidget/components/image.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_CARD,
      page: GenerateGetPage(
        CardPage(),
        'lib/pages/getwidget/components/card.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_CAROUSEL,
      page: GenerateGetPage(
        CarouselPage(),
        'lib/pages/getwidget/components/carousel.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_TILE,
      page: GenerateGetPage(
        TilePage(),
        'lib/pages/getwidget/components/tile.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_TAB,
      page: GenerateGetPage(
        TabPage(),
        'lib/pages/getwidget/components/tab.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_FLOATING_WIDGET,
      page: GenerateGetPage(
        FloatingWidgetPage(),
        'lib/pages/getwidget/components/floating_widget.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_TOAST,
      page: GenerateGetPage(
        ToastPage(),
        'lib/pages/getwidget/components/toast.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_TOGGLE,
      page: GenerateGetPage(
        TogglePage(),
        'lib/pages/getwidget/components/toggle.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_TYPOGRAPH,
      page: GenerateGetPage(
        TypographyPage(),
        'lib/pages/getwidget/components/typography.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_ACCORDION,
      page: GenerateGetPage(
        AccordionPage(),
        'lib/pages/getwidget/components/accordion.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_ALERT,
      page: GenerateGetPage(
        AlertPage(),
        'lib/pages/getwidget/components/alert.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_SEARCHBAR,
      page: GenerateGetPage(
        SearchBarPage(),
        'lib/pages/getwidget/components/searhbar.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_RATING,
      page: GenerateGetPage(
        RatingPage(),
        'lib/pages/getwidget/components/rating.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_DROPDOWN,
      page: GenerateGetPage(
        DropdownPage(),
        'lib/pages/getwidget/components/dropdown.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_LOADER,
      page: GenerateGetPage(
        LoaderPage(),
        'lib/pages/getwidget/components/loader.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_PROGRESSBAR,
      page: GenerateGetPage(
        ProgressBarPage(),
        'lib/pages/getwidget/components/progressbar.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_SHIMMER,
      page: GenerateGetPage(
        ShimmerPage(),
        'lib/pages/getwidget/components/shimmer.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_ANIMATION,
      page: GenerateGetPage(
        AnimationPage(),
        'lib/pages/getwidget/components/animation.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_BORDER,
      page: GenerateGetPage(
        BorderPage(),
        'lib/pages/getwidget/components/border.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_BOTTOMSHEET,
      page: GenerateGetPage(
        BottomSheetPage(),
        'lib/pages/getwidget/components/bottomsheet.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_CHECKBOX,
      page: GenerateGetPage(
        CheckboxPage(),
        'lib/pages/getwidget/components/checkbox.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_CHECKBOXLISTTILE,
      page: GenerateGetPage(
        CheckboxListTilePage(),
        'lib/pages/getwidget/components/checkboxlisttile.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_MULTISELECT,
      page: GenerateGetPage(
        MultiSelectPage(),
        'lib/pages/getwidget/components/multiselect.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_INTROSCREEN,
      page: GenerateGetPage(
        IntroPage(),
        'lib/pages/getwidget/components/intro.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_RADIO,
      page: GenerateGetPage(
        RadioPage(),
        'lib/pages/getwidget/components/radio.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_RADIOLISTTILE,
      page: GenerateGetPage(
        RadioListTilePage(),
        'lib/pages/getwidget/components/radiolisttile.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_STICKYHEADER,
      page: GenerateGetPage(
        SticktHeaderPage(),
        'lib/pages/getwidget/components/stickyheader.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_TEXTFIELD,
      page: GenerateGetPage(
        TextfieldPage(),
        'lib/pages/getwidget/components/textfield.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_FORM,
      page: GenerateGetPage(
        FormPage(),
        'lib/pages/getwidget/components/form.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_DRAWER,
      page: GenerateGetPage(
        DrawerPage(),
        'lib/pages/getwidget/components/drawer.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
    GetPage(
      name: GetWidgetRoutes.GET_APPBAR,
      page: GenerateGetPage(
        AppbarPage(),
        'lib/pages/getwidget/components/appbar.dart',
        'https://gitee.com/adoontheway/getwidget_samples/blob/master/',
        'GetWidget',
      ),
    ),
  ];

  static final List<RouteSetting> routeSettings = [
    RouteSetting(
        title: "GetWidget.Buttons.title".tr,
        description: "GetWidget.Buttons.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BUTTON),
    RouteSetting(
        title: "GetWidget.Badge.title".tr,
        description: "GetWidget.Badge.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BADGE),
    RouteSetting(
        title: "GetWidget.Avatar.title".tr,
        description: "GetWidget.Avatar.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_AVATAR),
    RouteSetting(
        title: "GetWidget.Image.title".tr,
        description: "GetWidget.Image.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_IMAGE),
    RouteSetting(
        title: "GetWidget.Card.title".tr,
        description: "GetWidget.Card.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CARD),
    RouteSetting(
        title: "GetWidget.Carousel.title".tr,
        description: "GetWidget.Carousel.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CAROUSEL),
    RouteSetting(
        title: "GetWidget.Tile.title".tr,
        description: "GetWidget.Tile.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TILE),
    RouteSetting(
        title: "GetWidget.Tab.title".tr,
        description: "GetWidget.Tab.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TAB),
    RouteSetting(
        title: "GetWidget.FloatingWidget.title".tr,
        description: "GetWidget.FloatingWidget.desc".tr,
        routePath:
            AppRoute.GetWidgetHome + GetWidgetRoutes.GET_FLOATING_WIDGET),
    RouteSetting(
        title: "GetWidget.Toast.title".tr,
        description: "GetWidget.Toast.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TOAST),
    RouteSetting(
        title: "GetWidget.Toggle.title".tr,
        description: "GetWidget.Toggle.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TOGGLE),
    RouteSetting(
        title: "GetWidget.Typography.title".tr,
        description: "GetWidget.Typography.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TYPOGRAPH),
    RouteSetting(
        title: "GetWidget.Accordion.title".tr,
        description: "GetWidget.Accordion.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_ACCORDION),
    RouteSetting(
        title: "GetWidget.Alert.title".tr,
        description: "GetWidget.Alert.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_ALERT),
    RouteSetting(
        title: "GetWidget.Appbar.title".tr,
        description: "GetWidget.Appbar.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_APPBAR),
    RouteSetting(
        title: "GetWidget.Searchbar.title".tr,
        description: "GetWidget.Searchbar.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_SEARCHBAR),
    RouteSetting(
        title: "GetWidget.Rating.title".tr,
        description: "GetWidget.Rating.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_RATING),
    RouteSetting(
        title: "GetWidget.Dropdown.title".tr,
        description: "GetWidget.Dropdown.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_DROPDOWN),
    RouteSetting(
        title: "GetWidget.Loader.title".tr,
        description: "GetWidget.Loader.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_LOADER),
    RouteSetting(
        title: "GetWidget.Progressbar.title".tr,
        description: "GetWidget.Progressbar.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_PROGRESSBAR),
    RouteSetting(
        title: "GetWidget.Shimmer.title".tr,
        description: "GetWidget.Shimmer.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_SHIMMER),
    RouteSetting(
        title: "GetWidget.Animation.title".tr,
        description: "GetWidget.Animation.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_ANIMATION),
    RouteSetting(
        title: "GetWidget.Border.title".tr,
        description: "GetWidget.Border.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BORDER),
    RouteSetting(
        title: "GetWidget.BottomSheet.title".tr,
        description: "GetWidget.BottomSheet.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BOTTOMSHEET),
    RouteSetting(
        title: "GetWidget.CheckBox.title".tr,
        description: "GetWidget.CheckBox.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CHECKBOX),
    RouteSetting(
        title: "GetWidget.CheckBoxList.title".tr,
        description: "GetWidget.CheckBoxList.desc".tr,
        routePath:
            AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CHECKBOXLISTTILE),
    RouteSetting(
        title: "GetWidget.Multiselect.title".tr,
        description: "GetWidget.Multiselect.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_MULTISELECT),
    RouteSetting(
        title: "GetWidget.Intro.title".tr,
        description: "GetWidget.Intro.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_INTROSCREEN),
    RouteSetting(
        title: "GetWidget.Radio.title".tr,
        description: "GetWidget.Radio.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_RADIO),
    RouteSetting(
        title: "GetWidget.RadioList.title".tr,
        description: "GetWidget.RadioList.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_RADIOLISTTILE),
    RouteSetting(
        title: "GetWidget.StickyHeader.title".tr,
        description: "GetWidget.StickyHeader.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_STICKYHEADER),
    RouteSetting(
        title: "GetWidget.TextField.title".tr,
        description: "GetWidget.TextField.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TEXTFIELD),
    RouteSetting(
        title: "GetWidget.Form.title".tr,
        description: "GetWidget.Form.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_FORM),
    RouteSetting(
        title: "GetWidget.Drawer.title".tr,
        description: "GetWidget.Drawer.desc".tr,
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_DRAWER),
    //todo add GFColor
  ];
}
