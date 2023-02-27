const cds = require("@sap/cds");

class AuxCatalogService extends cds.ApplicationService { async init(){
    const { REDates, RECharacteristics, REMeasures, RERoles, REInfrastructures, REEquipment} = this.entities()
    this.before("READ", "REDates", async (req) => {

    });

    this.before("READ", "RECharacteristics", async (req) => {

    });

    this.before("READ", "REMeasures", async (req) => {

    });

    this.before("READ", "RERoles", async (req) => {

    });

    this.before("READ", "REInfrastructures", async (req) => {

    });

    this.before("READ", "REEquipment", async (req) => {

    });
    await super.init()
}}

module.exports = { AuxCatalogService }