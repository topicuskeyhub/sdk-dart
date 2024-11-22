// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './modification_request.dart';

/// auto generated
class UpdateLicenseRequest extends ModificationRequest implements Parsable {
    ///  The licenseKey property
    String? licenseKey;
    /// Instantiates a new [UpdateLicenseRequest] and sets the default values.
    UpdateLicenseRequest() : super() {
        type_ = 'request.UpdateLicenseRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateLicenseRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateLicenseRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['licenseKey'] = (node) => licenseKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('licenseKey', licenseKey);
    }
}
