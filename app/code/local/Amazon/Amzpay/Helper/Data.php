<?php
class Amazon_Amzpay_Helper_Data extends Mage_Core_Helper_Abstract
{
	const AMZPAY_ACTIVE				 = 'payment/amzpay/active';
	const AMZPAY_TITLE				 = 'payment/amzpay/title';
	const AMZPAY_MERCHANTID			 = 'payment/amzpay/merchantId';
	const AMZPAY_ACCESSKEY			 = 'payment/amzpay/accessKey';
	const AMZPAY_SECRETKEY			 = 'payment/amzpay/secretKey';
	const AMZPAY_ORDER_STATUS		 = 'payment/amzpay/order_status';
	const AMZPAY_ORDER_STATUS_AFTER	 = 'payment/amzpay/order_status_after';
	const AMZPAY_SORT			 	 = 'payment/amzpay/sort_order';
	const AMZPAY_IPN_URL			 = 'payment/amzpay/ipn_haldler';
	const AMZPAY_WHITELIST_URL		 = 'payment/amzpay/whitelist_url';
	const AMZPAY_API_VERIFY			 = 'payment/amzpay/api_sign_verify_endpoint';
	const AMZPAY_IPS				 = 'payment/amzpay/allow_ips';
	const AMZPAY_ENABLE_TIMEOUT		 = 'payment/amzpay/enable_timeout';
	const AMZPAY_CANCEL_TIME		 = 'payment/amzpay/cancel_time';
	const AMZPAY_REDIRECT_USERURL    = 'payment/amzpay/redirect_userurl';
	const AMZPAY_EXCLUSION			 = 'payment/amzpay/exclusion';
	const AMZPAY_RETRY				 = 'payment/amzpay/retry_payment';
	const AMZPAY_MODE				 = 'payment/amzpay/mode';
	const AMZPAY_CATEGORY			 = 'payment/amzpay/exclusion_category';
	const AMZPAY_PRODUCT			 = 'payment/amzpay/exclusion_product';
	const AMZPAY_SWITCH				 = 'payment/amzpay/switch_ipn_cron';
	const AMZPAY_LOG				 = 'payment/amzpay/write_log';
	const AMZPAY_CRON				 = 'payment/amzpay/enable_cron';
	const AMZPAY_CRON_TIME			 = 'payment/amzpay/cron_time';
	const AMZPAY_INVOICE			 = 'payment/amzpay/order_invoice';
	const AMZPAY_CRON_PROCESSING	 = 'payment/amzpay/cron_processing';
	const AMZPAY_PENDING			 = 'Pending';
	const AMZPAY_DECLINED			 = 'Declined';
	const AMZPAY_COMPLETED			 = 'Completed';

	private $store = null;
	public function _getPendingPaymentStatus()
    {
        /*if (version_compare(Mage::getVersion(), '1.4.0', '<')) {
            return Mage_Sales_Model_Order::STATE_HOLDED;
        }*/
        return Mage_Sales_Model_Order::STATE_PENDING_PAYMENT;
    }
	public function checkAllowIps($quote = null){
		if($quote == null) return false;
		$ips = $this->getAmzpayConfig('amzpay_ips');
		$ips = array_filter(explode(',', $ips));
		if(empty($ips)) return true;
		if(in_array($quote->getRemoteIp(), $ips)) return true;
		return false;
	}
	public function getCurrentStore(){
		if($this->store != null)
			return $this->store;
		return $this->store = Mage::app()->getStore()->getStoreId();
	}
	/* Amzpay SellerId */
	public function getAmzpayConfig($key = null)
    {
    	switch ($key) {
    		case 'amzpay_active':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_ACTIVE,$this->store);
				break;
			case 'amzpay_title':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_TITLE,$this->store);
				break;
			case 'amzpay_merchantid':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_MERCHANTID,$this->store);
				break;
			case 'amzpay_accesskey':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_ACCESSKEY,$this->store);
				break;
			case 'amzpay_secretkey':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_SECRETKEY,$this->store);
				break;
			case 'amzpay_order_status':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_ORDER_STATUS,$this->store);
				break;
			case 'amzpay_order_status_after':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_ORDER_STATUS_AFTER,$this->store);
				break;
			case 'amzpay_sort':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_SORT,$this->store);
				break;
			case 'amzpay_ipn_url':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_IPN_URL,$this->store);
				break;
			case 'amzpay_whitelist_url':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_WHITELIST_URL,$this->store);
				break;
			case 'amzpay_api_verify':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_API_VERIFY,$this->store);
				break;
			case 'amzpay_ips':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_IPS,$this->store);
				break;
			case 'amzpay_enable_timeout':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_ENABLE_TIMEOUT,$this->store);
				break;
			case 'amzpay_cancel_time':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_CANCEL_TIME,$this->store);
				break;
			case 'amzpay_redirect_userurl':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_REDIRECT_USERURL,$this->store);
				break;
			case 'amzpay_exclusion':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_EXCLUSION,$this->store);
				break;
			case 'amzpay_retry':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_RETRY,$this->store);
				break;
			case 'amzpay_mode':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_MODE,$this->store);
				break;
			case 'amzpay_category':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_CATEGORY,$this->store);
				break;
			case 'amzpay_product':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_PRODUCT,$this->store);
				break;
			case 'amzpay_switch':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_SWITCH,$this->store);
				break;
			case 'amzpay_log':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_LOG,$this->store);
				break;
			case 'amzpay_cron':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_CRON,$this->store);
				break;
			case 'amzpay_cron_time':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_CRON_TIME,$this->store);
				break;
			case 'amzpay_invoice':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_INVOICE,$this->store);
				break;
			case 'amzpay_cron_processing':
				return (string) Mage::getStoreConfig(Amazon_Amzpay_Helper_Data::AMZPAY_CRON_PROCESSING,$this->store);
				break;
			default:
    			$this->amzpayLog('Path invalid or not specified');
    			break;
    	}
    }
    public function setAmzpayConfig($key,$value)
    {
    	$configkey = null;
    	switch ($key) {
    		case 'amzpay_cron_processing':
				$configkey = Amazon_Amzpay_Helper_Data::AMZPAY_CRON_PROCESSING;
				break;
			default:
				break;
		}
		if( $configkey !== null) Mage::getConfig()->saveConfig($configkey, $value)->cleanCache();
	}
    public function amzpayLog($message) {
    	if($this->getAmzpayConfig('amzpay_log')  == 1)
			Mage::log(print_r($message, 1), null,$this->logFileName());
    }
    public function logFileName(){
    	$currentTimestamp = Mage::getModel('core/date')->timestamp(time());	
		$startdatestamp = strtotime('Last Sunday',$currentTimestamp);
		$startdate = date("d-m-Y",$startdatestamp);
		$enddatestamp = $startdatestamp + 604800;
		$enddate = date("d-m-Y",$enddatestamp);
		return $file_log = "amazon-".$startdate."to".$enddate.".log";
    }
}