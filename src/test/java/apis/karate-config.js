function fn() {   
  var config = { // base config JSON
    baseUrl: 'https://reqres.in/api',
    sessionUrl: '',
    quoteUrl : ''
  };
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}