import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './abstract_organizational_unit_modification_request.dart';

class MoveGroupsRequest extends AbstractOrganizationalUnitModificationRequest implements Parsable {
    ///  The groups property
    Iterable<GroupPrimer>? groups;
    /// Instantiates a new [MoveGroupsRequest] and sets the default values.
    MoveGroupsRequest() : super() {
        typeEscaped = 'request.MoveGroupsRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static MoveGroupsRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return MoveGroupsRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfObjectValues<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<GroupPrimer>('groups', groups);
    }
}
