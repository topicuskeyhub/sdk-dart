// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_directory.dart';

/// auto generated
class MaintenanceDirectory extends AccountDirectory implements Parsable {
    /// Instantiates a new [MaintenanceDirectory] and sets the default values.
    MaintenanceDirectory() : super() {
        type_ = 'directory.MaintenanceDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MaintenanceDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return MaintenanceDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
