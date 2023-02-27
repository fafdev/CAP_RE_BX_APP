using CfgCatalogService as service from '../../srv/lrebx-services-cfg';
@odata.draft.enabled
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
annotate service.BusinessPartner with @(UI.SelectionFields : [
    Code,
    FormatedName,
]);

annotate service.BusinessPartner with @(UI.SelectionPresentationVariant #table : {
    $Type               : 'UI.SelectionPresentationVariantType',
    PresentationVariant : {
        $Type          : 'UI.PresentationVariantType',
        Visualizations : ['@UI.LineItem', ],
        SortOrder      : [{
            $Type      : 'Common.SortOrderType',
            Property   : Code,
            Descending : false,
        }, ],
    },
    SelectionVariant    : {
        $Type         : 'UI.SelectionVariantType',
        SelectOptions : [],
    },
});

annotate service.BusinessPartner with {
    Code @Common.FieldControl : #Mandatory;
};

annotate service.BusinessPartner with @(UI.HeaderInfo : {
    Title          : {
        $Type : 'UI.DataField',
        Value : FormatedName,
    },
    TypeName       : '',
    TypeNamePlural : '',
    TypeImageUrl   : 'sap-icon://building',
});

annotate service.BusinessPartner with @(UI.SelectionPresentationVariant #table1 : {
    $Type               : 'UI.SelectionPresentationVariantType',
    PresentationVariant : {
        $Type          : 'UI.PresentationVariantType',
        Visualizations : ['@UI.LineItem', ],
        SortOrder      : [{
            $Type      : 'Common.SortOrderType',
            Property   : Code,
            Descending : false,
        }, ],
    },
    SelectionVariant    : {
        $Type         : 'UI.SelectionVariantType',
        SelectOptions : [],
    },
});

annotate service.BusinessPartner with {
    FormatedName @Common.FieldControl : #Mandatory
};
annotate service.BusinessPartner with {
    TypePartner @Common.ValueListWithFixedValues : false
};


annotate service.TypePartner with {
    Code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
