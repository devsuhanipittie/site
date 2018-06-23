<?php
abstract class Aitoc_Aitpagecache_Session_Mysql_Abstract
{
    protected $_savePath;
    protected $_sessionName;
    protected $_config;
    protected $_sessionId;
    protected $_db;
    protected $_tableName;

    /**
     * Constructor. Saves config to inner property.
     *
     * @param $config
     */
    public function __construct($config)
    {
        $this->_config = $config;
        $this->_tableName = (string)$this->_config->global->resources->db->table_prefix.'core_session';
    }

    /**
     * Open session handler
     *
     * @param $savePath
     * @param $sessionName
     * @return bool
     */
    public function open($savePath, $sessionName)
    {
        $this->_savePath = $savePath;
        $this->_sessionName = $sessionName;
        return true;
    }

    /**
     * Close session handler
     *
     * @return bool
     */
    public function close()
    {
        return true;
    }

    /**
     * Read session handler
     * Opens connection to db, reads session data from it, closes connection to db and returns the session data
     *
     * @param $sessionId
     * @return mixed
     */
    public function read($sessionId)
    {
        $this->_sessionId = $sessionId;
        $this->openConnection();
        $data = $this->readSession();
        $this->closeConnection();
        return $data;
    }

    /**
     * Write session handler
     * Currently does nothing
     *
     * @param $sessionId ignored
     * @param $data ignored
     */
    public function write($sessionId, $data)
    {

    }

    /**
     * Destroy session handler
     *
     * @param $sessionId ignored
     * @return bool
     */
    public function destroy($sessionId)
    {
        return true;
    }

    /**
     * gc session handler
     *
     * @param $lifetime ignored
     * @return bool
     */
    public function gc($lifetime)
    {
        return true;
    }

    /**
     * Sets the session handlers
     */
    public function setSaveHandler()
    {
        session_set_save_handler (array($this,'open'), array($this,'close'), array($this,'read'), array($this,'write'), array($this,'destroy'), array($this,'gc'));
    }

    /**
     * Opens connection to db
     */
    abstract protected function openConnection();

    /**
     * Reads session data from db
     *
     * @return string
     */
    abstract protected function readSession();

    /**
     * Closes connection to db
     */
    abstract protected function closeConnection();

}