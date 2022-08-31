import 'package:get/get.dart';
import 'package:getwidget_test/common/index.dart';
import 'package:getwidget_test/pages/getwidget/index.dart';
import 'package:getwidget_test/routes/app_pages.dart';

class GetWidgetPages {
  static final List<GetPage> getWidgetRoutes = [
    GetPage(name: GetWidgetRoutes.GET_BUTTON, page: () => ButtonsPage()),
    GetPage(name: GetWidgetRoutes.GET_BADGE, page: () => BadgePage()),
    GetPage(name: GetWidgetRoutes.GET_AVATAR, page: () => AvatarPage()),
    GetPage(name: GetWidgetRoutes.GET_IMAGE, page: () => ImagePage()),
    GetPage(name: GetWidgetRoutes.GET_CARD, page: () => CardPage()),
    GetPage(name: GetWidgetRoutes.GET_CAROUSEL, page: () => CarouselPage()),
    GetPage(name: GetWidgetRoutes.GET_TILE, page: () => TilePage()),
    GetPage(name: GetWidgetRoutes.GET_TAB, page: () => TabPage()),
    GetPage(
        name: GetWidgetRoutes.GET_FLOATING_WIDGET,
        page: () => FloatingWidgetPage()),
    GetPage(name: GetWidgetRoutes.GET_TOAST, page: () => ToastPage()),
    GetPage(name: GetWidgetRoutes.GET_TOGGLE, page: () => TogglePage()),
    GetPage(name: GetWidgetRoutes.GET_TYPOGRAPH, page: () => TypographyPage()),
    GetPage(name: GetWidgetRoutes.GET_ACCORDION, page: () => AccordionPage()),
    GetPage(name: GetWidgetRoutes.GET_ALERT, page: () => AlertPage()),
    GetPage(name: GetWidgetRoutes.GET_SEARCHBAR, page: () => SearchBarPage()),
    GetPage(name: GetWidgetRoutes.GET_RATING, page: () => RatingPage()),
    GetPage(name: GetWidgetRoutes.GET_DROPDOWN, page: () => DropdownPage()),
    GetPage(name: GetWidgetRoutes.GET_LOADER, page: () => LoaderPage()),
    GetPage(
        name: GetWidgetRoutes.GET_PROGRESSBAR, page: () => ProgressBarPage()),
    GetPage(name: GetWidgetRoutes.GET_SHIMMER, page: () => ShimmerPage()),
    GetPage(name: GetWidgetRoutes.GET_ANIMATION, page: () => AnimationPage()),
    GetPage(name: GetWidgetRoutes.GET_BORDER, page: () => BorderPage()),
    GetPage(
        name: GetWidgetRoutes.GET_BOTTOMSHEET, page: () => BottomSheetPage()),
    GetPage(name: GetWidgetRoutes.GET_CHECKBOX, page: () => CheckboxPage()),
    GetPage(
        name: GetWidgetRoutes.GET_CHECKBOXLISTTILE,
        page: () => CheckboxListTilePage()),
    GetPage(
        name: GetWidgetRoutes.GET_MULTISELECT, page: () => MultiSelectPage()),
    GetPage(name: GetWidgetRoutes.GET_INTROSCREEN, page: () => IntroPage()),
    GetPage(name: GetWidgetRoutes.GET_RADIO, page: () => RadioPage()),
    GetPage(
        name: GetWidgetRoutes.GET_RADIOLISTTILE,
        page: () => RadioListTilePage()),
    GetPage(
        name: GetWidgetRoutes.GET_STICKYHEADER, page: () => SticktHeaderPage()),
    GetPage(name: GetWidgetRoutes.GET_TEXTFIELD, page: () => TextfieldPage()),
    GetPage(name: GetWidgetRoutes.GET_FORM, page: () => FormPage()),
    GetPage(name: GetWidgetRoutes.GET_DRAWER, page: () => DrawerPage()),
    GetPage(name: GetWidgetRoutes.GET_APPBAR, page: () => AppbarPage()),
  ];

