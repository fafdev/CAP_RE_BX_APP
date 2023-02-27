const cds = require("@sap/cds");

class ObjCatalogService extends cds.ApplicationService { async init(){
    const { RESites } = this.entities()
    this.before("READ", "RESites", async (req) => {

    });

    await super.init()
}}

module.exports = { ObjCatalogService }