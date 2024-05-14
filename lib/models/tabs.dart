enum Tabs {
  home(name: 'home'),
  reflect(name: 'reflect'),
  explore(name: 'explore'),
  sessions(name: 'sessions'),
  messages(name: 'messages'),
  logs(name: 'logs');

  final String name;

  const Tabs({required this.name});
}
