import 'dart:convert';

class Version {
    final String version;
    final bool forceUpdate;

    Version({
        required this.version,
        required this.forceUpdate,
    });

    Version copyWith({
        String? version,
        bool? forceUpdate,
    }) => 
        Version(
            version: version ?? this.version,
            forceUpdate: forceUpdate ?? this.forceUpdate,
        );

    factory Version.fromRawJson(String str) => Version.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Version.fromJson(Map<String, dynamic> json) => Version(
        version: json["version"],
        forceUpdate: json["forceUpdate"],
    );

    Map<String, dynamic> toJson() => {
        "version": version,
        "forceUpdate": forceUpdate,
    };
}
