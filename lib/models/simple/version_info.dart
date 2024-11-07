import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class VersionInfo extends NonLinkable implements Parsable {
    ///  The contractVersions property
    Iterable<int>? contractVersions;
    ///  The keyHubVersion property
    String? keyHubVersion;
    /// Instantiates a new [VersionInfo] and sets the default values.
    VersionInfo() : super() {
        typeEscaped = 'simple.VersionInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static VersionInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return VersionInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['contractVersions'] = (node) => contractVersions = node.getCollectionOfPrimitiveValues<int>();
        deserializerMap['keyHubVersion'] = (node) => keyHubVersion = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfPrimitiveValues<int?>('contractVersions', contractVersions);
        writer.writeStringValue('keyHubVersion', keyHubVersion);
    }
}
