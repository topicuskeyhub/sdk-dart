import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../http_authentication_scheme.dart';
import './provisioned_s_c_i_m_vendor.dart';
import './provisioned_system.dart';

class ProvisionedSCIM extends ProvisionedSystem implements Parsable {
    ///  The authenticationScheme property
    HttpAuthenticationScheme? authenticationScheme;
    ///  The basicAuthPassword property
    String? basicAuthPassword;
    ///  The basicAuthUsername property
    String? basicAuthUsername;
    ///  The bearerToken property
    String? bearerToken;
    ///  The customHeaderName property
    String? customHeaderName;
    ///  The customHeaderValue property
    String? customHeaderValue;
    ///  The url property
    String? url;
    ///  The vendor property
    ProvisionedSCIMVendor? vendor;
    /// Instantiates a new [ProvisionedSCIM] and sets the default values.
     ProvisionedSCIM() : super() {
        typeEscaped = 'provisioning.ProvisionedSCIM';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionedSCIM createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSCIM();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['authenticationScheme'] = (node) => authenticationScheme = node.getEnumValue<HttpAuthenticationScheme>((stringValue) => HttpAuthenticationScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['basicAuthPassword'] = (node) => basicAuthPassword = node.getStringValue();
        deserializerMap['basicAuthUsername'] = (node) => basicAuthUsername = node.getStringValue();
        deserializerMap['bearerToken'] = (node) => bearerToken = node.getStringValue();
        deserializerMap['customHeaderName'] = (node) => customHeaderName = node.getStringValue();
        deserializerMap['customHeaderValue'] = (node) => customHeaderValue = node.getStringValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        deserializerMap['vendor'] = (node) => vendor = node.getEnumValue<ProvisionedSCIMVendor>((stringValue) => ProvisionedSCIMVendor.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<HttpAuthenticationScheme>('authenticationScheme', authenticationScheme, (e) => e?.value);
        writer.writeStringValue('basicAuthPassword', basicAuthPassword);
        writer.writeStringValue('basicAuthUsername', basicAuthUsername);
        writer.writeStringValue('bearerToken', bearerToken);
        writer.writeStringValue('customHeaderName', customHeaderName);
        writer.writeStringValue('customHeaderValue', customHeaderValue);
        writer.writeStringValue('url', url);
        writer.writeEnumValue<ProvisionedSCIMVendor>('vendor', vendor, (e) => e?.value);
    }
}
