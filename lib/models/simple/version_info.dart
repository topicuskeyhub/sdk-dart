// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class VersionInfo extends NonLinkable implements Parsable {
    ///  The contractVersions property
    Iterable<int>? contractVersions;
    ///  The keyHubVersion property
    String? keyHubVersion;
    /// Instantiates a new [VersionInfo] and sets the default values.
    VersionInfo() : super() {
        type_ = 'simple.VersionInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VersionInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return VersionInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['contractVersions'] = (node) => contractVersions = node.getCollectionOfPrimitiveValues<int>();
        deserializerMap['keyHubVersion'] = (node) => keyHubVersion = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfPrimitiveValues<int?>('contractVersions', contractVersions);
        writer.writeStringValue('keyHubVersion', keyHubVersion);
    }
}