  static final List<RouteSetting> routeSettings = [
    RouteSetting(
        title: "Buttons",
        description:
            "The GFButton is a Flutter Elevated button that has a solid background fill color and the button triggers whenever the action is passed into it",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BUTTON),
    RouteSetting(
        title: "Badge",
        description:
            "GFBadges are the Flutter Badges that are used to alert notification in the active widget. It gives the number of active notifications that arose.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BADGE),
    RouteSetting(
        title: "Avatar",
        description:
            "GFAvatar is a Flutter Avatar which is an image basically used to display the user picture in the profile section. GFAvatar has different shapes wherein the popular is a Circular Avatar",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_AVATAR),
    RouteSetting(
        title: "Image",
        description:
            "Flutter Images are those that manage the asset images and show that upon run time. The images can be static images or dynamic images.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_IMAGE),
    RouteSetting(
        title: "Card",
        description:
            "GFCard is a Flutter Card that is used in any section of the application to display certain types of information about the application. It can be simply used with a title and buttons",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CARD),
    RouteSetting(
        title: "Carousel",
        description:
            "GFCarousel is a Flutter Carousel or Flutter Image Slider widget that has a set of images that slides one after the other in a linear manner repeatedly in a given interval of time. GFCarousel can have any number of items in a slide and it can also have multiple images in one single slide.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CAROUSEL),
    RouteSetting(
        title: "Tile",
        description:
            "GFListTile is a Flutter ListTile that is a widget used to populate a ListView in an application. It generally has a title, and one to three lines of description or subtitle, and a trailing icon. The ListTile background color can be changed using the color property.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TILE),
    RouteSetting(
        title: "Tab",
        description:
            "GF Flutter Tab is a combination of the Tabbar and TabBarView controlled by the tab controller. Whereas GFTabBar contains tab buttons that navigate to a particular tabBarView page in GFTabBarView.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TAB),
    RouteSetting(
        title: "FloatingWidget",
        description:
            "he GF Flutter Floating Widget is mostly and effectively used to show some popups, alerts, or some error messages which float over the main body. GF Floating Widget's child can take any kind of component or widgets as its parameter.",
        routePath:
            AppRoute.GetWidgetHome + GetWidgetRoutes.GET_FLOATING_WIDGET),
    RouteSetting(
        title: "Toast",
        description:
            "GFToast is a Flutter Toast Message that is used to show toast messages or errors in a given interval of time and it can have trailing widgets to display icons or buttons",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TOAST),
    RouteSetting(
        title: "Toggle",
        description:
            "The Flutter toggle switch is ON/OFF switch or ON/OFF Button that allows the user to toggle the switch between ON or OFF states",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TOGGLE),
    RouteSetting(
        title: "Typography",
        description:
            "Flutter Typography is the art of arranging letters according to the need in order to make a clean styling of texts and words.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TYPOGRAPH),
    RouteSetting(
        title: "Accordion",
        description:
            "Flutter Accordion is an expansion tile wherein the content or the body of the title will be hidden or collapsed and it will be expanded only when clicking the title of the expansion tile. The content can be of any widget and can have any number of lines. The dropdown arrow shows whether the tile is expanded or collapsed according to the need.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_ACCORDION),
    RouteSetting(
        title: "Alert",
        description:
            "GFAlert is a Flutter Alert Dialog that shows upon clicking the relevant button that gives some kind of information or messages and it apparently has some action buttons. GF Flutter Alert Dialog should be wrapped inside the GFFloating Widget. The child of the GFFloatingWidget takes GFAlert as its argument and the body takes any kind of widgets.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_ALERT),
    RouteSetting(
        title: "Appbar",
        description:
            "Flutter Appbar is an action button that is placed on the top of the screen and is a static one. It basically consists of a toolbar and other widgets that can also be used inside the Flutter Appbar.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_APPBAR),
    RouteSetting(
        title: "Search Bar",
        description:
            "GFSearchBar is a flutter search bar wherein the user enters few letters in order to search the words from the list provided in the search section.GFSearchBar contains textfield for user input and the overlay container to show the search list collections.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_SEARCHBAR),
    RouteSetting(
        title: "Rating Bar",
        description:
            "Flutter rating allows the user to start rating any of the products using the start icons as rating icons.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_RATING),
    RouteSetting(
        title: "Dropdown",
        description:
            "GFDropdown is a Dropdown in Flutter Widget that lets users select from the number of items and display the selected item.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_DROPDOWN),
    RouteSetting(
        title: "Loader",
        description:
            "GFLoader is a Flutter Loader circular indicator that will be loading continuously that indicates something is about to load.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_LOADER),
    RouteSetting(
        title: "Progress Bar",
        description:
            "GFProgress Bar is a Flutter Progress bar or a Flutter Progress Button that tells the percentage of progress done in any given task or work.\nGFProgress bar can be of two types, a simple linear progress bar or a Circular Progress bar.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_PROGRESSBAR),
    RouteSetting(
        title: "Shimmer",
        description:
            "GFShimmer is a Flutter Shimmer Effect Widget that can be used by giving Linear Gradient for more visual shimmer effect or just by adding Main Color and Secondary Color for basic shimmer effect.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_SHIMMER),
    RouteSetting(
        title: "Animation",
        description:
            "GFAnimation is a Flutter Animation wherein it makes the UI smooth for the user and the user interaction with the app will be easier. GFAnimation makes it easy to implement a variety of animations.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_ANIMATION),
    RouteSetting(
        title: "Border",
        description:
            "GF Flutter Border is a Flutter Border that has all four sides and it makes a thin line around any widget.\nGFBorder can be used as a solid border, dashed border, or dotted border for images, texts, or even buttons. ",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BORDER),
    RouteSetting(
        title: "BottomSheet",
        description:
            "GFBottomSheet or Flutter bottom sheet allows the user to expand the content body to display more content. The property enableExpandableContenton truemakes the content body expandable.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_BOTTOMSHEET),
    RouteSetting(
        title: "CheckBox",
        description:
            "GFCheckbox is a Flutter CheckBox widget that permits the user to select one or more than one option in a given set of lists. It can have any number of possible ticks. The user can check and uncheck on the boxes provided.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CHECKBOX),
    RouteSetting(
        title: "CheckBox List Tile",
        description:
            "FCheckBoxListTile is a Flutter CheckBoxList Tile that is a list of items wherein the user can check or uncheck the items in the list. It allows users to select one or more options inside the list. GFCheckBoxListTile can also be positioned right or left of the screen according to the need.",
        routePath:
            AppRoute.GetWidgetHome + GetWidgetRoutes.GET_CHECKBOXLISTTILE),
    RouteSetting(
        title: "Multi Select",
        description:
            "GFMultiselect features allow users to create a customized multi-select dropdown for the more flexible and interactive UI design.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_MULTISELECT),
    RouteSetting(
        title: "Intro",
        description:
            "GFIntro Screen is a Flutter Introduction Screen that has sliders and gives information about the application. It can have as many slides as the application needs. It is a user-friendly widget that pops upon opening the application to give a brief introduction to the app.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_INTROSCREEN),
    RouteSetting(
        title: "Radio",
        description:
            "Flutter RadioBox Button permits the user to select only one option in any two sets of mutual options as it is the flutter radio button default selected. The radio button has to be checked or unchecked only once in a given set of options.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_RADIO),
    RouteSetting(
        title: "Radio List Tile",
        description:
            "Flutter RadioBoxListTile is a list of items wherein the user can check or uncheck only one item in the list. It allows users to select only one option inside the list. GFRadioBoxListTile can also be positioned right or left of the screen according to the need",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_RADIOLISTTILE),
    RouteSetting(
        title: "Sticky Header",
        description:
            "GFStickyHeader is a Flutter Sticky Header that will be fixed or sticks on the top of the screen like the header that has a scrollable container.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_STICKYHEADER),
    RouteSetting(
        title: "TextField",
        description: "GFTextField is a textfield where make inputs.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_TEXTFIELD),
    RouteSetting(
        title: "Form",
        description: "GfForm have a list of component as the form inputs.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_FORM),
    RouteSetting(
        title: "Drawer",
        description:
            "GFDrawer is a Flutter Drawer widget that slides from the left side of the screen when clicked on the drawer button which will be seen on the left top side of the application. The drawer has mainly navigation options that navigate to the respective other pages depending upon the routes.",
        routePath: AppRoute.GetWidgetHome + GetWidgetRoutes.GET_DRAWER),
  ];
}
