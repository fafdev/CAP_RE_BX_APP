using AuxCatalogService as service from '../../srv/lrebx-services-aux';
@odata.draft.enabled
annotate service.RECharacteristics with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Code,
        },
        {
            $Type : 'UI.DataField',
            Value : Description,
        },
        {
            $Type : 'UI.DataField',
            Value : InSites,
        },
        {
            $Type : 'UI.DataField',
            Value : InObjects,
        },
        {
            $Type : 'UI.DataField',
            Value : InUnits,
        },
    ]
);
annotate service.RECharacteristics with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Code,
            },
            {
                $Type : 'UI.DataField',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Value : InSites,
            },
            {
                $Type : 'UI.DataField',
                Value : InObjects,
            },
            {
                $Type : 'UI.DataField',
                Value : InUnits,
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

annotate service.RECharacteristics with @(
    UI.SelectionFields : [
        Code,
        Description,
    ]
);
annotate service.RECharacteristics with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : Code,
                    Descending : false,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
annotate service.RECharacteristics with {
    Code @Common.FieldControl : #Mandatory
};
annotate service.RECharacteristics with {
    Description @Common.FieldControl : #Mandatory
};
annotate service.RECharacteristics with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : Description,
        },
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : 'sap-icon://sap-box',
    }
);
annotate service.RECharacteristics with @(
    UI.SelectionPresentationVariant #table1 : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
            SortOrder : [
                {
                    $Type : 'Common.SortOrderType',
                    Property : Code,
                    Descending : false,
                },
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
