// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../request/modification_request.dart';
import './notification.dart';

/// auto generated
class ModificationRequestNotification extends Notification implements Parsable {
    ///  The admins property
    Iterable<String>? admins;
    ///  The groups property
    Iterable<String>? groups;
    ///  The request property
    ModificationRequest? request;
    /// Instantiates a new [ModificationRequestNotification] and sets the default values.
    ModificationRequestNotification() : super() {
        type_ = 'notification.ModificationRequestNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequestNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestNotification();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['admins'] = (node) => admins = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['request'] = (node) => request = node.getObjectValue<ModificationRequest>(ModificationRequest.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfPrimitiveValues<String?>('admins', admins);
        writer.writeCollectionOfPrimitiveValues<String?>('groups', groups);
        writer.writeObjectValue<ModificationRequest>('request', request);
    }
}
