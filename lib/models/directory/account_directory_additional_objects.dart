// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../mark/item_markers.dart';
import './account_directory_status_report.dart';

/// auto generated
class AccountDirectoryAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The markers property
    ItemMarkers? markers;
    ///  The status property
    AccountDirectoryStatusReport? status;
    /// Instantiates a new [AccountDirectoryAdditionalObjects] and sets the default values.
    AccountDirectoryAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountDirectoryAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectoryAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['markers'] = (node) => markers = node.getObjectValue<ItemMarkers>(ItemMarkers.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getObjectValue<AccountDirectoryStatusReport>(AccountDirectoryStatusReport.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<ItemMarkers>('markers', markers);
        writer.writeObjectValue<AccountDirectoryStatusReport>('status', status);
        writer.writeAdditionalData(additionalData);
    }
}
