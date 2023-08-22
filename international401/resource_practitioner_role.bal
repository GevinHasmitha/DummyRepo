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

public const string PROFILE_BASE_PRACTITIONERROLE = "http://hl7.org/fhir/StructureDefinition/PractitionerRole";
public const RESOURCE_NAME_PRACTITIONERROLE = "PractitionerRole";

# FHIR PractitionerRole resource record.
#
# + resourceType - The type of the resource describes
# + identifier - Business Identifiers that are specific to a role/location.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + period - The period during which the person is authorized to act as a practitioner in these role(s) for the organization.
# + specialty - Specific specialty of the practitioner.
# + code - Roles which this practitioner is authorized to perform for the organization.
# + practitioner - Practitioner that is able to provide the defined services for the organization.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + active - Whether this practitioner role record is in active use.
# + language - The base language in which the resource is written.
# + notAvailable - The practitioner is not available or performing this role during this period of time due to the provided reason.
# + availableTime - A collection of times the practitioner is available or performing this role at the location and/or healthcareservice.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + endpoint - Technical endpoints providing access to services operated for the practitioner with this role.
# + healthcareService - The list of healthcare services that this worker provides for this role's Organization/Location(s).
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + organization - The organization where the Practitioner performs the roles associated.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + location - The location(s) at which this practitioner provides care.
# + telecom - Contact details that are specific to the role/location/service.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
# + availabilityExceptions - A description of site availability exceptions, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as details in the available Times and not available Times.
@r4:ResourceDefinition {
    resourceType: "PractitionerRole",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.extension"
        },
        "period" : {
            name: "period",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.period"
        },
        "specialty" : {
            name: "specialty",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.specialty",
            valueSet: "http://hl7.org/fhir/ValueSet/c80-practice-codes"
        },
        "code" : {
            name: "code",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.code",
            valueSet: "http://hl7.org/fhir/ValueSet/practitioner-role"
        },
        "practitioner" : {
            name: "practitioner",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.practitioner"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.modifierExtension"
        },
        "active" : {
            name: "active",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.active"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "notAvailable" : {
            name: "notAvailable",
            dataType: PractitionerRoleNotAvailable,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.notAvailable"
        },
        "availableTime" : {
            name: "availableTime",
            dataType: PractitionerRoleAvailableTime,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.availableTime"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.contained"
        },
        "endpoint" : {
            name: "endpoint",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.endpoint"
        },
        "healthcareService" : {
            name: "healthcareService",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.healthcareService"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.meta"
        },
        "organization" : {
            name: "organization",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.organization"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.implicitRules"
        },
        "location" : {
            name: "location",
            dataType: r4:Reference,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.location"
        },
        "telecom" : {
            name: "telecom",
            dataType: r4:ContactPoint,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "PractitionerRole.telecom"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.text"
        },
        "availabilityExceptions" : {
            name: "availabilityExceptions",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "PractitionerRole.availabilityExceptions"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type PractitionerRole record {|
    *r4:DomainResource;

    RESOURCE_NAME_PRACTITIONERROLE resourceType = RESOURCE_NAME_PRACTITIONERROLE;

    BasePractitionerRoleMeta meta = {
        profile : [PROFILE_BASE_PRACTITIONERROLE]
    };
    r4:Identifier[] identifier?;
    r4:Extension[] extension?;
    r4:Period period?;
    r4:CodeableConcept[] specialty?;
    r4:CodeableConcept[] code?;
    r4:Reference practitioner?;
    r4:Extension[] modifierExtension?;
    boolean active?;
    r4:code language?;
    PractitionerRoleNotAvailable[] notAvailable?;
    PractitionerRoleAvailableTime[] availableTime?;
    r4:Resource[] contained?;
    r4:Reference[] endpoint?;
    r4:Reference[] healthcareService?;
    r4:Reference organization?;
    r4:uri implicitRules?;
    r4:Reference[] location?;
    r4:ContactPoint[] telecom?;
    string id?;
    r4:Narrative text?;
    string availabilityExceptions?;
    never...;
|};

@r4:DataTypeDefinition {
    name: "BasePractitionerRoleMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BasePractitionerRoleMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# FHIR PractitionerRoleAvailableTime datatype record.
#
# + allDay - Is this always available? (hence times are irrelevant) e.g. 24 hour service.
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + availableEndTime - The closing time of day. Note: If the AllDay flag is set, then this time is ignored.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
# + daysOfWeek - Indicates which days of the week are available between the start and end Times.
# + availableStartTime - The opening time of day. Note: If the AllDay flag is set, then this time is ignored.
@r4:DataTypeDefinition {
    name: "PractitionerRoleAvailableTime",
    baseType: (),
    elements: {
        "allDay": {
            name: "allDay",
            dataType: boolean,
            min: 0,
            max: 1,
            isArray: false,
            description: "Is this always available? (hence times are irrelevant) e.g. 24 hour service.",
            path: "PractitionerRole.availableTime.allDay"
        },
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "PractitionerRole.availableTime.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "PractitionerRole.availableTime.modifierExtension"
        },
        "availableEndTime": {
            name: "availableEndTime",
            dataType: r4:time,
            min: 0,
            max: 1,
            isArray: false,
            description: "The closing time of day. Note: If the AllDay flag is set, then this time is ignored.",
            path: "PractitionerRole.availableTime.availableEndTime"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "PractitionerRole.availableTime.id"
        },
        "daysOfWeek": {
            name: "daysOfWeek",
            dataType: PractitionerRoleAvailableTimeDaysOfWeek,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "Indicates which days of the week are available between the start and end Times.",
            path: "PractitionerRole.availableTime.daysOfWeek"
        },
        "availableStartTime": {
            name: "availableStartTime",
            dataType: r4:time,
            min: 0,
            max: 1,
            isArray: false,
            description: "The opening time of day. Note: If the AllDay flag is set, then this time is ignored.",
            path: "PractitionerRole.availableTime.availableStartTime"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type PractitionerRoleAvailableTime record {|
    boolean allDay?;
    r4:Extension[] extension?;
    r4:Extension[] modifierExtension?;
    r4:time availableEndTime?;
    string id?;
    PractitionerRoleAvailableTimeDaysOfWeek[] daysOfWeek?;
    r4:time availableStartTime?;
|};

# FHIR PractitionerRoleNotAvailable datatype record.
#
# + extension - May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + description - The reason that can be presented to the user as to why this time is not available.
# + during - Service is not available (seasonally or for a public holiday) from this date.
# + id - Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
@r4:DataTypeDefinition {
    name: "PractitionerRoleNotAvailable",
    baseType: (),
    elements: {
        "extension": {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
            path: "PractitionerRole.notAvailable.extension"
        },
        "modifierExtension": {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            description: "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
            path: "PractitionerRole.notAvailable.modifierExtension"
        },
        "description": {
            name: "description",
            dataType: string,
            min: 1,
            max: 1,
            isArray: false,
            description: "The reason that can be presented to the user as to why this time is not available.",
            path: "PractitionerRole.notAvailable.description"
        },
        "during": {
            name: "during",
            dataType: r4:Period,
            min: 0,
            max: 1,
            isArray: false,
            description: "Service is not available (seasonally or for a public holiday) from this date.",
            path: "PractitionerRole.notAvailable.during"
        },
        "id": {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            description: "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
            path: "PractitionerRole.notAvailable.id"
        }
    },
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type PractitionerRoleNotAvailable record {|
    r4:Extension[] extension?;
    r4:Extension[] modifierExtension?;
    string description;
    r4:Period during?;
    string id?;
|};

# PractitionerRoleAvailableTimeDaysOfWeek enum
public enum PractitionerRoleAvailableTimeDaysOfWeek {
   CODE_DAYSOFWEEK_THU = "thu",
   CODE_DAYSOFWEEK_TUE = "tue",
   CODE_DAYSOFWEEK_WED = "wed",
   CODE_DAYSOFWEEK_SAT = "sat",
   CODE_DAYSOFWEEK_FRI = "fri",
   CODE_DAYSOFWEEK_MON = "mon",
   CODE_DAYSOFWEEK_SUN = "sun"
}

