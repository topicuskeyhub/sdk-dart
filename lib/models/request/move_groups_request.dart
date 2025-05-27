// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './abstract_organizational_unit_modification_request.dart';

/// auto generated
class MoveGroupsRequest extends AbstractOrganizationalUnitModificationRequest implements Parsable {
    ///  The groupCount property
    int? groupCount;
    ///  The groups property
    Iterable<GroupPrimer>? groups;
    /// Instantiates a new [MoveGroupsRequest] and sets the default values.
    MoveGroupsRequest() : super() {
        type_ = 'request.MoveGroupsRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MoveGroupsRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return MoveGroupsRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['groupCount'] = (node) => groupCount = node.getIntValue();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfObjectValues<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<GroupPrimer>('groups', groups);
    }
}
