/**
  * Criar usuário para acessar o banco de dados
  */
CREATE USER operator with encrypted password '123456' CREATEDB;

/**
  * Criar usuário para executar apenas migrations no banco de dados
  */
CREATE USER migration with encrypted password '123456' CREATEDB;

/**
  * Base de dados para o serviço
  */
CREATE DATABASE service OWNER operator;
GRANT ALL PRIVILEGES ON DATABASE service TO migration;