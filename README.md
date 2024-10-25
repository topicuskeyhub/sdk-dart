# sdk-dart
Topicus KeyHub SDK for Dart

## Installation
To install the SDK for Dart, simply execute the following command:
```dart pub get```

## Getting started

### Creating a simple client
To start using the SDK for Dart, you need to create a client.
The simplest client you can create does not require authentication, nor authorization.

To create this client, create a file named simple-client.dart in your bin folder
and copy the following content into it.


```
import 'package:kiota_abstractions/kiota_abstractions.dart';
import 'package:keyhub_dart_sdk/key_hub_client.dart';
import 'package:kiota_http/kiota_http.dart';
import 'package:kiota_serialization_json/kiota_serialization_json.dart';

void main() async {
  // Getting version information does not require authentication/authorization,
  // so use the anonymous authentication provider
  final AnonymousAuthenticationProvider authProvider =
      AnonymousAuthenticationProvider();

  final httpClient = KiotaClientFactory.createClient();

  // Create the adapter
  final adapter = HttpClientRequestAdapter(
    client: httpClient,
    authProvider: authProvider,
    pNodeFactory: ParseNodeFactoryRegistry.defaultInstance,
    sWriterFactory: JsonSerializationWriterFactory(),
  );
  adapter.baseUrl = 'https://keyhub.example.com/keyhub/rest/v1';
  final keyHubClient = KeyHubClient(adapter);

  // GET /info
  final info = await keyHubClient.info.getAsync();
  print('KeyHub version: ${info?.keyHubVersion}');
  print('KeyHub contract versions: ${info?.contractVersions}');
}

```

The code above creates a HttpClientRequestAdapter from an HTTP client,
an anonymous authentication provider, a default ParseNodeFactory and 
a serialization writer that uses JSON.

After creating a KeyHub client, it gets the KeyHub version info.

Before you run this code, make sure that adapter.baseUrl contains
the proper URL to your KeyHub server.
When successful, your output should look something like this:
```
KeyHub version: keyhub-36-1
KeyHub contract versions: [73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59]
```
Your actual version numbers may vary.

### Creating a client using a bearer token
To create a client that uses a bearer token, create a file named oauth2-client.dart
and place it in your bin folder. Give it the following content.


```
import 'package:kiota_abstractions/kiota_abstractions.dart';
import 'package:keyhub_dart_sdk/key_hub_client.dart';
import 'package:kiota_http/kiota_http.dart';
import 'package:kiota_serialization_json/kiota_serialization_json.dart';

void main() async {
  final BaseBearerTokenAuthenticationProvider
      baseBearerTokenAuthenticationProvider =
      BaseBearerTokenAuthenticationProvider(Oauth2TokenProvider());

  final httpClient = KiotaClientFactory.createClient();

  // Create the adapter
  final adapter = HttpClientRequestAdapter(
    client: httpClient,
    authProvider: baseBearerTokenAuthenticationProvider,
    pNodeFactory: ParseNodeFactoryRegistry.defaultInstance,
    sWriterFactory: JsonSerializationWriterFactory(),
  );
  adapter.baseUrl = 'https://keyhub.example.com/keyhub/rest/v1';

  final keyHubClient = KeyHubClient(adapter);

  final accountSettings = await keyHubClient.account.me.settings.getAsync();
  print('KeyHub token password mode: ${accountSettings?.passwordMode}');
}

class Oauth2TokenProvider extends AccessTokenProvider {
  @override
  AllowedHostsValidator get allowedHostsValidator => AllowedHostsValidator();

  @override
  Future<String> getAuthorizationToken(Uri uri,
      [Map<String, Object>? additionalAuthenticationContext]) async {
    return 'your-bearer-token';
  }
}
```
Compared to the simple client, using no authorization, this client
uses a BaseBearerTokenAuthenticationProvider, that requires a Oauth2TokenProvider.

Before you run the client make sure that you have set the adapter.baseUrl correctly
and that you have replaced the string 'your-bearer-token' wih a valid bearer token.

Getting a valid bearer token is out of scope for this document.


