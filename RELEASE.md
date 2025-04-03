# Updating and releasing Topicus KeyHub SDK for Dart

## 1. Updating

### 1.1 Dependencies

Manually, see `pubspec.yaml` and check https://pub.dev/packages for newer versions.
See https://dart.dev/get-dart (bottom of the page) for the latest stable release of the dart platform (called `sdk`).

Also check https://github.com/microsoft/kiota/releases and update `generate.sh` to download the latest kiota version.

### 1.2 Commit the results

```Shell
git add .
git commit -m "Upgrade dependencies"
git push
```

### 1.3 KeyHub OpenAPI spec

Use the keyhub-openapi-transformer-cli to download and preprocess the openapi spec from a running KeyHub instance.

```Shell
transform --in https://<KEYHUB_HOSTNAME>/keyhub/rest/v1/openapi.json --out /path/to/sdk-dart/openapi.json --target dart
```

Use that same cli to process the `.properties`-files from the KeyHub source for i18n-ed messages.

```Shell
i18n --out /home/haster/projects/topicus/release_keyhub/sdk-dart/i18n/ --target dart
```

Regenerate the SDK

```Shell
./generate.sh
```

### 1.4 Commit the results

```Shell
git add .
git commit -m "Upgrade to KeyHub 40"
git push
```

## 2. Tag and release

```Shell
git tag v40.0
git push origin v40.0
```
