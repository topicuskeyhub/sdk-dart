import 'package:kiota_abstractions/kiota_abstractions.dart';
import './modification_request.dart';

class UpdateLicenseRequest extends ModificationRequest implements Parsable {
    ///  The licenseKey property
    String? licenseKey;
    /// Instantiates a new [UpdateLicenseRequest] and sets the default values.
    UpdateLicenseRequest() : super() {
        typeEscaped = 'request.UpdateLicenseRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static UpdateLicenseRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateLicenseRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['licenseKey'] = (node) => licenseKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('licenseKey', licenseKey);
    }
}
