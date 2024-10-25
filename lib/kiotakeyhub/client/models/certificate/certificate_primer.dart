import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './certificate.dart';
import './certificate_type.dart';

class CertificatePrimer extends Linkable implements Parsable {
    ///  The alias property
    String? alias;
    ///  The certificateData property
    String? certificateData;
    ///  The type property
    CertificateType? certificatePrimerType;
    ///  The expiration property
    DateTime? expiration;
    ///  The fingerprintSha1 property
    String? fingerprintSha1;
    ///  The fingerprintSha256 property
    String? fingerprintSha256;
    ///  The global property
    bool? global;
    ///  The subjectDN property
    String? subjectDN;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [CertificatePrimer] and sets the default values.
     CertificatePrimer() : super() {
        typeEscaped = 'certificate.CertificatePrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static CertificatePrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'certificate.Certificate' => Certificate(),
            _ => CertificatePrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['alias'] = (node) => alias = node.getStringValue();
        deserializerMap['certificateData'] = (node) => certificateData = node.getStringValue();
        deserializerMap['type'] = (node) => certificatePrimerType = node.getEnumValue<CertificateType>((stringValue) => CertificateType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['expiration'] = (node) => expiration = node.getDateTimeValue();
        deserializerMap['fingerprintSha1'] = (node) => fingerprintSha1 = node.getStringValue();
        deserializerMap['fingerprintSha256'] = (node) => fingerprintSha256 = node.getStringValue();
        deserializerMap['global'] = (node) => global = node.getBoolValue();
        deserializerMap['subjectDN'] = (node) => subjectDN = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('alias', alias);
        writer.writeStringValue('certificateData', certificateData);
        writer.writeEnumValue<CertificateType>('type', certificatePrimerType, (e) => e?.value);
        writer.writeBoolValue('global', value:global);
    }
}
