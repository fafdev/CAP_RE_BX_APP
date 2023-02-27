using CfgCatalogService as service from '../../srv/lrebx-services-cfg';

@odata.draft.enabled
annotate service.RECompanies with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Value : Code,
    },
    {
        $Type : 'UI.DataField',
        Value : Name,
    },
    {
        $Type : 'UI.DataField',
        Value : Description,
    },
    {
        $Type : 'UI.DataField',
        Value : ExternalReference,
    },
    {
        $Type : 'UI.DataField',
        Value : AsCommercial,
    },
    {
        $Type : 'UI.DataField',
        Value : InvoicingType_Code,
    },
]);

annotate service.RECompanies with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : Code,
            },
            {
                $Type : 'UI.DataField',
                Value : ExternalReference,
            },
            {
                $Type : 'UI.DataField',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Value : AsCommercial,
            },
            {
                $Type : 'UI.DataField',
                Value : InvoicingType_Code,
            },
        ],
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'General Information',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.RECompanies with @(UI.SelectionFields : [
    Code,
    Name,
]);

annotate service.RECompanies with @(UI.SelectionPresentationVariant #table : {
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

annotate service.RECompanies with {
    Code @Common.FieldControl : #Mandatory;
};

annotate service.RECompanies with @(UI.HeaderInfo : {
    Title          : {
        $Type : 'UI.DataField',
        Value : Description,
    },
    TypeName       : '',
    TypeNamePlural : '',
    TypeImageUrl   : 'sap-icon://building',
});

annotate service.RECompanies with @(UI.SelectionPresentationVariant #table1 : {
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

annotate service.RECompanies with {
    Name @Common.FieldControl : #Mandatory
};

annotate service.RECompanies with {
    InvoicingType @Common.ValueListWithFixedValues : true
};

annotate service.InvoicingType with {
    Code @Common.Text : {
        $value                 : name,
        ![@UI.TextArrangement] : #TextFirst,
    }
};

annotate service.RECompanies with {
    InvoicingType @Common.Text : {
        $value                 : InvoicingType.name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
