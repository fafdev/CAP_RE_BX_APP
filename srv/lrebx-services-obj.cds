using {com.lorum4re.obj as objserv} from '../db/lrebx-schema-obj';

service ObjCatalogService {
    entity RESites          as projection on objserv.Sites;
}

