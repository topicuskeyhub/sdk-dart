import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_directory.dart';

class MaintenanceDirectory extends AccountDirectory implements Parsable {
    /// Instantiates a new [MaintenanceDirectory] and sets the default values.
    MaintenanceDirectory() : super() {
        typeEscaped = 'directory.MaintenanceDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static MaintenanceDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return MaintenanceDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
