import 'package:kiota_abstractions/kiota_abstractions.dart';
import './permitted_operation.dart';

class Permission implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The full property
    String? full;
    ///  The instances property
    Iterable<String>? instances;
    ///  The operations property
    Iterable<PermittedOperation>? operations;
    ///  The type property
    String? typeEscaped;
    /// Instantiates a new [Permission] and sets the default values.
     Permission() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static Permission createFromDiscriminatorValue(ParseNode parseNode) {
        return Permission();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['full'] = (node) => full = node.getStringValue();
        deserializerMap['instances'] = (node) => instances = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['operations'] = (node) => operations = node.getCollectionOfEnumValues<PermittedOperation>((stringValue) => PermittedOperation.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['type'] = (node) => typeEscaped = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeStringValue('full', full);
        writer.writeCollectionOfPrimitiveValues<String?>('instances', instances);
        writer.writeCollectionOfEnumValues<PermittedOperation>('operations', operations, (e) => e?.value);
        writer.writeStringValue('type', typeEscaped);
        writer.writeAdditionalData(additionalData);
    }
}
