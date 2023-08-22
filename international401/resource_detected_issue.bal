// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

// AUTO-GENERATED FILE.
// This file is auto-generated by Ballerina.

import ballerinax/health.fhir.r4;

public const string PROFILE_BASE_DETECTEDISSUE = "http://hl7.org/fhir/StructureDefinition/DetectedIssue";
public const RESOURCE_NAME_DETECTEDISSUE = "DetectedIssue";

# FHIR DetectedIssue resource record.
#
# + resourceType - The type of the resource describes
# + severity - Indicates the degree of importance associated with the identified issue based on the potential impact on the patient.
# + identifier - Business identifier associated with the detected issue record.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + mitigation - Indicates an action that has been taken or is committed to reduce or eliminate the likelihood of the risk identified by the detected issue from manifesting. Can also reflect an observation of known mitigating factors that may reduce/eliminate the need for any action.
# + code - Identifies the general type of issue identified.
# + evidence - Supporting evidence or manifestations that provide the basis for identifying the detected issue such as a GuidanceResponse or MeasureReport.
# + author - Individual or device responsible for the issue being raised. For example, a decision support application or a pharmacist conducting a medication review.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + reference - The literature, knowledge-base or similar reference that describes the propensity for the detected issue identified.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + patient - Indicates the patient whose record the detected issue is associated with.
# + identifiedDateTime - The date or period when the detected issue was initially identified.
# + identifiedPeriod - The date or period when the detected issue was initially identified.
# + implicated - Indicates the resource representing the current activity or proposed activity that is potentially problematic.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + detail - A textual explanation of the detected issue.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + status - Indicates the status of the detected issue.
@r4:ResourceDefinition {
    resourceType: "DetectedIssue",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/DetectedIssue",
    elements: {
        "severity" : {
            name: "severity",
            dataType: DetectedIssueSeverity,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.severity",
            valueSet: "http://hl7.org/fhir/ValueSet/detectedissue-severity|4.0.1"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DetectedIssue.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DetectedIssue.extension"
        },
        "mitigation" : {
            name: "mitigation",
            dataType: DetectedIssueMitigation,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DetectedIssue.mitigation"
        },
        "code" : {
            name: "code",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.code",
            valueSet: "http://hl7.org/fhir/ValueSet/detectedissue-category"
        },
        "evidence" : {
            name: "evidence",
            dataType: DetectedIssueEvidence,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DetectedIssue.evidence"
        },
        "author" : {
            name: "author",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.author"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DetectedIssue.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "reference" : {
            name: "reference",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.reference"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DetectedIssue.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.meta"
        },
        "patient" : {
            name: "patient",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.patient"
        },
        "identifiedDateTime" : {
            name: "identifiedDateTime",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.identified[x]"
        },
        "identifiedPeriod" : {
            name: "identifiedPeriod",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.identified[x]"
        },
        "implicated" : {
            name: "implicated",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "DetectedIssue.implicated"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.implicitRules"
        },
        "detail" : {
            name: "detail",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.detail"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "DetectedIssue.text"
        },
        "status" : {
            name: "status",
            dataType: DetectedIssueStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "DetectedIssue.status",
            valueSet: "http://hl7.org/fhir/ValueSet/observation-status|4.0.1"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type DetectedIssue record {|
    *r4:DomainResource;

    RESOURCE_NAME_DETECTEDISSUE resourceType = RESOURCE_NAME_DETECTEDISSUE;

    BaseDetectedIssueMeta meta = {
        profile : [PROFILE_BASE_DETECTEDISSUE]
    };
    DetectedIssueSeverity severity?;
    r4:Identifier[] identifier?;
    r4:Extension[] extension?;
    DetectedIssueMitigation[] mitigation?;
    r4:CodeableConcept code?;
    DetectedIssueEvidence[] evidence?;
    r4:Reference author?;
    r4:Extension[] modifierExtension?;
    r4:code language?;
    r4:uri reference?;
    r4:Resource[] contained?;
    r4:Reference patient?;
    r4:dateTime identifiedDateTime?;
    r4:Period identifiedPeriod?;
    r4:Reference[] implicated?;
    r4:uri implicitRules?;
    string detail?;
    string id?;
    r4:Narrative text?;
    DetectedIssueStatus status;
    never...;
|};

@r4:DataTypeDefinition {
    name: "BaseDetectedIssueMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseDetectedIssueMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/DetectedIssue"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# DetectedIssueStatus enum
public enum DetectedIssueStatus {
   CODE_STATUS_AMENDED = "amended",
   CODE_STATUS_FINAL = "final",
   CODE_STATUS_REGISTERED = "registered",
   CODE_STATUS_PRELIMINARY = "preliminary"
}

# FHIR DetectedIssueEvidence datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + code - A manifestation that led to the recording of this detected issue.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + detail - Links to resources that constitute evidence for the detected issue such as a GuidanceResponse or MeasureReport.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "DetectedIssueEvidence",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "DetectedIssue.evidence.extension"
        },
        "code": {
            name: "code",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "A manifestation that led to the recording of this detected issue.",
            path: "DetectedIssue.evidence.code"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "DetectedIssue.evidence.modifierExtension"
        },
        "detail": {
            name: "detail",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Links to resources that constitute evidence for the detected issue such as a GuidanceResponse or MeasureReport.",
            path: "DetectedIssue.evidence.detail"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "DetectedIssue.evidence.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type DetectedIssueEvidence record {|
    r4:Extension[] extension?;
    r4:CodeableConcept[] code?;
    r4:Extension[] modifierExtension?;
    r4:Reference[] detail?;
    string id?;
|};

# FHIR DetectedIssueMitigation datatype record.
#
# + date - Indicates when the mitigating action was documented.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + author - Identifies the practitioner who determined the mitigation and takes responsibility for the mitigation step occurring.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + action - Describes the action that was taken or the observation that was made that reduces/eliminates the risk associated with the identified issue.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "DetectedIssueMitigation",
    baseType: (),
    elements: {
        "date": {
            name: "date",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates when the mitigating action was documented.",
            path: "DetectedIssue.mitigation.date"
        },
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "DetectedIssue.mitigation.extension"
        },
        "author": {
            name: "author",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Identifies the practitioner who determined the mitigation and takes responsibility for the mitigation step occurring.",
            path: "DetectedIssue.mitigation.author"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "DetectedIssue.mitigation.modifierExtension"
        },
        "action": {
            name: "action",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "Describes the action that was taken or the observation that was made that reduces/eliminates the risk associated with the identified issue.",
            path: "DetectedIssue.mitigation.action"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "DetectedIssue.mitigation.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type DetectedIssueMitigation record {|
    r4:dateTime date?;
    r4:Extension[] extension?;
    r4:Reference author?;
    r4:Extension[] modifierExtension?;
    r4:CodeableConcept action;
    string id?;
|};

# DetectedIssueSeverity enum
public enum DetectedIssueSeverity {
   CODE_SEVERITY_HIGH = "high",
   CODE_SEVERITY_LOW = "low",
   CODE_SEVERITY_MODERATE = "moderate"
}

