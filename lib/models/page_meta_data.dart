import 'package:auto_route_test/extensions/json_map_extension.dart';

class PageMetaData {
  final String? logPageName;
  final bool logPageView;

  PageMetaData({
    this.logPageView = true,
    this.logPageName,
  });

  factory PageMetaData.fromJson(Map<String, dynamic> json) {
    return PageMetaData(
        logPageName: json.getOrNull('log_page_name'),
        logPageView: json.getOrDefault('log_page_view', true));
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{
      'log_page_view': logPageView,
    };

    if (logPageName != null) {
      result['log_page_name'] = logPageName;
    }

    return result;
  }
}
