using CfgCatalogService as service from '../../srv/lrebx-services-cfg';

annotate service.BusinessPartner with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Code',
            Value : Code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AsPerson',
            Value : AsPerson,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FormatedName',
            Value : FormatedName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TypePartner_Code',
            Value : TypePartner_Code,
        },
    ]
);
annotate service.BusinessPartner with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Code',
                Value : Code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AsPerson',
                Value : AsPerson,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FormatedName',
                Value : FormatedName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TypePartner_Code',
                Value : TypePartner_Code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
