import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../client/client_application_primer.dart';
import '../linkable.dart';
import './group_client_additional_objects.dart';
import './group_primer.dart';

class GroupClient extends Linkable implements Parsable {
    ///  The activationRequired property
    bool? activationRequired;
    ///  The additionalObjects property
    GroupClientAdditionalObjects? additionalObjects;
    ///  The client property
    ClientApplicationPrimer? client;
    ///  The group property
    GroupPrimer? group;
    ///  The owner property
    GroupPrimer? owner;
    ///  The technicalAdministrator property
    GroupPrimer? technicalAdministrator;
    /// Instantiates a new [GroupClient] and sets the default values.
    GroupClient() : super() {
        typeEscaped = 'group.GroupClient';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupClient createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupClient();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['activationRequired'] = (node) => activationRequired = node.getBoolValue();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupClientAdditionalObjects>(GroupClientAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['client'] = (node) => client = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        deserializerMap['group'] = (node) => group = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['owner'] = (node) => owner = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['technicalAdministrator'] = (node) => technicalAdministrator = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('activationRequired', value:activationRequired);
        writer.writeObjectValue<GroupClientAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<ClientApplicationPrimer>('client', client);
        writer.writeObjectValue<GroupPrimer>('group', group);
        writer.writeObjectValue<GroupPrimer>('owner', owner);
        writer.writeObjectValue<GroupPrimer>('technicalAdministrator', technicalAdministrator);
    }
}
