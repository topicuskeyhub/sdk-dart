// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/permission.dart';
import '../vault/vault_record_primer.dart';
import './client_application.dart';
import './o_auth2_client_attributes.dart';
import './o_auth2_client_profile.dart';

/// auto generated
class OAuth2Client extends ClientApplication implements Parsable {
    ///  The accountPermissions property
    Iterable<Permission>? accountPermissions;
    ///  The attributes property
    OAuth2ClientAttributes? attributes;
    ///  The callbackURI property
    String? callbackURI;
    ///  The debugMode property
    bool? debugMode;
    ///  The idTokenClaims property
    String? idTokenClaims;
    ///  The initiateLoginURI property
    String? initiateLoginURI;
    ///  The profile property
    OAuth2ClientProfile? profile;
    ///  The resourceURIs property
    String? resourceURIs;
    ///  The sharedSecret property
    VaultRecordPrimer? sharedSecret;
    ///  The shareSecretInVault property
    bool? shareSecretInVault;
    ///  The showLandingPage property
    bool? showLandingPage;
    ///  The useClientCredentials property
    bool? useClientCredentials;
    /// Instantiates a new [OAuth2Client] and sets the default values.
    OAuth2Client() : super() {
        type_ = 'client.OAuth2Client';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OAuth2Client createFromDiscriminatorValue(ParseNode parseNode) {
        return OAuth2Client();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountPermissions'] = (node) => accountPermissions = node.getCollectionOfObjectValues<Permission>(Permission.createFromDiscriminatorValue);
        deserializerMap['attributes'] = (node) => attributes = node.getObjectValue<OAuth2ClientAttributes>(OAuth2ClientAttributes.createFromDiscriminatorValue);
        deserializerMap['callbackURI'] = (node) => callbackURI = node.getStringValue();
        deserializerMap['debugMode'] = (node) => debugMode = node.getBoolValue();
        deserializerMap['idTokenClaims'] = (node) => idTokenClaims = node.getStringValue();
        deserializerMap['initiateLoginURI'] = (node) => initiateLoginURI = node.getStringValue();
        deserializerMap['profile'] = (node) => profile = node.getEnumValue<OAuth2ClientProfile>((stringValue) => OAuth2ClientProfile.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['resourceURIs'] = (node) => resourceURIs = node.getStringValue();
        deserializerMap['sharedSecret'] = (node) => sharedSecret = node.getObjectValue<VaultRecordPrimer>(VaultRecordPrimer.createFromDiscriminatorValue);
        deserializerMap['shareSecretInVault'] = (node) => shareSecretInVault = node.getBoolValue();
        deserializerMap['showLandingPage'] = (node) => showLandingPage = node.getBoolValue();
        deserializerMap['useClientCredentials'] = (node) => useClientCredentials = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<OAuth2ClientAttributes>('attributes', attributes);
        writer.writeStringValue('callbackURI', callbackURI);
        writer.writeBoolValue('debugMode', value:debugMode);
        writer.writeStringValue('idTokenClaims', idTokenClaims);
        writer.writeStringValue('initiateLoginURI', initiateLoginURI);
        writer.writeEnumValue<OAuth2ClientProfile>('profile', profile, (e) => e?.value);
        writer.writeStringValue('resourceURIs', resourceURIs);
        writer.writeObjectValue<VaultRecordPrimer>('sharedSecret', sharedSecret);
        writer.writeBoolValue('shareSecretInVault', value:shareSecretInVault);
        writer.writeBoolValue('showLandingPage', value:showLandingPage);
    }
}
