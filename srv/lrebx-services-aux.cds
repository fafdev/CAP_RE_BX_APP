using {com.lorum4re.aux as auxserv} from '../db/lrebx-schema-aux';
using {com.lorum4re.obj as db} from '../db/lrebx-schema-obj';

service AuxCatalogService {
    entity REDates           as projection on auxserv.REDates;
    entity RECharacteristics as projection on auxserv.RECharacteristics;
    entity REMeasures        as projection on auxserv.REMeasures;
    entity REEquipment       as projection on auxserv.REEquipment;
    entity REInfrastructures as projection on auxserv.REInfrastructures;
    entity RERoles           as projection on auxserv.RERoles;
}
