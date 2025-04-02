// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './certificate_additional_objects.dart';
import './certificate_primer.dart';

/// auto generated
class Certificate extends CertificatePrimer implements Parsable {
    ///  The additionalObjects property
    CertificateAdditionalObjects? additionalObjects;
    ///  The keyData property
    Iterable<int>? keyData;
    /// Instantiates a new [Certificate] and sets the default values.
    Certificate() : super() {
        type_ = 'certificate.Certificate';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Certificate createFromDiscriminatorValue(ParseNode parseNode) {
        return Certificate();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<CertificateAdditionalObjects>(CertificateAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['keyData'] = (node) => keyData = node.getCollectionOfPrimitiveValues<int>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<CertificateAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeCollectionOfPrimitiveValues<int>('keyData', keyData);
    }
}
