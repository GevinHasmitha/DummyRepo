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

public const string PROFILE_BASE_BINARY = "http://hl7.org/fhir/StructureDefinition/Binary";
public const RESOURCE_NAME_BINARY = "Binary";

# FHIR Binary resource record.
#
# + resourceType - The type of the resource describes
# + data - The actual content, base64 encoded.
# + meta - The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
# + implicitRules - A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
# + language - The base language in which the resource is written.
# + id - The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
# + securityContext - This element identifies another resource that can be used as a proxy of the security sensitivity to use when deciding and enforcing access control rules for the Binary resource. Given that the Binary resource contains very few elements that can be used to determine the sensitivity of the data and relationships to individuals, the referenced resource stands in as a proxy equivalent for this purpose. This referenced resource may be related to the Binary (e.g. Media, DocumentReference), or may be some non-related Resource purely as a security proxy. E.g. to identify that the binary resource relates to a patient, and access should only be granted to applications that have access to the patient.
# + contentType - MimeType of the binary content represented as a standard MimeType (BCP 13).
@r4:ResourceDefinition {
    resourceType: "Binary",
    baseType: r4:DomainResource,
    profile: "http://hl7.org/fhir/StructureDefinition/Binary",
    elements: {
        "data" : {
            name: "data",
            dataType: r4:base64Binary,
            min: 0,
            max: 1,
            isArray: false,
            path: "Binary.data"
        },
        "meta" : {
            name: "meta",
            dataType: r4:Meta,
            min: 0,
            max: 1,
            isArray: false,
            path: "Binary.meta"
        },
        "implicitRules" : {
            name: "implicitRules",
            dataType: r4:uri,
            min: 0,
            max: 1,
            isArray: false,
            path: "Binary.implicitRules"
        },
        "language" : {
            name: "language",
            dataType: r4:code,
            min: 0,
            max: 1,
            isArray: false,
            path: "Binary.language",
            valueSet: "http://hl7.org/fhir/ValueSet/languages"
        },
        "id" : {
            name: "id",
            dataType: string,
            min: 0,
            max: 1,
            isArray: false,
            path: "Binary.id"
        },
        "securityContext" : {
            name: "securityContext",
            dataType: r4:Reference,
            min: 0,
            max: 1,
            isArray: false,
            path: "Binary.securityContext"
        },
        "contentType" : {
            name: "contentType",
            dataType: r4:code,
            min: 1,
            max: 1,
            isArray: false,
            path: "Binary.contentType",
            valueSet: "http://hl7.org/fhir/ValueSet/mimetypes|4.0.1"
        }
    },
    serializers: {
        'xml: r4:fhirResourceXMLSerializer,
        'json: r4:fhirResourceJsonSerializer
    }
}
public type Binary record {|
    *r4:DomainResource;

    RESOURCE_NAME_BINARY resourceType = RESOURCE_NAME_BINARY;

    BaseBinaryMeta meta = {
        profile : [PROFILE_BASE_BINARY]
    };
    r4:base64Binary data?;
    r4:uri implicitRules?;
    r4:code language?;
    string id?;
    r4:Reference securityContext?;
    r4:code contentType;
    never...;
|};

@r4:DataTypeDefinition {
    name: "BaseBinaryMeta",
    baseType: r4:Meta,
    elements: {},
    serializers: {
        'xml: r4:complexDataTypeXMLSerializer,
        'json: r4:complexDataTypeJsonSerializer
    }
}
public type BaseBinaryMeta record {|
    *r4:Meta;

    //Inherited child element from "Element" (Redefining to maintain order when serialize) (START)
    string id?;
    r4:Extension[] extension?;
    //Inherited child element from "Element" (Redefining to maintain order when serialize) (END)

    r4:id versionId?;
    r4:instant lastUpdated?;
    r4:uri 'source?;
    r4:canonical[] profile = ["http://hl7.org/fhir/StructureDefinition/Binary"];
    r4:Coding[] security?;
    r4:Coding[] tag?;
|};

