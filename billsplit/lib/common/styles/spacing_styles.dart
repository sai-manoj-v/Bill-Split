import 'package:flutter/material.dart';
import 'package:billsplit/utils/constants/sizes.dart';

class BillSplitSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: appBarHeight,
    left: defaultSpace,
    right: defaultSpace,
    bottom: defaultSpace,
  );
}
