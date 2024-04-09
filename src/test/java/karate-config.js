function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
   baseUrl:'https://api.thedogapi.com/v1/',
   key:'live_Vai9gmBWwbA2mvtn5RF4ZQ4OVoai1gVudThlYcU7aw9SXoQOYt4QwQ6fO9fNQjvS'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}