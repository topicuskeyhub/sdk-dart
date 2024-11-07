import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../license/key_hub_license_info.dart';
import './notification.dart';

class LicenseStatusNotification extends Notification implements Parsable {
    ///  The activeAccounts property
    int? activeAccounts;
    ///  The licenseInfo property
    KeyHubLicenseInfo? licenseInfo;
    /// Instantiates a new [LicenseStatusNotification] and sets the default values.
    LicenseStatusNotification() : super() {
        typeEscaped = 'notification.LicenseStatusNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static LicenseStatusNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return LicenseStatusNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['activeAccounts'] = (node) => activeAccounts = node.getIntValue();
        deserializerMap['licenseInfo'] = (node) => licenseInfo = node.getObjectValue<KeyHubLicenseInfo>(KeyHubLicenseInfo.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('activeAccounts', activeAccounts);
        writer.writeObjectValue<KeyHubLicenseInfo>('licenseInfo', licenseInfo);
    }
}
