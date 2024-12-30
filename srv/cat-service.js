const cds = require('@sap/cds')

module.exports = class CatalogService extends cds.ApplicationService { init() {

  const { Books } = cds.entities('CatalogService')

  this.on ('getDefaultValues', async (req) => {
    //select max ID from Books
    const { ID } = await SELECT.one`ID`.from(Books).orderBy`ID desc`
    return { ID: ID + 1 }
  })

  return super.init()
}}
