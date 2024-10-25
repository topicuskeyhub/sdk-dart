import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_directory.dart';
import './o_i_d_c_vendor.dart';

class OIDCDirectory extends AccountDirectory implements Parsable {
    ///  The acrValues property
    String? acrValues;
    ///  The attributesToStore property
    String? attributesToStore;
    ///  The clientId property
    String? clientId;
    ///  The clientSecret property
    String? clientSecret;
    ///  The domainRestriction property
    String? domainRestriction;
    ///  The enforces2fa property
    bool? enforces2fa;
    ///  The fullyResolvedIssuer property
    String? fullyResolvedIssuer;
    ///  The issuer property
    String? issuer;
    ///  The logoutUrl property
    String? logoutUrl;
    ///  The sendLoginHint property
    bool? sendLoginHint;
    ///  The vendor property
    OIDCVendor? vendor;
    /// Instantiates a new [OIDCDirectory] and sets the default values.
     OIDCDirectory() : super() {
        typeEscaped = 'directory.OIDCDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static OIDCDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return OIDCDirectory();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['acrValues'] = (node) => acrValues = node.getStringValue();
        deserializerMap['attributesToStore'] = (node) => attributesToStore = node.getStringValue();
        deserializerMap['clientId'] = (node) => clientId = node.getStringValue();
        deserializerMap['clientSecret'] = (node) => clientSecret = node.getStringValue();
        deserializerMap['domainRestriction'] = (node) => domainRestriction = node.getStringValue();
        deserializerMap['enforces2fa'] = (node) => enforces2fa = node.getBoolValue();
        deserializerMap['fullyResolvedIssuer'] = (node) => fullyResolvedIssuer = node.getStringValue();
        deserializerMap['issuer'] = (node) => issuer = node.getStringValue();
        deserializerMap['logoutUrl'] = (node) => logoutUrl = node.getStringValue();
        deserializerMap['sendLoginHint'] = (node) => sendLoginHint = node.getBoolValue();
        deserializerMap['vendor'] = (node) => vendor = node.getEnumValue<OIDCVendor>((stringValue) => OIDCVendor.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('acrValues', acrValues);
        writer.writeStringValue('attributesToStore', attributesToStore);
        writer.writeStringValue('clientId', clientId);
        writer.writeStringValue('clientSecret', clientSecret);
        writer.writeStringValue('domainRestriction', domainRestriction);
        writer.writeBoolValue('enforces2fa', value:enforces2fa);
        writer.writeStringValue('issuer', issuer);
        writer.writeStringValue('logoutUrl', logoutUrl);
        writer.writeBoolValue('sendLoginHint', value:sendLoginHint);
        writer.writeEnumValue<OIDCVendor>('vendor', vendor, (e) => e?.value);
    }
}
