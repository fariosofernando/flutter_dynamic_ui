import 'package:fdynamic_ui/logics/builder_components.dart';
import 'package:flutter/material.dart';

import '../logics/parse_proprerties.dart';
import 'default_components.dart';

Scaffold buildScaffold(Iterator<String> iterator) {
  Map properties = extractProperties(iterator);

  /// APPBAR
  var enableAppBar = properties.containsKey('enableAppBar') ? parseBool(properties['enableAppBar']) : false;
  var title = properties.containsKey('title') ? properties['title'] : 'Flutter Demo';
  var automaticallyImplyLeading = properties.containsKey('automaticallyImplyLeading') ? parseBool(properties['automaticallyImplyLeading']) : true;
  var elevation = properties.containsKey('elevation') ? parseDouble(properties['elevation']) : null;
  var scrolledUnderElevation = properties.containsKey('scrolledUnderElevation') ? parseDouble(properties['scrolledUnderElevation']) : null;
  var shadowColor = properties.containsKey('shadowColor') ? parseColor(properties['shadowColor']) : null;
  var surfaceTintColor = properties.containsKey('surfaceTintColor') ? parseColor(properties['surfaceTintColor']) : null;
  var backgroundColor = properties.containsKey('backgroundColor') ? parseColor(properties['backgroundColor']) : null;
  var foregroundColor = properties.containsKey('foregroundColor') ? parseColor(properties['foregroundColor']) : null;
  var primary = properties.containsKey('primary') ? parseBool(properties['primary']) : true;
  var centerTitle = properties.containsKey('centerTitle') ? parseBool(properties['centerTitle']) : null;
  var forceMaterialTransparency = properties.containsKey('forceMaterialTransparency') ? parseBool(properties['forceMaterialTransparency']) : false;
  var excludeHeaderSemantics = properties.containsKey('excludeHeaderSemantics') ? parseBool(properties['excludeHeaderSemantics']) : false;
  var titleSpacing = properties.containsKey('titleSpacing') ? parseDouble(properties['titleSpacing']) : null;
  var toolbarOpacity = properties.containsKey('toolbarOpacity') ? parseDouble(properties['toolbarOpacity']) : 1.0;
  var bottomOpacity = properties.containsKey('bottomOpacity') ? parseDouble(properties['bottomOpacity']) : 1.0;
  var toolbarHeight = properties.containsKey('toolbarHeight') ? parseDouble(properties['toolbarHeight']) : null;
  var leadingWidth = properties.containsKey('leadingWidth') ? parseDouble(properties['leadingWidth']) : null;

  /// BODY
  ///
  /// FLOATING ACTION BUTTON
  ///
  /// FLOATING ACTION BUTTON LOCATION
  ///
  /// FLOATING ACTION BUTTON ANIMATOR
  ///
  /// PERSISTENT FOOTER BUTTONS
  ///
  /// PERSISTENT FOOTER ALIGNMENT
  ///
  /// DRAWER
  ///
  /// ON DRAWER CHANGED
  ///
  /// END DRAWER
  ///
  /// END DRAWER CHANGED
  ///

  return Scaffold(
    appBar: !enableAppBar
        ? null
        : AppBar(
            // Key? key,
            // Widget? leading,
            automaticallyImplyLeading: automaticallyImplyLeading,
            title: Text(title),
            // List<Widget>? actions,
            // Widget? flexibleSpace,
            // PreferredSizeWidget?
            elevation: elevation,
            scrolledUnderElevation: scrolledUnderElevation,
            // bool Function(ScrollNotification) notificationPredicate = defaultScrollNotificationPredicate,
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTintColor,
            // ShapeBorder? shape,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            // IconThemeData? iconTheme,
            // IconThemeData? actionsIconTheme,
            primary: primary,
            centerTitle: centerTitle,
            excludeHeaderSemantics: excludeHeaderSemantics,
            titleSpacing: titleSpacing,
            toolbarOpacity: toolbarOpacity,
            bottomOpacity: bottomOpacity,
            toolbarHeight: toolbarHeight,
            leadingWidth: leadingWidth,
            // TextStyle? toolbarTextStyle,
            // TextStyle? titleTextStyle,
            // SystemUiOverlayStyle? systemOverlayStyle,
            forceMaterialTransparency: forceMaterialTransparency,
          ),
    body: buildComponent(iterator),
    //     Widget? floatingActionButton,
    //     FloatingActionButtonLocation? floatingActionButtonLocation,
    //     FloatingActionButtonAnimator? floatingActionButtonAnimator,
    //     List<Widget>? persistentFooterButtons,
    //     AlignmentDirectional persistentFooterAlignment = AlignmentDirectional.centerEnd,
    //     Widget? drawer,
    //     void Function(bool)? onDrawerChanged,
    //     Widget? endDrawer,
    //     void Function(bool)? onEndDrawerChanged,
    //     Widget? bottomNavigationBar,
    //     Widget? bottomSheet,
    // Color? backgroundColor,
    // bool? resizeToAvoidBottomInset,
    // bool primary = true,
    // DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    // bool extendBody = false,
    // bool extendBodyBehindAppBar = false,
    // Color? drawerScrimColor,
    // double? drawerEdgeDragWidth,
    // bool drawerEnableOpenDragGesture = true,
    // bool endDrawerEnableOpenDragGesture = true,
    // String? restorationId,
  );
}
