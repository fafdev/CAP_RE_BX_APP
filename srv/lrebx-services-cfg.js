const cds = require("@sap/cds");

class CfgCatalogService extends cds.ApplicationService {
    async init() {
        const { RECompanies, InvoicingType, TypePartner } = this.entities()
        this.before("READ", "RECompanies", async (req) => {

        });
        this.before("READ", "InvoicingType", async (req) => {

        });

        this.before("READ", "TypePartner", async (req) => {

        });

        await super.init()
    }
}

module.exports = { CfgCatalogService }