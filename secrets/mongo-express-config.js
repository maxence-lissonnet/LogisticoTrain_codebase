export default {
  mongodb: {
    // N'oublie pas de mettre ton vrai mot de passe à la place de admin123
    connectionString: 'mongodb://root:admin123@nosqldatabase:27017/',
    admin: true,
  },
  site: {
    host: '0.0.0.0',
    baseUrl: '/',
    port: 8081,
  },
  auth: {
    username: 'admin',
    password: 'pass',
  },
};