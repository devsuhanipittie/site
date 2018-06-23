<?php
require_once(dirname(__FILE__).'/Abstract.php');
class Aitoc_Aitpagecache_Session_Mysql_Pdo_mysql extends Aitoc_Aitpagecache_Session_Mysql_Abstract
{
    /**
     * Opens connection to db
     */
    protected function openConnection()
    {
        $connection = $this->_config->global->resources->default_setup->connection;
        $dbName = (string)$connection->dbname;
        list($host, $port) = explode(':', (string)$connection->host);
        $user = (string)$connection->username;
        $password = (string)$connection->password;
        $this->_db = new PDO(
            'mysql:dbname=' . $dbName . ';host=' . $host . ($port ? ';port=' . $port : ''),
            $user,
            $password
        );
    }

    /**
     * Reads session data from db
     *
     * @return string
     */
    protected function readSession()
    {
        $sql = 'SELECT `session_data` FROM `'.$this->_tableName.'` WHERE `session_id`=:session_id';
        $query = $this->_db->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
        $query->execute(array(':session_id'=>$this->_sessionId));
        return $query->fetchColumn();
    }

    /**
     * Closes connection to db
     */
    protected function closeConnection()
    {
        $this->_db = null;
    }
}
