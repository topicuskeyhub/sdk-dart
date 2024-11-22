// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../license/key_hub_license_info.dart';
import './notification.dart';

/// auto generated
class LicenseStatusNotification extends Notification implements Parsable {
    ///  The activeAccounts property
    int? activeAccounts;
    ///  The licenseInfo property
    KeyHubLicenseInfo? licenseInfo;
    /// Instantiates a new [LicenseStatusNotification] and sets the default values.
    LicenseStatusNotification() : super() {
        type_ = 'notification.LicenseStatusNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LicenseStatusNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return LicenseStatusNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['activeAccounts'] = (node) => activeAccounts = node.getIntValue();
        deserializerMap['licenseInfo'] = (node) => licenseInfo = node.getObjectValue<KeyHubLicenseInfo>(KeyHubLicenseInfo.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('activeAccounts', activeAccounts);
        writer.writeObjectValue<KeyHubLicenseInfo>('licenseInfo', licenseInfo);
    }
}
