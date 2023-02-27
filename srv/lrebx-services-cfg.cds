using {com.lorum4re.cfg as cfgserv} from '../db/lrebx-schema-cfg';

service CfgCatalogService {
    entity RECompanies   as projection on cfgserv.RECompanies;
    @readonly entity InvoicingType as projection on cfgserv.InvoicingType;
    @readonly entity TypePartner as projection on cfgserv.TypePartner;
}
