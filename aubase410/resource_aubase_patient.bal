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

public const string PROFILE_BASE_AUBASEPATIENT = "http://hl7.org.au/fhir/StructureDefinition/au-patient";
public const RESOURCE_NAME_AUBASEPATIENT = "Patient";

# FHIR AUBasePatient resource record.
#
# + resourceType - The type of the resource describes
# + extension - An Extension
# + gender - Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + link - Link to a Patient or RelatedPerson resource that concerns the same actual person.
# + language - The base language in which the resource is written.
# + contact - A contact party (e.g. guardian, partner, friend) for the patient.
# + deceasedDateTime - Indicates if the individual is deceased or not. Deceased date accuracy indicator is optional.
# + generalPractitioner - Patient's nominated care provider.
# + telecom - A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + communication - A language which may be used to communicate with the patient about his or her health.
# + identifier - An identifier - identifies some entity uniquely and unambiguously. Typically this is used for business identifiers.
# + address - An Australian address expressed using postal conventions (as opposed to GPS or other location definition formats).
# + multipleBirthBoolean - Indicates whether the patient is part of a multiple (boolean) or indicates the actual birth order (integer).
# + active - Whether this patient record is in active use. Many systems use this property to mark as non-current patients, such as those that have not been seen for a period of time based on an organization's business rules. It is often used to filter patient lists to exclude inactive patients Deceased patients may also be marked as inactive for the same reasons, but may be active for some time after death.
# + photo - Image of the patient.
# + birthDate - The date of birth for the individual.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + deceasedBoolean - Indicates if the individual is deceased or not. Deceased date accuracy indicator is optional.
# + managingOrganization - Organization that is the custodian of the patient record.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + multipleBirthInteger - Indicates whether the patient is part of a multiple (boolean) or indicates the actual birth order (integer).
# + name - A name associated with the individual.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + maritalStatus - This field contains a patient's most recent marital (civil) status.
@r4:ResourceDefinition {
    resourceType: "Patient",
    baseType: r4:DomainResource,
    profile: "http://hl7.org.au/fhir/StructureDefinition/au-patient",
    elements: {
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.extension"
        },
        "gender" : {
            name: "gender",
            dataType: PatientGender,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.gender",
            valueSet: "http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.modifierExtension"
        },
        "link" : {
            name: "link",
            dataType: PatientLink,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.link"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "contact" : {
            name: "contact",
            dataType: PatientContact,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.contact"
        },
        "deceasedDateTime" : {
            name: "deceasedDateTime",
            dataType: r4:dateTime,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.deceased[x]"
        },
        "generalPractitioner" : {
            name: "generalPractitioner",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.generalPractitioner"
        },
        "telecom" : {
            name: "telecom",
            dataType: r4:ContactPoint,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.telecom"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.text"
        },
        "communication" : {
            name: "communication",
            dataType: PatientCommunication,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.communication"
        },
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.identifier"
        },
        "address" : {
            name: "address",
            dataType: r4:Address,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.address"
        },
        "multipleBirthBoolean" : {
            name: "multipleBirthBoolean",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.multipleBirth[x]"
        },
        "active" : {
            name: "active",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.active"
        },
        "photo" : {
            name: "photo",
            dataType: r4:Attachment,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.photo"
        },
        "birthDate" : {
            name: "birthDate",
            dataType: r4:date,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.birthDate"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.contained"
        },
        "deceasedBoolean" : {
            name: "deceasedBoolean",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.deceased[x]"
        },
        "managingOrganization" : {
            name: "managingOrganization",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.managingOrganization"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.meta"
        },
        "multipleBirthInteger" : {
            name: "multipleBirthInteger",
            dataType: r4:integer,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.multipleBirth[x]"
        },
        "name" : {
            name: "name",
            dataType: r4:HumanName,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "Patient.name"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.implicitRules"
        },
        "maritalStatus" : {
            name: "maritalStatus",
            dataType: r4:CodeableConcept,
            min: 0,
            max: 1,
            isArray: false,
            path: "Patient.maritalStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/marital-status"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type AUBasePatient record {|
    *r4:DomainResource;

    RESOURCE_NAME_AUBASEPATIENT resourceType = RESOURCE_NAME_AUBASEPATIENT;

    BaseAUBasePatientMeta meta = {
        profile : [PROFILE_BASE_AUBASEPATIENT]
    };
    r4:Extension[] extension?;
    PatientGender gender?;
    r4:Extension[] modifierExtension?;
    PatientLink[] link?;
    r4:code language?;
    PatientContact[] contact?;
    r4:dateTime deceasedDateTime?;
    r4:Reference[] generalPractitioner?;
    r4:ContactPoint[] telecom?;
    string id?;
    r4:Narrative text?;
    PatientCommunication[] communication?;
    r4:Identifier[] identifier?;
    r4:Address[] address?;
    boolean multipleBirthBoolean?;
    boolean active?;
    r4:Attachment[] photo?;
    r4:date birthDate?;
    r4:Resource[] contained?;
    boolean deceasedBoolean?;
    r4:Reference managingOrganization?;
    r4:integer multipleBirthInteger?;
    r4:HumanName[] name?;
    r4:uri implicitRules?;
    r4:CodeableConcept maritalStatus?;
    never...;
|};

@r4:DataTypeDefinition {
    name: "BasePatientMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseAUBasePatientMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org.au/fhir/StructureDefinition/au-patient"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# FHIR PatientContact datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The period during which this contact person or organization is valid to be contacted relating to this patient.
# + address - An address expressed using postal conventions (as opposed to GPS or other location definition formats). This data type may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery. There are a variety of postal address formats defined around the world.
# + gender - Administrative Gender - the gender that the contact person is considered to have for administration and record keeping purposes.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + organization - Organization on behalf of which the contact is acting or for which the contact is working.
# + name - A name associated with the contact person.
# + telecom - A contact detail for the person, e.g. a telephone number or an email address.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + relationship - The nature of the relationship between the patient and the contact person.
@r4:DataTypeDefinition {
    name: "PatientContact",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Patient.contact.extension"
        },
        "period": {
            name: "period",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "The period during which this contact person or organization is valid to be contacted relating to this patient.",
            path: "Patient.contact.period"
        },
        "address": {
            name: "address",
            dataType: r4:Address,
            min: 0,
            max: 1,
            isArray: false,
            description: "An address expressed using postal conventions (as opposed to GPS or other location definition formats). This data type may be used to convey addresses for use in delivering mail as well as for visiting locations which might not be valid for mail delivery. There are a variety of postal address formats defined around the world.",
            path: "Patient.contact.address"
        },
        "gender": {
            name: "gender",
            dataType: PatientContactGender,
            min: 0,
            max: 1,
            isArray: false,
            description: "Administrative Gender - the gender that the contact person is considered to have for administration and record keeping purposes.",
            path: "Patient.contact.gender"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Patient.contact.modifierExtension"
        },
        "organization": {
            name: "organization",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            description: "Organization on behalf of which the contact is acting or for which the contact is working.",
            path: "Patient.contact.organization"
        },
        "name": {
            name: "name",
            dataType: r4:HumanName,
            min: 0,
            max: 1,
            isArray: false,
            description: "A name associated with the contact person.",
            path: "Patient.contact.name"
        },
        "telecom": {
            name: "telecom",
            dataType: r4:ContactPoint,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "A contact detail for the person, e.g. a telephone number or an email address.",
            path: "Patient.contact.telecom"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Patient.contact.id"
        },
        "relationship": {
            name: "relationship",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "The nature of the relationship between the patient and the contact person.",
            path: "Patient.contact.relationship"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type PatientContact record {|
    r4:Extension[] extension?;
    r4:Period period?;
    r4:Address address?;
    PatientContactGender gender?;
    r4:Extension[] modifierExtension?;
    r4:Reference organization?;
    r4:HumanName name?;
    r4:ContactPoint[] telecom?;
    string id?;
    r4:CodeableConcept[] relationship?;
|};

# PatientLinkType enum
public enum PatientLinkType {
   CODE_TYPE_REFER = "refer",
   CODE_TYPE_REPLACES = "replaces",
   CODE_TYPE_SEEALSO = "seealso",
   CODE_TYPE_REPLACED_BY = "replaced-by"
}

# FHIR PatientLink datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + other - The other patient resource that the link refers to.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + 'type - The type of link between this patient resource and another patient resource.
@r4:DataTypeDefinition {
    name: "PatientLink",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Patient.link.extension"
        },
        "other": {
            name: "other",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            description: "The other patient resource that the link refers to.",
            path: "Patient.link.other"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Patient.link.modifierExtension"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Patient.link.id"
        },
        "type": {
            name: "type",
            dataType: PatientLinkType,
            min: 1,
            max: 1,
            isArray: false,
            description: "The type of link between this patient resource and another patient resource.",
            path: "Patient.link.type"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type PatientLink record {|
    r4:Extension[] extension?;
    r4:Reference other;
    r4:Extension[] modifierExtension?;
    string id?;
    PatientLinkType 'type;
|};

# PatientContactGender enum
public enum PatientContactGender {
   CODE_GENDER_OTHER = "other",
   CODE_GENDER_FEMALE = "female",
   CODE_GENDER_MALE = "male",
   CODE_GENDER_UNKNOWN = "unknown"
}

# PatientGender enum
public enum PatientGender {
   CODE_GENDER_OTHER = "other",
   CODE_GENDER_FEMALE = "female",
   CODE_GENDER_MALE = "male",
   CODE_GENDER_UNKNOWN = "unknown"
}

# FHIR PatientCommunication datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + language - The ISO-639-1 alpha 2 code in lower case for the language, optionally followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in upper case; e.g. 'en' for English, or 'en-US' for American English versus 'en-EN' for England English.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + preferred - Indicates whether or not the patient prefers this language (over other languages he masters up a certain level).
@r4:DataTypeDefinition {
    name: "PatientCommunication",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "Patient.communication.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "Patient.communication.modifierExtension"
        },
        "language": {
            name: "language",
            dataType: r4:CodeableConcept,
            min: 1,
            max: 1,
            isArray: false,
            description: "The ISO-639-1 alpha 2 code in lower case for the language, optionally followed by a hyphen and the ISO-3166-1 alpha 2 code for the region in upper case; e.g. 'en' for English, or 'en-US' for American English versus 'en-EN' for England English.",
            path: "Patient.communication.language"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "Patient.communication.id"
        },
        "preferred": {
            name: "preferred",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "Indicates whether or not the patient prefers this language (over other languages he masters up a certain level).",
            path: "Patient.communication.preferred"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type PatientCommunication record {|
    r4:Extension[] extension?;
    r4:Extension[] modifierExtension?;
    r4:CodeableConcept language;
    string id?;
    boolean preferred?;
|};

