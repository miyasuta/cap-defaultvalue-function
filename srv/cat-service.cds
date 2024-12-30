using my.bookshop as my from '../db/schema';

service CatalogService {
    @odata.draft.enabled
    entity Books as projection on my.Books;
    function getDefaultValues() returns Books;
}

annotate CatalogService.Books with @(Common.DefaultValuesFunction: 'getDefaultValues');