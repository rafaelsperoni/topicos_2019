<?php
/**
 * Classe de Conexão PostgreSQL
 */

class Database
{
    const HOST = 'localhost';
    const DATABASE = 'cidades';
    const USER = 'postgres';
    const PASSWORD = 'postgres';

    public static $conexao;

    public static function getConexao(){
        $dsn = 'pgsql:host='.self::HOST.';port=5432;dbname='.self::DATABASE;
        try{
            self::$conexao = new PDO($dsn, self::USER, self::PASSWORD);
            self::$conexao->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
            return self::$conexao;
        }catch (PDOException $e){
            throw new PDOException($e);
        }
    }
}