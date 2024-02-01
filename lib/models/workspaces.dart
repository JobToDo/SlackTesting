class Workspaces {
  String profile;
  String name;
  String address;
  bool isSelected;

  Workspaces({
    required this.profile,
    required this.name,
    required this.address,
    this.isSelected = false,
  });

  static List<Workspaces> workspacesList(){
    return[
      Workspaces(profile: 'N', name: 'NCompany', address: 'ncompanyglobal.slack.com', isSelected: true),
      Workspaces(profile: 'L', name: 'LCompany', address: 'lcompanyglobal.slack.com', isSelected: false),
      Workspaces(profile: 'M', name: 'MCompany', address: 'mcompanyglobal.slack.com', isSelected: false),
    ];
  }
}