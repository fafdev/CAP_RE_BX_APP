// schema objets for LRE.PropTech.APP
// v.01 2023.01 by LORUM Development Technology
namespace com.lorum4re.cfg;

using {
    cuid,
    managed,
    sap.common.CodeList as CodeList,
    sap
} from '@sap/cds/common';

// Company object data
entity RECompanies : managed {
    key Code              : String(30) @(title : '{i18n>Code}');
        ExternalReference : String(30) @(title : '{i18n>ExternalReference}');
        Name              : String     @(title : '{i18n>Name}');
        Description       : String     @(title : '{i18n>Description}');
        AsCommercial      : Boolean    @(title : '{i18n>AsCommercial}');
        InvoicingType     : Association to one InvoicingType;
}

entity BusinessPartner : managed, cuid {
    key Code              : String(30);
        TypePartner       : Association to many TypePartner;
        AsPerson          : Boolean;
        FormaetedName     : String;
        AttachmentsFolder : Association to many cfg.Attachments;
};

entity TypePartner          : CodeList {
    key Code              : Integer;
};

entity Attachments : managed, cuid {
    Name        : String(50);
    Description : String;
    Typecode    : Association to one AttachTypeCode;
    FileContent : LargeBinary;
    FileSize    : Integer;
    FileBlocked : Boolean;
}

entity AttachTypeCode : CodeList {
    key Code : String(4);
}


entity Images : managed, cuid {
    Image     : LargeBinary;
    ImageSize : Decimal;
}


entity InvoicingType  : CodeList  {
    key Code : Integer;
}