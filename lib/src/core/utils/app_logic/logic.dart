import 'package:intl/intl.dart';

String currencyFormat(int num, {String? symbol = "₫"}) =>
    NumberFormat("#,###").format(num).toString() + symbol!;

int calcSalePercent({required int retailPrice, required int listPrice}) =>
    (100 - retailPrice / listPrice * 100).toInt();

double calcRating({required int rating}) => rating != 0 ? rating.toDouble() : 5;

enum VisibilityType {
  ProductGrid,
  SwitchEventCard,
  FlashSale,
}

Map<String, bool> checkVisibility({required int selected}) {
  return {
    'isVisibleProductGrid': selected == 0 || selected == -1,
    'isVisibleSwitchEventCard': selected == 2 || selected == -1,
    'isVisibleFlashSale': selected == 1 || selected == -1,
  };
}
