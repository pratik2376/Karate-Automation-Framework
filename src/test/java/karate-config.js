function fn() {
    const ENV = karate.env ? karate.env.toLowerCase() : 'local';
     IS_LOCAL= ENV =='local';
     IS_DEV= ENV == 'dev';
     const LOCAL_DATA = 'classpath:feature/data/LOCAL_DATA.feature';
     const DEV_DATA = 'classpath:feature/data/DEV_DATA.feature';
     let DATA_FEATURE = IS_LOCAL? LOCAL_DATA :DEV_DATA
     const DATA = karate.callSingle(DATA_FEATURE)


    var config ={
        DATA,
        ENV,
        IS_DEV,
        IS_LOCAL,
        mysqlDriver: 'tbd',
        urlPath: 'tbd',
        COMMONS: 'classpath:feature/common/common.feature',

        ENDPOINTS: {
            CALL: 'classpath:feature/api/CallService/PostUserApi.feature',
            SMS: 'classpath:feature/api/SmsService/GetUserApi.feature'
        },

        //Database scripts

        UTIL_FILES:{
            // A: 'classpath:feature/utils/a.feature',
            // B: 'classpath:feature/utils/b.feature'
        }
    };

    if (config.IS_LOCAL) {
        karate.configure('ssl', {trustAll:true});
        config.DATABASE ={
            //database related creds. url, username, password details.
        };
        config.SERVICES = {
            CALL: {
                url: 'https://reqres.in/api/',
                authorizationToken: 'tbd'
            },
            SMS: {
                url: 'https://reqres.in/api/',
                authorizationToken: 'tbd'
            }
        };
        
    }
    else if (config.IS_DEV)
    {
        karate.configure('ssl', {trustAll:true});
        config.DATABASE ={
            //database related creds. url, username, password details.
        };
        config.SERVICES = {
            CALL: {
                url: 'https://reqres.inter/',
                authorizationToken: 'tbd'
            },
            SMS: {
                url: 'https://reqres.inter/',
                authorizationToken: 'tbd'
            }
        };
    }
        
   //wait for 80 sec for server response.
        
  karate.configure('connectTimeout',80000);
  karate.configure('readTimeout',80000);

   //karate.configure('logPrettyResponse', true);

  return config;
}   