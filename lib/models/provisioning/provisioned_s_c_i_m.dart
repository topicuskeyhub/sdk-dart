// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../http_authentication_scheme.dart';
import '../misc/attribute_customization.dart';
import './provisioned_s_c_i_m_vendor.dart';
import './provisioned_system.dart';
import './s_c_i_m_update_strategy.dart';

/// auto generated
class ProvisionedSCIM extends ProvisionedSystem implements Parsable {
    ///  The attributes property
    Iterable<AttributeCustomization>? attributes;
    ///  The authenticationScheme property
    HttpAuthenticationScheme? authenticationScheme;
    ///  The basicAuthPassword property
    String? basicAuthPassword;
    ///  The basicAuthUsername property
    String? basicAuthUsername;
    ///  The bearerToken property
    String? bearerToken;
    ///  The connectorConfiguration property
    String? connectorConfiguration;
    ///  The customHeaderName property
    String? customHeaderName;
    ///  The customHeaderValue property
    String? customHeaderValue;
    ///  The externalIdSupported property
    bool? externalIdSupported;
    ///  The filterActiveUsersSupported property
    bool? filterActiveUsersSupported;
    ///  The groupsSupported property
    bool? groupsSupported;
    ///  The pageSize property
    int? pageSize;
    ///  The passwordSupported property
    bool? passwordSupported;
    ///  The updateStrategy property
    SCIMUpdateStrategy? updateStrategy;
    ///  The url property
    String? url;
    ///  The useScimJsonMimetype property
    bool? useScimJsonMimetype;
    ///  The vendor property
    ProvisionedSCIMVendor? vendor;
    /// Instantiates a new [ProvisionedSCIM] and sets the default values.
    ProvisionedSCIM() : super() {
        type_ = 'provisioning.ProvisionedSCIM';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionedSCIM createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionedSCIM();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfObjectValues<AttributeCustomization>(AttributeCustomization.createFromDiscriminatorValue);
        deserializerMap['authenticationScheme'] = (node) => authenticationScheme = node.getEnumValue<HttpAuthenticationScheme>((stringValue) => HttpAuthenticationScheme.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['basicAuthPassword'] = (node) => basicAuthPassword = node.getStringValue();
        deserializerMap['basicAuthUsername'] = (node) => basicAuthUsername = node.getStringValue();
        deserializerMap['bearerToken'] = (node) => bearerToken = node.getStringValue();
        deserializerMap['connectorConfiguration'] = (node) => connectorConfiguration = node.getStringValue();
        deserializerMap['customHeaderName'] = (node) => customHeaderName = node.getStringValue();
        deserializerMap['customHeaderValue'] = (node) => customHeaderValue = node.getStringValue();
        deserializerMap['externalIdSupported'] = (node) => externalIdSupported = node.getBoolValue();
        deserializerMap['filterActiveUsersSupported'] = (node) => filterActiveUsersSupported = node.getBoolValue();
        deserializerMap['groupsSupported'] = (node) => groupsSupported = node.getBoolValue();
        deserializerMap['pageSize'] = (node) => pageSize = node.getIntValue();
        deserializerMap['passwordSupported'] = (node) => passwordSupported = node.getBoolValue();
        deserializerMap['updateStrategy'] = (node) => updateStrategy = node.getEnumValue<SCIMUpdateStrategy>((stringValue) => SCIMUpdateStrategy.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['url'] = (node) => url = node.getStringValue();
        deserializerMap['useScimJsonMimetype'] = (node) => useScimJsonMimetype = node.getBoolValue();
        deserializerMap['vendor'] = (node) => vendor = node.getEnumValue<ProvisionedSCIMVendor>((stringValue) => ProvisionedSCIMVendor.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<AttributeCustomization>('attributes', attributes);
        writer.writeEnumValue<HttpAuthenticationScheme>('authenticationScheme', authenticationScheme, (e) => e?.value);
        writer.writeStringValue('basicAuthPassword', basicAuthPassword);
        writer.writeStringValue('basicAuthUsername', basicAuthUsername);
        writer.writeStringValue('bearerToken', bearerToken);
        writer.writeStringValue('connectorConfiguration', connectorConfiguration);
        writer.writeStringValue('customHeaderName', customHeaderName);
        writer.writeStringValue('customHeaderValue', customHeaderValue);
        writer.writeBoolValue('externalIdSupported', value:externalIdSupported);
        writer.writeBoolValue('filterActiveUsersSupported', value:filterActiveUsersSupported);
        writer.writeBoolValue('groupsSupported', value:groupsSupported);
        writer.writeIntValue('pageSize', pageSize);
        writer.writeBoolValue('passwordSupported', value:passwordSupported);
        writer.writeEnumValue<SCIMUpdateStrategy>('updateStrategy', updateStrategy, (e) => e?.value);
        writer.writeStringValue('url', url);
        writer.writeBoolValue('useScimJsonMimetype', value:useScimJsonMimetype);
        writer.writeEnumValue<ProvisionedSCIMVendor>('vendor', vendor, (e) => e?.value);
    }
}
