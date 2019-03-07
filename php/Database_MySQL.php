<?php
/**
 * Classe de Conexao com MySQL
 */

class Database
{
    const HOST = 'localhost';
    const DATABASE = 'municipios';
    const USER = 'municipios';
    const PASSWORD = 'municipios';

    public static $conexao;

    public static function getConexao(){
        $dsn = 'mysql://host='.self::HOST.';dbname='.self::DATABASE;
        try{
            self::$conexao = new PDO($dsn, self::USER, self::PASSWORD);
            self::$conexao->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
            return self::$conexao;
        }catch (PDOException $e){
            throw new PDOException($e);
        }
    }
}