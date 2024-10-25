import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../request/modification_request.dart';
import './notification.dart';

class ModificationRequestNotification extends Notification implements Parsable {
    ///  The admins property
    Iterable<String>? admins;
    ///  The groups property
    Iterable<String>? groups;
    ///  The request property
    ModificationRequest? request;
    /// Instantiates a new [ModificationRequestNotification] and sets the default values.
     ModificationRequestNotification() : super() {
        typeEscaped = 'notification.ModificationRequestNotification';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ModificationRequestNotification createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestNotification();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['admins'] = (node) => admins = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['request'] = (node) => request = node.getObjectValue<ModificationRequest>(ModificationRequest.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfPrimitiveValues<String?>('admins', admins);
        writer.writeCollectionOfPrimitiveValues<String?>('groups', groups);
        writer.writeObjectValue<ModificationRequest>('request', request);
    }
}
