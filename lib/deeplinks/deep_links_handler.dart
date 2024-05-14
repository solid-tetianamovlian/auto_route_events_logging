import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uni_links/uni_links.dart';

bool _initialUriIsHandled = false;

class DeepLinksHandler extends StatefulWidget {
  final Widget child;
  final Function(int index) selectTab;

  const DeepLinksHandler({
    super.key,
    required this.child,
    required this.selectTab,
  });

  @override
  State<DeepLinksHandler> createState() => _DeepLinksHandlerState();
}

class _DeepLinksHandlerState extends State<DeepLinksHandler> {
  StreamSubscription? _sub;

  void _handleIncomingLinks() {
    _sub = uriLinkStream.listen(
      (Uri? uri) async {
        if (!mounted) return;
        await _handleDeepLinks(uri);
      },
      onError: (Object err) {
        if (!mounted) return;
      },
    );
  }

  Future<void> _handleInitialUri() async {
    if (_initialUriIsHandled) return;
    _initialUriIsHandled = true;
    try {
      final uri = await getInitialUri();
      if (uri != null) {
        if (!mounted) return;
        _handleDeepLinks(uri);
      }
    } on PlatformException {
      debugPrint('failed to get initial uri');
    }
  }

  Future<void> _handleDeepLinks(Uri? uri) async {
    final pathSeg = uri?.pathSegments ?? [];
    if (pathSeg.length < 2) return;

    if (pathSeg[0] == "content" && pathSeg[1] == "bytes") {
      _handleByteDeepLink(pathSeg);
    } else if (pathSeg[0] == "dl") {
      _handleTabDeepLink(pathSeg);
    }
  }

  Future<void> _handleByteDeepLink(List<String> pathSeg) async {
    return;
  }

  final x = ['home', 'reflect', 'explore', 'sessions', 'messages'];

  void _handleTabDeepLink(List<String> pathSeg) {
    final tabIndex = x.indexOf(pathSeg[1]);
    widget.selectTab.call(tabIndex);
  }

  @override
  void initState() {
    _handleIncomingLinks();
    _handleInitialUri();
    super.initState();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
