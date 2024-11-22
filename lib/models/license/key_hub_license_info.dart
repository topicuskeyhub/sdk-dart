// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './key_hub_license_info_license_status.dart';
import './license_feature.dart';

/// auto generated
class KeyHubLicenseInfo extends NonLinkable implements Parsable {
    ///  The currentLicenseStatus property
    KeyHubLicenseInfoLicenseStatus? currentLicenseStatus;
    ///  The customerCompany property
    String? customerCompany;
    ///  The customerContact property
    String? customerContact;
    ///  The customerDomains property
    Iterable<String>? customerDomains;
    ///  The expirationTime property
    DateTime? expirationTime;
    ///  The features property
    Iterable<LicenseFeature>? features;
    ///  The issueTime property
    DateTime? issueTime;
    ///  The keyHubDomain property
    String? keyHubDomain;
    ///  The licenseKey property
    String? licenseKey;
    ///  The notBeforeTime property
    DateTime? notBeforeTime;
    ///  The usersBusinessLimit property
    int? usersBusinessLimit;
    ///  The usersHardLimit property
    int? usersHardLimit;
    ///  The usersProLimit property
    int? usersProLimit;
    ///  The usersSoftLimit property
    int? usersSoftLimit;
    ///  The uuid property
    String? uuid;
    ///  The version property
    int? version;
    /// Instantiates a new [KeyHubLicenseInfo] and sets the default values.
    KeyHubLicenseInfo() : super() {
        type_ = 'license.KeyHubLicenseInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static KeyHubLicenseInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return KeyHubLicenseInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['currentLicenseStatus'] = (node) => currentLicenseStatus = node.getEnumValue<KeyHubLicenseInfoLicenseStatus>((stringValue) => KeyHubLicenseInfoLicenseStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['customerCompany'] = (node) => customerCompany = node.getStringValue();
        deserializerMap['customerContact'] = (node) => customerContact = node.getStringValue();
        deserializerMap['customerDomains'] = (node) => customerDomains = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['expirationTime'] = (node) => expirationTime = node.getDateTimeValue();
        deserializerMap['features'] = (node) => features = node.getCollectionOfEnumValues<LicenseFeature>((stringValue) => LicenseFeature.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['issueTime'] = (node) => issueTime = node.getDateTimeValue();
        deserializerMap['keyHubDomain'] = (node) => keyHubDomain = node.getStringValue();
        deserializerMap['licenseKey'] = (node) => licenseKey = node.getStringValue();
        deserializerMap['notBeforeTime'] = (node) => notBeforeTime = node.getDateTimeValue();
        deserializerMap['usersBusinessLimit'] = (node) => usersBusinessLimit = node.getIntValue();
        deserializerMap['usersHardLimit'] = (node) => usersHardLimit = node.getIntValue();
        deserializerMap['usersProLimit'] = (node) => usersProLimit = node.getIntValue();
        deserializerMap['usersSoftLimit'] = (node) => usersSoftLimit = node.getIntValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        deserializerMap['version'] = (node) => version = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<KeyHubLicenseInfoLicenseStatus>('currentLicenseStatus', currentLicenseStatus, (e) => e?.value);
        writer.writeStringValue('customerCompany', customerCompany);
        writer.writeStringValue('customerContact', customerContact);
        writer.writeCollectionOfPrimitiveValues<String?>('customerDomains', customerDomains);
        writer.writeDateTimeValue('expirationTime', expirationTime);
        writer.writeCollectionOfEnumValues<LicenseFeature>('features', features, (e) => e?.value);
        writer.writeDateTimeValue('issueTime', issueTime);
        writer.writeStringValue('keyHubDomain', keyHubDomain);
        writer.writeStringValue('licenseKey', licenseKey);
        writer.writeDateTimeValue('notBeforeTime', notBeforeTime);
        writer.writeIntValue('usersBusinessLimit', usersBusinessLimit);
        writer.writeIntValue('usersHardLimit', usersHardLimit);
        writer.writeIntValue('usersProLimit', usersProLimit);
        writer.writeIntValue('usersSoftLimit', usersSoftLimit);
        writer.writeStringValue('uuid', uuid);
        writer.writeIntValue('version', version);
    }
}
