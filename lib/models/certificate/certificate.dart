import 'package:kiota_abstractions/kiota_abstractions.dart';
import './certificate_additional_objects.dart';
import './certificate_primer.dart';

class Certificate extends CertificatePrimer implements Parsable {
    ///  The additionalObjects property
    CertificateAdditionalObjects? additionalObjects;
    ///  The keyData property
    String? keyData;
    /// Instantiates a new [Certificate] and sets the default values.
    Certificate() : super() {
        typeEscaped = 'certificate.Certificate';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static Certificate createFromDiscriminatorValue(ParseNode parseNode) {
        return Certificate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<CertificateAdditionalObjects>(CertificateAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['keyData'] = (node) => keyData = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<CertificateAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeStringValue('keyData', keyData);
    }
}
