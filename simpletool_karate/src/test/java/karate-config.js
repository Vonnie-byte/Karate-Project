function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    baseUrl: 'https://api.thedogapi.com/v1',
    apiKey: 'live_SkLDGPsytN4rD7iV4GCJo24sGINWNzB3DaTRvFpEfraxPUT85a9FnWFC312M8t39'


  }

  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}