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

public const string PROFILE_BASE_MEDICINALPRODUCTINDICATION = "http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication";
public const RESOURCE_NAME_MEDICINALPRODUCTINDICATION = "MedicinalProductIndication";

# FHIR MedicinalProductIndication resource record.
#
# + resourceType - The type of the resource describes
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + intendedEffect - The intended effect, aim or strategy to be achieved by the indication.
# + subject - The medication for which this is an indication.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The base language in which the resource is written.
# + population - The population group to which this applies.
# + diseaseStatus - The status of the disease or symptom for which the indication applies.
# + duration - Timing or duration information as part of the indication.
# + undesirableEffect - Describe the undesirable effects of the medicinal product.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + otherTherapy - Information about the use of the medicinal product in relation to other therapies described as part of the indication.
# + comorbidity - Comorbidity (concurrent condition) or co-infection as part of the indication.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + diseaseSymptomProcedure - The disease, symptom or procedure that is the indication for treatment.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
@r4:ResourceDefinition {
    resourceType: "MedicinalProductIndication",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication",
    elements: {
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.extension"
        },
        "intendedEffect" : {
            name: "intendedEffect",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.intendedEffect"
        },
        "subject" : {
            name: "subject",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.subject"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.modifierExtension"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "population" : {
            name: "population",
            dataType: r4:Population,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.population"
        },
        "diseaseStatus" : {
            name: "diseaseStatus",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.diseaseStatus"
        },
        "duration" : {
            name: "duration",
            dataType: r4:Quantity,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.duration"
        },
        "undesirableEffect" : {
            name: "undesirableEffect",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.undesirableEffect"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.contained"
        },
        "otherTherapy" : {
            name: "otherTherapy",
            dataType: MedicinalProductIndicationOtherTherapy,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.otherTherapy"
        },
        "comorbidity" : {
            name: "comorbidity",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "MedicinalProductIndication.comorbidity"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.meta"
        },
        "diseaseSymptomProcedure" : {
            name: "diseaseSymptomProcedure",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.diseaseSymptomProcedure"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.implicitRules"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "MedicinalProductIndication.text"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type MedicinalProductIndication record {|
    *r4:DomainResource;

    RESOURCE_NAME_MEDICINALPRODUCTINDICATION resourceType = RESOURCE_NAME_MEDICINALPRODUCTINDICATION;

    BaseMedicinalProductIndicationMeta meta = {
        profile : [PROFILE_BASE_MEDICINALPRODUCTINDICATION]
    };
    r4:Extension[] extension?;
    r4:CodeableConcept intendedEffect?;
    r4:Reference[] subject?;
    r4:Extension[] modifierExtension?;
    r4:code language?;
    r4:Population[] population?;
    r4:CodeableConcept diseaseStatus?;
    r4:Quantity duration?;
    r4:Reference[] undesirableEffect?;
    r4:Resource[] contained?;
    MedicinalProductIndicationOtherTherapy[] otherTherapy?;
    r4:CodeableConcept[] comorbidity?;
    r4:CodeableConcept diseaseSymptomProcedure?;
    r4:uri implicitRules?;
    string id?;
    r4:Narrative text?;
    never...;
|};

@r4:DataTypeDefinition {
    name: "BaseMedicinalProductIndicationMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseMedicinalProductIndicationMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/MedicinalProductIndication"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# FHIR MedicinalProductIndicationOtherTherapy datatype record.
#
# + medicationReference - Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + therapyRelationshipType - The type of relationship between the medicinal product indication or contraindication and another therapy.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + medicationCodeableConcept - Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.
@r4:DataTypeDefinition {
    name: "MedicinalProductIndicationOtherTherapy",
    baseType: (),
    elements: {
        "medicationReference": {
            name: "medicationReference",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.",
            path: "MedicinalProductIndication.otherTherapy.medication[x]"
        },
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "MedicinalProductIndication.otherTherapy.extension"
        },
        "therapyRelationshipType": {
            name: "therapyRelationshipType",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "The type of relationship between the medicinal product indication or contraindication and another therapy.",
            path: "MedicinalProductIndication.otherTherapy.therapyRelationshipType"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "MedicinalProductIndication.otherTherapy.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "MedicinalProductIndication.otherTherapy.id"
        },
        "medicationCodeableConcept": {
            name: "medicationCodeableConcept",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.",
            path: "MedicinalProductIndication.otherTherapy.medication[x]"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type MedicinalProductIndicationOtherTherapy record {|
    r4:Reference medicationReference;
    r4:Extension[] extension?;
    r4:CodeableConcept therapyRelationshipType;
    r4:Extension[] modifierExtension?;
    string id?;
    r4:CodeableConcept medicationCodeableConcept;
|};

