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

public const string PROFILE_BASE_APPOINTMENTRESPONSE = "http://hl7.org/fhir/StructureDefinition/AppointmentResponse";
public const RESOURCE_NAME_APPOINTMENTRESPONSE = "AppointmentResponse";

# FHIR AppointmentResponse resource record.
#
# + resourceType - The type of the resource describes
# + identifier - This records identifiers associated with this appointment response concern that are defined by business processes and/ or used to refer to it when a direct URL reference to the resource itself is not appropriate.
# + extension - May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
# + modifierExtension - May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).
# + participantType - Role of participant in the appointment.
# + 'start - Date/Time that the appointment is to take place, or requested new start time.
# + appointment - Appointment that this response is replying to.
# + language - The base language in which the resource is written.
# + actor - A Person, Location, HealthcareService, or Device that is participating in the appointment.
# + contained - These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + comment - Additional comments about the appointment.
# + end - This may be either the same as the appointment request to confirm the details of the appointment, or alternately a new time to request a re-negotiation of the end time.
# + participantStatus - Participation status of the participant. When the status is declined or tentative if the start/end times are different to the appointment, then these times should be interpreted as a requested time change. When the status is accepted, the times can either be the time of the appointment (as a confirmation of the time) or can be empty.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + text - A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it 'clinically safe' for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.
@r4:ResourceDefinition {
    resourceType: "AppointmentResponse",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/AppointmentResponse",
    elements: {
        "identifier" : {
            name: "identifier",
            dataType: r4:Identifier,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AppointmentResponse.identifier"
        },
        "extension" : {
            name: "extension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AppointmentResponse.extension"
        },
        "modifierExtension" : {
            name: "modifierExtension",
            dataType: r4:Extension,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AppointmentResponse.modifierExtension"
        },
        "participantType" : {
            name: "participantType",
            dataType: r4:CodeableConcept,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AppointmentResponse.participantType",
            valueSet: "http://hl7.org/fhir/ValueSet/encounter-participant-type"
        },
        "start" : {
            name: "start",
            dataType: r4:instant,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.start"
        },
        "appointment" : {
            name: "appointment",
            dataType: r4:Reference,
            min: 1,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.appointment"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "actor" : {
            name: "actor",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.actor"
        },
        "contained" : {
            name: "contained",
            dataType: r4:Resource,
            min: 0,
            max: int:MAX_VALUE,
            isArray: true,
            path: "AppointmentResponse.contained"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.implicitRules"
        },
        "comment" : {
            name: "comment",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.comment"
        },
        "end" : {
            name: "end",
            dataType: r4:instant,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.end"
        },
        "participantStatus" : {
            name: "participantStatus",
            dataType: AppointmentResponseParticipantStatus,
            min: 1,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.participantStatus",
            valueSet: "http://hl7.org/fhir/ValueSet/participationstatus|4.0.1"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.id"
        },
        "text" : {
            name: "text",
            dataType: r4:Narrative,
            min: 0,
            max: 1,
            isArray: false,
            path: "AppointmentResponse.text"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type AppointmentResponse record {|
    *r4:DomainResource;

    RESOURCE_NAME_APPOINTMENTRESPONSE resourceType = RESOURCE_NAME_APPOINTMENTRESPONSE;

    BaseAppointmentResponseMeta meta = {
        profile : [PROFILE_BASE_APPOINTMENTRESPONSE]
    };
    r4:Identifier[] identifier?;
    r4:Extension[] extension?;
    r4:Extension[] modifierExtension?;
    r4:CodeableConcept[] participantType?;
    r4:instant 'start?;
    r4:Reference appointment;
    r4:code language?;
    r4:Reference actor?;
    r4:Resource[] contained?;
    r4:uri implicitRules?;
    string comment?;
    r4:instant end?;
    AppointmentResponseParticipantStatus participantStatus;
    string id?;
    r4:Narrative text?;
    never...;
|};

@r4:DataTypeDefinition {
    name: "BaseAppointmentResponseMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseAppointmentResponseMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/AppointmentResponse"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

# AppointmentResponseParticipantStatus enum
public enum AppointmentResponseParticipantStatus {
   CODE_PARTICIPANTSTATUS_DECLINED = "declined",
   CODE_PARTICIPANTSTATUS_NEEDS_ACTION = "needs-action",
   CODE_PARTICIPANTSTATUS_ACCEPTED = "accepted",
   CODE_PARTICIPANTSTATUS_TENTATIVE = "tentative"
}

