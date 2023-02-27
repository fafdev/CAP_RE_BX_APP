// schema objets for LRE.PropTech.APP
// v.01 2023.01 by LORUM Development Technology
namespace com.lorum4re.obj;

using {
    Currency,
    cuid,
    managed,
    sap
} from '@sap/cds/common';

using {com.lorum4re.cfg as cfg} from './lrebx-schema-cfg';
using {com.lorum4re.aux as aux} from './lrebx-schema-aux';


entity Sites : managed {
    key Code         : String(50);
        Company      : Association to one cfg.RECompanies;
        Description  : String;
        NodeCharact  : Composition of many CharactNode;
        NodeRoles    : Composition of many RolesNode;
        NodeMeasures : Composition of many MeasuresNode;
}

type Measures             : {
    Code        : Association to one aux.RECharacteristics;
    Description : String;
    Value       : Amount;
    DateInit    : Date;
    DateEnd     : Date;
}

entity Objects : managed, cuid {
    key Code         : String(50);
        Company      : Association to one cfg.RECompanies;
        Description  : String;
        Site         : Association to one Sites;
        NodeCharact  : Composition of many CharactNode;
        NodeRoles    : Composition of  many RolesNode;
        NodeMeasures : Composition of  many MeasuresNode;
}

entity Units : managed, cuid {
    key Code              : String(50);
        Company           : Association to one cfg.RECompanies;
        Description       : String;
        ExternalReference : String(50);
        TypeUnit          : TypeUnit;
        Status            : TypeUnitStatus;
        Size              : Measure;
        Consumption       : TypeEnergyEfficiency;
        Emisions          : TypeEnergyEfficiency;
        Site              : Association to one Sites;
        Objects           : Association to one Objects;
        NodeCharact       : Composition of many CharactNode;
        NodeRoles         : Composition of  many RolesNode;
        NodeMeasures      : Composition of  many MeasuresNode;
}

entity CharactNode : managed, cuid {
    Code        : Association to one aux.RECharacteristics;
    Description : String;
    Value       : Amount;
    DateInit    : Date;
    DateEnd     : Date;
}

entity RolesNode : managed, cuid {
    Code     : Association to one aux.RERoles;
    Contact  : Association to one cfg.BusinessPartner;
    DateInit : Date;
    DateEnd  : Date;
}

entity MeasuresNode : managed, cuid {
    Code     : Association to one aux.REMeasures;
    Measure  : Measure;
    DateInit : Date;
    DateEnd  : Date;
}

entity EquipmentsNode : managed, cuid {
    Code        : Association to one aux.REEquipment;
    ValueCost   : Amount;
    ValueSale   : Amount;
    DateInit    : Date;
    DateEnd     : Date;
    Image       : Association to many cfg.Images;
    Description : String;
}


// Types variaibles
type Amount               : {
    Value    : Decimal;
    Currency : Currency;
}

type Measure              : {
    Value    : Decimal;
    TypeUnit : String enum {
        ![Square meter];
        Units;
    }
}

// Types app support
type TypeObject           : String enum {
    Floor;
    Building;
    Area;
    Unit;
}

type TypeUnit             : String enum {
    Flat;
    Parking;
    Storage;
    Local;
    Room;
    Shop;
    Office;
    Place;
}

type TypeCommercialUnit   : String enum {
    ![For rent];
    ![For sales];
    ![For rent and sales];
}

type TypeContract         : String enum {
    ![For rent];
    ![For sales];
    ![For rent and sales];
    ![For Rent to Public Entity];
}

type TypeContractStatus   : String enum {
    ![In process];
    ![Activated];
    ![Canceled];
}

type TypeSites            : String enum {
    Promotion;
    Land;
    Building;
}

type TypeUnitStatus       : String enum {
    Stock;
    Blocked;
    Sold;
    Rented;
    Reserved;
}

type TypeEnergyEfficiency : {
    Value : Integer;
    Type  : String(1) enum {
        A;
        B;
        C;
        D;
        E;
        F;
        G;
    }
}