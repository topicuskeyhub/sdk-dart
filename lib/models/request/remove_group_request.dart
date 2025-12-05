// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './modification_request.dart';

/// auto generated
class RemoveGroupRequest extends ModificationRequest implements Parsable {
    ///  The groupCount property
    int? groupCount;
    ///  The groupNames property
    Iterable<String>? groupNames;
    ///  The groups property
    Iterable<GroupPrimer>? groups;
    /// Instantiates a new [RemoveGroupRequest] and sets the default values.
    RemoveGroupRequest() : super() {
        type_ = 'request.RemoveGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static RemoveGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return RemoveGroupRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupCount'] = (node) => groupCount = node.getIntValue();
        deserializerMap['groupNames'] = (node) => groupNames = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfObjectValues<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfPrimitiveValues<String?>('groupNames', groupNames);
        writer.writeCollectionOfObjectValues<GroupPrimer>('groups', groups);
    }
}
