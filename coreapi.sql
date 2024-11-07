-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.39 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 coreapi 的数据库结构
CREATE DATABASE IF NOT EXISTS `coreapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coreapi`;

-- 导出  表 coreapi.casbin_rule 结构
CREATE TABLE IF NOT EXISTS `casbin_rule` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.casbin_rule 的数据：~199 rows (大约)
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES
	(2, 'p', '888', '/api/createApi', 'POST', '', '', ''),
	(5, 'p', '888', '/api/deleteApi', 'POST', '', '', ''),
	(8, 'p', '888', '/api/deleteApisByIds', 'DELETE', '', '', ''),
	(11, 'p', '888', '/api/enterSyncApi', 'POST', '', '', ''),
	(7, 'p', '888', '/api/getAllApis', 'POST', '', '', ''),
	(4, 'p', '888', '/api/getApiById', 'POST', '', '', ''),
	(10, 'p', '888', '/api/getApiGroups', 'GET', '', '', ''),
	(3, 'p', '888', '/api/getApiList', 'POST', '', '', ''),
	(12, 'p', '888', '/api/ignoreApi', 'POST', '', '', ''),
	(9, 'p', '888', '/api/syncApi', 'GET', '', '', ''),
	(6, 'p', '888', '/api/updateApi', 'POST', '', '', ''),
	(13, 'p', '888', '/authority/copyAuthority', 'POST', '', '', ''),
	(15, 'p', '888', '/authority/createAuthority', 'POST', '', '', ''),
	(16, 'p', '888', '/authority/deleteAuthority', 'POST', '', '', ''),
	(17, 'p', '888', '/authority/getAuthorityList', 'POST', '', '', ''),
	(18, 'p', '888', '/authority/setDataAuthority', 'POST', '', '', ''),
	(14, 'p', '888', '/authority/updateAuthority', 'PUT', '', '', ''),
	(98, 'p', '888', '/authorityBtn/canRemoveAuthorityBtn', 'POST', '', '', ''),
	(97, 'p', '888', '/authorityBtn/getAuthorityBtn', 'POST', '', '', ''),
	(96, 'p', '888', '/authorityBtn/setAuthorityBtn', 'POST', '', '', ''),
	(74, 'p', '888', '/autoCode/addFunc', 'POST', '', '', ''),
	(67, 'p', '888', '/autoCode/createPackage', 'POST', '', '', ''),
	(71, 'p', '888', '/autoCode/createPlug', 'POST', '', '', ''),
	(64, 'p', '888', '/autoCode/createTemp', 'POST', '', '', ''),
	(70, 'p', '888', '/autoCode/delPackage', 'POST', '', '', ''),
	(65, 'p', '888', '/autoCode/delSysHistory', 'POST', '', '', ''),
	(62, 'p', '888', '/autoCode/getColumn', 'GET', '', '', ''),
	(58, 'p', '888', '/autoCode/getDB', 'GET', '', '', ''),
	(59, 'p', '888', '/autoCode/getMeta', 'POST', '', '', ''),
	(69, 'p', '888', '/autoCode/getPackage', 'POST', '', '', ''),
	(66, 'p', '888', '/autoCode/getSysHistory', 'POST', '', '', ''),
	(61, 'p', '888', '/autoCode/getTables', 'GET', '', '', ''),
	(68, 'p', '888', '/autoCode/getTemplates', 'GET', '', '', ''),
	(72, 'p', '888', '/autoCode/installPlugin', 'POST', '', '', ''),
	(60, 'p', '888', '/autoCode/preview', 'POST', '', '', ''),
	(73, 'p', '888', '/autoCode/pubPlug', 'POST', '', '', ''),
	(63, 'p', '888', '/autoCode/rollback', 'POST', '', '', ''),
	(48, 'p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', ''),
	(47, 'p', '888', '/casbin/updateCasbin', 'POST', '', '', ''),
	(56, 'p', '888', '/customer/customer', 'DELETE', '', '', ''),
	(53, 'p', '888', '/customer/customer', 'GET', '', '', ''),
	(55, 'p', '888', '/customer/customer', 'POST', '', '', ''),
	(54, 'p', '888', '/customer/customer', 'PUT', '', '', ''),
	(57, 'p', '888', '/customer/customerList', 'GET', '', '', ''),
	(91, 'p', '888', '/email/emailTest', 'POST', '', '', ''),
	(92, 'p', '888', '/email/sendEmail', 'POST', '', '', ''),
	(40, 'p', '888', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', ''),
	(39, 'p', '888', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', ''),
	(43, 'p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', ''),
	(44, 'p', '888', '/fileUploadAndDownload/editFileName', 'POST', '', '', ''),
	(38, 'p', '888', '/fileUploadAndDownload/findFile', 'GET', '', '', ''),
	(45, 'p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', ''),
	(46, 'p', '888', '/fileUploadAndDownload/importURL', 'POST', '', '', ''),
	(41, 'p', '888', '/fileUploadAndDownload/removeChunk', 'POST', '', '', ''),
	(42, 'p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', ''),
	(108, 'p', '888', '/info/createInfo', 'POST', '', '', ''),
	(109, 'p', '888', '/info/deleteInfo', 'DELETE', '', '', ''),
	(110, 'p', '888', '/info/deleteInfoByIds', 'DELETE', '', '', ''),
	(112, 'p', '888', '/info/findInfo', 'GET', '', '', ''),
	(113, 'p', '888', '/info/getInfoList', 'GET', '', '', ''),
	(111, 'p', '888', '/info/updateInfo', 'PUT', '', '', ''),
	(49, 'p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', ''),
	(21, 'p', '888', '/menu/addBaseMenu', 'POST', '', '', ''),
	(23, 'p', '888', '/menu/addMenuAuthority', 'POST', '', '', ''),
	(25, 'p', '888', '/menu/deleteBaseMenu', 'POST', '', '', ''),
	(27, 'p', '888', '/menu/getBaseMenuById', 'POST', '', '', ''),
	(22, 'p', '888', '/menu/getBaseMenuTree', 'POST', '', '', ''),
	(19, 'p', '888', '/menu/getMenu', 'POST', '', '', ''),
	(24, 'p', '888', '/menu/getMenuAuthority', 'POST', '', '', ''),
	(20, 'p', '888', '/menu/getMenuList', 'POST', '', '', ''),
	(26, 'p', '888', '/menu/updateBaseMenu', 'POST', '', '', ''),
	(94, 'p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', ''),
	(95, 'p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', ''),
	(93, 'p', '888', '/simpleUploader/upload', 'POST', '', '', ''),
	(83, 'p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', ''),
	(84, 'p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', ''),
	(80, 'p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', ''),
	(82, 'p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', ''),
	(81, 'p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', ''),
	(77, 'p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', ''),
	(79, 'p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', ''),
	(75, 'p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', ''),
	(78, 'p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', ''),
	(76, 'p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', ''),
	(99, 'p', '888', '/sysExportTemplate/createSysExportTemplate', 'POST', '', '', ''),
	(100, 'p', '888', '/sysExportTemplate/deleteSysExportTemplate', 'DELETE', '', '', ''),
	(101, 'p', '888', '/sysExportTemplate/deleteSysExportTemplateByIds', 'DELETE', '', '', ''),
	(105, 'p', '888', '/sysExportTemplate/exportExcel', 'GET', '', '', ''),
	(106, 'p', '888', '/sysExportTemplate/exportTemplate', 'GET', '', '', ''),
	(103, 'p', '888', '/sysExportTemplate/findSysExportTemplate', 'GET', '', '', ''),
	(104, 'p', '888', '/sysExportTemplate/getSysExportTemplateList', 'GET', '', '', ''),
	(107, 'p', '888', '/sysExportTemplate/importExcel', 'POST', '', '', ''),
	(102, 'p', '888', '/sysExportTemplate/updateSysExportTemplate', 'PUT', '', '', ''),
	(87, 'p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', ''),
	(89, 'p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', ''),
	(90, 'p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', ''),
	(85, 'p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', ''),
	(88, 'p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', ''),
	(86, 'p', '888', '/sysOperationRecord/updateSysOperationRecord', 'PUT', '', '', ''),
	(114, 'p', '888', '/sysParams/createSysParams', 'POST', '', '', ''),
	(115, 'p', '888', '/sysParams/deleteSysParams', 'DELETE', '', '', ''),
	(116, 'p', '888', '/sysParams/deleteSysParamsByIds', 'DELETE', '', '', ''),
	(118, 'p', '888', '/sysParams/findSysParams', 'GET', '', '', ''),
	(120, 'p', '888', '/sysParams/getSysParam', 'GET', '', '', ''),
	(119, 'p', '888', '/sysParams/getSysParamsList', 'GET', '', '', ''),
	(117, 'p', '888', '/sysParams/updateSysParams', 'PUT', '', '', ''),
	(52, 'p', '888', '/system/getServerInfo', 'POST', '', '', ''),
	(50, 'p', '888', '/system/getSystemConfig', 'POST', '', '', ''),
	(51, 'p', '888', '/system/setSystemConfig', 'POST', '', '', ''),
	(1, 'p', '888', '/user/admin_register', 'POST', '', '', ''),
	(33, 'p', '888', '/user/changePassword', 'POST', '', '', ''),
	(32, 'p', '888', '/user/deleteUser', 'DELETE', '', '', ''),
	(28, 'p', '888', '/user/getUserInfo', 'GET', '', '', ''),
	(31, 'p', '888', '/user/getUserList', 'POST', '', '', ''),
	(36, 'p', '888', '/user/resetPassword', 'POST', '', '', ''),
	(30, 'p', '888', '/user/setSelfInfo', 'PUT', '', '', ''),
	(37, 'p', '888', '/user/setSelfSetting', 'PUT', '', '', ''),
	(35, 'p', '888', '/user/setUserAuthorities', 'POST', '', '', ''),
	(34, 'p', '888', '/user/setUserAuthority', 'POST', '', '', ''),
	(29, 'p', '888', '/user/setUserInfo', 'PUT', '', '', ''),
	(122, 'p', '8881', '/api/createApi', 'POST', '', '', ''),
	(125, 'p', '8881', '/api/deleteApi', 'POST', '', '', ''),
	(127, 'p', '8881', '/api/getAllApis', 'POST', '', '', ''),
	(124, 'p', '8881', '/api/getApiById', 'POST', '', '', ''),
	(123, 'p', '8881', '/api/getApiList', 'POST', '', '', ''),
	(126, 'p', '8881', '/api/updateApi', 'POST', '', '', ''),
	(128, 'p', '8881', '/authority/createAuthority', 'POST', '', '', ''),
	(129, 'p', '8881', '/authority/deleteAuthority', 'POST', '', '', ''),
	(130, 'p', '8881', '/authority/getAuthorityList', 'POST', '', '', ''),
	(131, 'p', '8881', '/authority/setDataAuthority', 'POST', '', '', ''),
	(150, 'p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', ''),
	(149, 'p', '8881', '/casbin/updateCasbin', 'POST', '', '', ''),
	(156, 'p', '8881', '/customer/customer', 'DELETE', '', '', ''),
	(157, 'p', '8881', '/customer/customer', 'GET', '', '', ''),
	(154, 'p', '8881', '/customer/customer', 'POST', '', '', ''),
	(155, 'p', '8881', '/customer/customer', 'PUT', '', '', ''),
	(158, 'p', '8881', '/customer/customerList', 'GET', '', '', ''),
	(146, 'p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', ''),
	(147, 'p', '8881', '/fileUploadAndDownload/editFileName', 'POST', '', '', ''),
	(145, 'p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', ''),
	(148, 'p', '8881', '/fileUploadAndDownload/importURL', 'POST', '', '', ''),
	(144, 'p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', ''),
	(151, 'p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', ''),
	(134, 'p', '8881', '/menu/addBaseMenu', 'POST', '', '', ''),
	(136, 'p', '8881', '/menu/addMenuAuthority', 'POST', '', '', ''),
	(138, 'p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', ''),
	(140, 'p', '8881', '/menu/getBaseMenuById', 'POST', '', '', ''),
	(135, 'p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', ''),
	(132, 'p', '8881', '/menu/getMenu', 'POST', '', '', ''),
	(137, 'p', '8881', '/menu/getMenuAuthority', 'POST', '', '', ''),
	(133, 'p', '8881', '/menu/getMenuList', 'POST', '', '', ''),
	(139, 'p', '8881', '/menu/updateBaseMenu', 'POST', '', '', ''),
	(152, 'p', '8881', '/system/getSystemConfig', 'POST', '', '', ''),
	(153, 'p', '8881', '/system/setSystemConfig', 'POST', '', '', ''),
	(121, 'p', '8881', '/user/admin_register', 'POST', '', '', ''),
	(141, 'p', '8881', '/user/changePassword', 'POST', '', '', ''),
	(159, 'p', '8881', '/user/getUserInfo', 'GET', '', '', ''),
	(142, 'p', '8881', '/user/getUserList', 'POST', '', '', ''),
	(143, 'p', '8881', '/user/setUserAuthority', 'POST', '', '', ''),
	(161, 'p', '9528', '/api/createApi', 'POST', '', '', ''),
	(164, 'p', '9528', '/api/deleteApi', 'POST', '', '', ''),
	(166, 'p', '9528', '/api/getAllApis', 'POST', '', '', ''),
	(163, 'p', '9528', '/api/getApiById', 'POST', '', '', ''),
	(162, 'p', '9528', '/api/getApiList', 'POST', '', '', ''),
	(165, 'p', '9528', '/api/updateApi', 'POST', '', '', ''),
	(167, 'p', '9528', '/authority/createAuthority', 'POST', '', '', ''),
	(168, 'p', '9528', '/authority/deleteAuthority', 'POST', '', '', ''),
	(169, 'p', '9528', '/authority/getAuthorityList', 'POST', '', '', ''),
	(170, 'p', '9528', '/authority/setDataAuthority', 'POST', '', '', ''),
	(198, 'p', '9528', '/autoCode/createTemp', 'POST', '', '', ''),
	(189, 'p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', ''),
	(188, 'p', '9528', '/casbin/updateCasbin', 'POST', '', '', ''),
	(196, 'p', '9528', '/customer/customer', 'DELETE', '', '', ''),
	(194, 'p', '9528', '/customer/customer', 'GET', '', '', ''),
	(195, 'p', '9528', '/customer/customer', 'POST', '', '', ''),
	(193, 'p', '9528', '/customer/customer', 'PUT', '', '', ''),
	(197, 'p', '9528', '/customer/customerList', 'GET', '', '', ''),
	(185, 'p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', ''),
	(186, 'p', '9528', '/fileUploadAndDownload/editFileName', 'POST', '', '', ''),
	(184, 'p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', ''),
	(187, 'p', '9528', '/fileUploadAndDownload/importURL', 'POST', '', '', ''),
	(183, 'p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', ''),
	(190, 'p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', ''),
	(173, 'p', '9528', '/menu/addBaseMenu', 'POST', '', '', ''),
	(175, 'p', '9528', '/menu/addMenuAuthority', 'POST', '', '', ''),
	(177, 'p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', ''),
	(179, 'p', '9528', '/menu/getBaseMenuById', 'POST', '', '', ''),
	(174, 'p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', ''),
	(171, 'p', '9528', '/menu/getMenu', 'POST', '', '', ''),
	(176, 'p', '9528', '/menu/getMenuAuthority', 'POST', '', '', ''),
	(172, 'p', '9528', '/menu/getMenuList', 'POST', '', '', ''),
	(178, 'p', '9528', '/menu/updateBaseMenu', 'POST', '', '', ''),
	(191, 'p', '9528', '/system/getSystemConfig', 'POST', '', '', ''),
	(192, 'p', '9528', '/system/setSystemConfig', 'POST', '', '', ''),
	(160, 'p', '9528', '/user/admin_register', 'POST', '', '', ''),
	(180, 'p', '9528', '/user/changePassword', 'POST', '', '', ''),
	(199, 'p', '9528', '/user/getUserInfo', 'GET', '', '', ''),
	(181, 'p', '9528', '/user/getUserList', 'POST', '', '', ''),
	(182, 'p', '9528', '/user/setUserAuthority', 'POST', '', '', '');

-- 导出  表 coreapi.exa_customers 结构
CREATE TABLE IF NOT EXISTS `exa_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` bigint unsigned DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.exa_customers 的数据：~0 rows (大约)

-- 导出  表 coreapi.exa_files 结构
CREATE TABLE IF NOT EXISTS `exa_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_md5` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chunk_total` bigint DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.exa_files 的数据：~0 rows (大约)

-- 导出  表 coreapi.exa_file_chunks 结构
CREATE TABLE IF NOT EXISTS `exa_file_chunks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint unsigned DEFAULT NULL,
  `file_chunk_number` bigint DEFAULT NULL,
  `file_chunk_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.exa_file_chunks 的数据：~0 rows (大约)

-- 导出  表 coreapi.exa_file_upload_and_downloads 结构
CREATE TABLE IF NOT EXISTS `exa_file_upload_and_downloads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.exa_file_upload_and_downloads 的数据：~2 rows (大约)
INSERT INTO `exa_file_upload_and_downloads` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `url`, `tag`, `key`) VALUES
	(1, '2024-11-07 16:18:02.035', '2024-11-07 16:18:02.035', NULL, '10.png', 'https://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png'),
	(2, '2024-11-07 16:18:02.035', '2024-11-07 16:18:02.035', NULL, 'logo.png', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png');

-- 导出  表 coreapi.jwt_blacklists 结构
CREATE TABLE IF NOT EXISTS `jwt_blacklists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text COLLATE utf8mb4_general_ci COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.jwt_blacklists 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_apis 结构
CREATE TABLE IF NOT EXISTS `sys_apis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_apis 的数据：~118 rows (大约)
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES
	(1, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单(退出，必选)', 'jwt', 'POST'),
	(2, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/deleteUser', '删除用户', '系统用户', 'DELETE'),
	(3, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/admin_register', '用户注册', '系统用户', 'POST'),
	(4, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/getUserList', '获取用户列表', '系统用户', 'POST'),
	(5, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/setUserInfo', '设置用户信息', '系统用户', 'PUT'),
	(6, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/setSelfInfo', '设置自身信息(必选)', '系统用户', 'PUT'),
	(7, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/getUserInfo', '获取自身信息(必选)', '系统用户', 'GET'),
	(8, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/setUserAuthorities', '设置权限组', '系统用户', 'POST'),
	(9, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/changePassword', '修改密码（建议选择)', '系统用户', 'POST'),
	(10, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/setUserAuthority', '修改用户角色(必选)', '系统用户', 'POST'),
	(11, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/resetPassword', '重置用户密码', '系统用户', 'POST'),
	(12, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/user/setSelfSetting', '用户界面配置', '系统用户', 'PUT'),
	(13, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/createApi', '创建api', 'api', 'POST'),
	(14, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/deleteApi', '删除Api', 'api', 'POST'),
	(15, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/updateApi', '更新Api', 'api', 'POST'),
	(16, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/getApiList', '获取api列表', 'api', 'POST'),
	(17, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/getAllApis', '获取所有api', 'api', 'POST'),
	(18, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST'),
	(19, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/deleteApisByIds', '批量删除api', 'api', 'DELETE'),
	(20, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/syncApi', '获取待同步API', 'api', 'GET'),
	(21, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/getApiGroups', '获取路由组', 'api', 'GET'),
	(22, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/enterSyncApi', '确认同步API', 'api', 'POST'),
	(23, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/api/ignoreApi', '忽略API', 'api', 'POST'),
	(24, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authority/copyAuthority', '拷贝角色', '角色', 'POST'),
	(25, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authority/createAuthority', '创建角色', '角色', 'POST'),
	(26, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authority/deleteAuthority', '删除角色', '角色', 'POST'),
	(27, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authority/updateAuthority', '更新角色信息', '角色', 'PUT'),
	(28, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authority/getAuthorityList', '获取角色列表', '角色', 'POST'),
	(29, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authority/setDataAuthority', '设置角色资源权限', '角色', 'POST'),
	(30, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST'),
	(31, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST'),
	(32, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/addBaseMenu', '新增菜单', '菜单', 'POST'),
	(33, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/getMenu', '获取菜单树(必选)', '菜单', 'POST'),
	(34, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/deleteBaseMenu', '删除菜单', '菜单', 'POST'),
	(35, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/updateBaseMenu', '更新菜单', '菜单', 'POST'),
	(36, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/getBaseMenuById', '根据id获取菜单', '菜单', 'POST'),
	(37, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/getMenuList', '分页获取基础menu列表', '菜单', 'POST'),
	(38, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/getBaseMenuTree', '获取用户动态路由', '菜单', 'POST'),
	(39, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/getMenuAuthority', '获取指定角色menu', '菜单', 'POST'),
	(40, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', '菜单', 'POST'),
	(41, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/findFile', '寻找目标文件（秒传）', '分片上传', 'GET'),
	(42, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/breakpointContinue', '断点续传', '分片上传', 'POST'),
	(43, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/breakpointContinueFinish', '断点续传完成', '分片上传', 'POST'),
	(44, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/removeChunk', '上传完成移除文件', '分片上传', 'POST'),
	(45, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/upload', '文件上传（建议选择）', '文件上传与下载', 'POST'),
	(46, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/deleteFile', '删除文件', '文件上传与下载', 'POST'),
	(47, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/editFileName', '文件名或者备注编辑', '文件上传与下载', 'POST'),
	(48, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', '文件上传与下载', 'POST'),
	(49, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/fileUploadAndDownload/importURL', '导入URL', '文件上传与下载', 'POST'),
	(50, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/system/getServerInfo', '获取服务器信息', '系统服务', 'POST'),
	(51, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/system/getSystemConfig', '获取配置文件内容', '系统服务', 'POST'),
	(52, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/system/setSystemConfig', '设置配置文件内容', '系统服务', 'POST'),
	(53, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/customer/customer', '更新客户', '客户', 'PUT'),
	(54, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/customer/customer', '创建客户', '客户', 'POST'),
	(55, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/customer/customer', '删除客户', '客户', 'DELETE'),
	(56, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/customer/customer', '获取单一客户', '客户', 'GET'),
	(57, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/customer/customerList', '获取客户列表', '客户', 'GET'),
	(58, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/getDB', '获取所有数据库', '代码生成器', 'GET'),
	(59, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/getTables', '获取数据库表', '代码生成器', 'GET'),
	(60, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/createTemp', '自动化代码', '代码生成器', 'POST'),
	(61, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/preview', '预览自动化代码', '代码生成器', 'POST'),
	(62, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/getColumn', '获取所选table的所有字段', '代码生成器', 'GET'),
	(63, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/installPlugin', '安装插件', '代码生成器', 'POST'),
	(64, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/pubPlug', '打包插件', '代码生成器', 'POST'),
	(65, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/createPackage', '配置模板', '模板配置', 'POST'),
	(66, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/getTemplates', '获取模板文件', '模板配置', 'GET'),
	(67, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/getPackage', '获取所有模板', '模板配置', 'POST'),
	(68, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/delPackage', '删除模板', '模板配置', 'POST'),
	(69, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/getMeta', '获取meta信息', '代码生成器历史', 'POST'),
	(70, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/rollback', '回滚自动生成代码', '代码生成器历史', 'POST'),
	(71, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/getSysHistory', '查询回滚记录', '代码生成器历史', 'POST'),
	(72, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/delSysHistory', '删除回滚记录', '代码生成器历史', 'POST'),
	(73, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/autoCode/addFunc', '增加模板方法', '代码生成器历史', 'POST'),
	(74, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', '系统字典详情', 'PUT'),
	(75, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', '系统字典详情', 'POST'),
	(76, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', '系统字典详情', 'DELETE'),
	(77, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', '系统字典详情', 'GET'),
	(78, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', '系统字典详情', 'GET'),
	(79, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionary/createSysDictionary', '新增字典', '系统字典', 'POST'),
	(80, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionary/deleteSysDictionary', '删除字典', '系统字典', 'DELETE'),
	(81, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionary/updateSysDictionary', '更新字典', '系统字典', 'PUT'),
	(82, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionary/findSysDictionary', '根据ID获取字典（建议选择）', '系统字典', 'GET'),
	(83, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysDictionary/getSysDictionaryList', '获取字典列表', '系统字典', 'GET'),
	(84, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysOperationRecord/createSysOperationRecord', '新增操作记录', '操作记录', 'POST'),
	(85, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', '操作记录', 'GET'),
	(86, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', '操作记录', 'GET'),
	(87, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', '操作记录', 'DELETE'),
	(88, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', '操作记录', 'DELETE'),
	(89, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/simpleUploader/upload', '插件版分片上传', '断点续传(插件版)', 'POST'),
	(90, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/simpleUploader/checkFileMd5', '文件完整度验证', '断点续传(插件版)', 'GET'),
	(91, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/simpleUploader/mergeFileMd5', '上传完成合并文件', '断点续传(插件版)', 'GET'),
	(92, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/email/emailTest', '发送测试邮件', 'email', 'POST'),
	(93, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/email/sendEmail', '发送邮件', 'email', 'POST'),
	(94, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authorityBtn/setAuthorityBtn', '设置按钮权限', '按钮权限', 'POST'),
	(95, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authorityBtn/getAuthorityBtn', '获取已有按钮权限', '按钮权限', 'POST'),
	(96, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/authorityBtn/canRemoveAuthorityBtn', '删除按钮', '按钮权限', 'POST'),
	(97, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/createSysExportTemplate', '新增导出模板', '表格模板', 'POST'),
	(98, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/deleteSysExportTemplate', '删除导出模板', '表格模板', 'DELETE'),
	(99, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/deleteSysExportTemplateByIds', '批量删除导出模板', '表格模板', 'DELETE'),
	(100, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/updateSysExportTemplate', '更新导出模板', '表格模板', 'PUT'),
	(101, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/findSysExportTemplate', '根据ID获取导出模板', '表格模板', 'GET'),
	(102, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/getSysExportTemplateList', '获取导出模板列表', '表格模板', 'GET'),
	(103, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/exportExcel', '导出Excel', '表格模板', 'GET'),
	(104, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/exportTemplate', '下载模板', '表格模板', 'GET'),
	(105, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysExportTemplate/importExcel', '导入Excel', '表格模板', 'POST'),
	(106, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/info/createInfo', '新建公告', '公告', 'POST'),
	(107, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/info/deleteInfo', '删除公告', '公告', 'DELETE'),
	(108, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/info/deleteInfoByIds', '批量删除公告', '公告', 'DELETE'),
	(109, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/info/updateInfo', '更新公告', '公告', 'PUT'),
	(110, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/info/findInfo', '根据ID获取公告', '公告', 'GET'),
	(111, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/info/getInfoList', '获取公告列表', '公告', 'GET'),
	(112, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysParams/createSysParams', '新建参数', '参数管理', 'POST'),
	(113, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysParams/deleteSysParams', '删除参数', '参数管理', 'DELETE'),
	(114, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysParams/deleteSysParamsByIds', '批量删除参数', '参数管理', 'DELETE'),
	(115, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysParams/updateSysParams', '更新参数', '参数管理', 'PUT'),
	(116, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysParams/findSysParams', '根据ID获取参数', '参数管理', 'GET'),
	(117, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysParams/getSysParamsList', '获取参数列表', '参数管理', 'GET'),
	(118, '2024-11-07 16:18:01.808', '2024-11-07 16:18:01.808', NULL, '/sysParams/getSysParam', '获取参数列表', '参数管理', 'GET');

-- 导出  表 coreapi.sys_authorities 结构
CREATE TABLE IF NOT EXISTS `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `authority_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名',
  `parent_id` bigint unsigned DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `uni_sys_authorities_authority_id` (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_authorities 的数据：~3 rows (大约)
INSERT INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`) VALUES
	('2024-11-07 16:18:01.827', '2024-11-07 16:18:02.020', NULL, 888, '普通用户', 0, 'dashboard'),
	('2024-11-07 16:18:01.827', '2024-11-07 16:18:02.031', NULL, 8881, '普通用户子角色', 888, 'dashboard'),
	('2024-11-07 16:18:01.827', '2024-11-07 16:18:02.024', NULL, 9528, '测试角色', 0, 'dashboard');

-- 导出  表 coreapi.sys_authority_btns 结构
CREATE TABLE IF NOT EXISTS `sys_authority_btns` (
  `authority_id` bigint unsigned DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_authority_btns 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_authority_menus 结构
CREATE TABLE IF NOT EXISTS `sys_authority_menus` (
  `sys_base_menu_id` bigint unsigned NOT NULL,
  `sys_authority_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_authority_menus 的数据：~37 rows (大约)
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES
	(1, 888),
	(1, 8881),
	(1, 9528),
	(3, 888),
	(4, 888),
	(4, 8881),
	(5, 888),
	(5, 8881),
	(6, 888),
	(6, 8881),
	(7, 888),
	(7, 8881),
	(8, 888),
	(8, 8881),
	(8, 9528),
	(9, 888),
	(9, 8881),
	(10, 888),
	(10, 8881),
	(15, 888),
	(15, 8881),
	(16, 888),
	(16, 8881),
	(17, 888),
	(17, 8881),
	(18, 888),
	(19, 888),
	(20, 888),
	(21, 888),
	(23, 888),
	(24, 888),
	(25, 888),
	(26, 888),
	(27, 888),
	(28, 888),
	(29, 888),
	(31, 888);

-- 导出  表 coreapi.sys_auto_code_histories 结构
CREATE TABLE IF NOT EXISTS `sys_auto_code_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表名',
  `package` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模块名/插件名',
  `request` text COLLATE utf8mb4_general_ci COMMENT '前端传入的结构化信息',
  `struct_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '结构体名称',
  `business_db` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '业务库',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Struct中文名称',
  `templates` text COLLATE utf8mb4_general_ci COMMENT '模板信息',
  `Injections` text COLLATE utf8mb4_general_ci COMMENT '注入路径',
  `flag` bigint DEFAULT NULL COMMENT '[0:创建,1:回滚]',
  `api_ids` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api表注册内容',
  `menu_id` bigint unsigned DEFAULT NULL COMMENT '菜单ID',
  `export_template_id` bigint unsigned DEFAULT NULL COMMENT '导出模板ID',
  `package_id` bigint unsigned DEFAULT NULL COMMENT '包ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_auto_code_histories 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_auto_code_packages 结构
CREATE TABLE IF NOT EXISTS `sys_auto_code_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示名',
  `template` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模版',
  `package_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '包名',
  `module` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_packages_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_auto_code_packages 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_base_menus 结构
CREATE TABLE IF NOT EXISTS `sys_base_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint unsigned DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `active_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_base_menus 的数据：~31 rows (大约)
INSERT INTO `sys_base_menus` (`id`, `created_at`, `updated_at`, `deleted_at`, `menu_level`, `parent_id`, `path`, `name`, `hidden`, `component`, `sort`, `active_name`, `keep_alive`, `default_menu`, `title`, `icon`, `close_tab`) VALUES
	(1, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 0, 'dashboard', 'dashboard', 0, 'view/dashboard/index.vue', 1, '', 0, 0, '仪表盘', 'odometer', 0),
	(2, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', '2024-11-07 16:20:12.806', 0, 0, 'about', 'about', 0, 'view/about/index.vue', 9, '', 0, 0, '关于我们', 'info-filled', 0),
	(3, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 0, 'admin', 'superAdmin', 0, 'view/superAdmin/index.vue', 3, '', 0, 0, '超级管理员', 'user', 0),
	(4, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 3, 'authority', 'authority', 0, 'view/superAdmin/authority/authority.vue', 1, '', 0, 0, '角色管理', 'avatar', 0),
	(5, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 3, 'menu', 'menu', 0, 'view/superAdmin/menu/menu.vue', 2, '', 1, 0, '菜单管理', 'tickets', 0),
	(6, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 3, 'api', 'api', 0, 'view/superAdmin/api/api.vue', 3, '', 1, 0, 'api管理', 'platform', 0),
	(7, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 3, 'user', 'user', 0, 'view/superAdmin/user/user.vue', 4, '', 0, 0, '用户管理', 'coordinate', 0),
	(8, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 3, 'dictionary', 'dictionary', 0, 'view/superAdmin/dictionary/sysDictionary.vue', 5, '', 0, 0, '字典管理', 'notebook', 0),
	(9, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 3, 'operation', 'operation', 0, 'view/superAdmin/operation/sysOperationRecord.vue', 6, '', 0, 0, '操作历史', 'pie-chart', 0),
	(10, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 0, 'person', 'person', 1, 'view/person/person.vue', 4, '', 0, 0, '个人信息', 'message', 0),
	(11, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', '2024-11-07 16:20:08.418', 0, 0, 'example', 'example', 0, 'view/example/index.vue', 7, '', 0, 0, '示例文件', 'management', 0),
	(12, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', '2024-11-07 16:20:06.322', 0, 11, 'upload', 'upload', 0, 'view/example/upload/upload.vue', 5, '', 0, 0, '媒体库（上传下载）', 'upload', 0),
	(13, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', '2024-11-07 16:20:03.908', 0, 11, 'breakpoint', 'breakpoint', 0, 'view/example/breakpoint/breakpoint.vue', 6, '', 0, 0, '断点续传', 'upload-filled', 0),
	(14, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', '2024-11-07 16:20:00.776', 0, 11, 'customer', 'customer', 0, 'view/example/customer/customer.vue', 7, '', 0, 0, '客户列表（资源示例）', 'avatar', 0),
	(15, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 0, 'systemTools', 'systemTools', 0, 'view/systemTools/index.vue', 5, '', 0, 0, '系统工具', 'tools', 0),
	(16, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 15, 'autoCode', 'autoCode', 0, 'view/systemTools/autoCode/index.vue', 1, '', 1, 0, '代码生成器', 'cpu', 0),
	(17, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 15, 'formCreate', 'formCreate', 0, 'view/systemTools/formCreate/index.vue', 3, '', 1, 0, '表单生成器', 'magic-stick', 0),
	(18, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 15, 'system', 'system', 0, 'view/systemTools/system/system.vue', 4, '', 0, 0, '系统配置', 'operation', 0),
	(19, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 15, 'autoCodeAdmin', 'autoCodeAdmin', 0, 'view/systemTools/autoCodeAdmin/index.vue', 2, '', 0, 0, '自动化代码管理', 'magic-stick', 0),
	(20, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 15, 'autoCodeEdit/:id', 'autoCodeEdit', 1, 'view/systemTools/autoCode/index.vue', 0, '', 0, 0, '自动化代码-${id}', 'magic-stick', 0),
	(21, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 15, 'autoPkg', 'autoPkg', 0, 'view/systemTools/autoPkg/autoPkg.vue', 0, '', 0, 0, '模板配置', 'folder', 0),
	(22, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', '2024-11-07 16:19:48.885', 0, 0, 'https://www.gin-vue-admin.com', 'https://www.gin-vue-admin.com', 0, '/', 0, '', 0, 0, '官方网站', 'customer-gva', 0),
	(23, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 0, 'state', 'state', 0, 'view/system/state.vue', 8, '', 0, 0, '服务器状态', 'cloudy', 0),
	(24, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 0, 'plugin', 'plugin', 0, 'view/routerHolder.vue', 6, '', 0, 0, '插件系统', 'cherry', 0),
	(25, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 24, 'https://plugin.gin-vue-admin.com/', 'https://plugin.gin-vue-admin.com/', 0, 'https://plugin.gin-vue-admin.com/', 0, '', 0, 0, '插件市场', 'shop', 0),
	(26, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 24, 'installPlugin', 'installPlugin', 0, 'view/systemTools/installPlugin/index.vue', 1, '', 0, 0, '插件安装', 'box', 0),
	(27, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 24, 'pubPlug', 'pubPlug', 0, 'view/systemTools/pubPlug/pubPlug.vue', 3, '', 0, 0, '打包插件', 'files', 0),
	(28, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 24, 'plugin-email', 'plugin-email', 0, 'plugin/email/view/index.vue', 4, '', 0, 0, '邮件插件', 'message', 0),
	(29, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 15, 'exportTemplate', 'exportTemplate', 0, 'view/systemTools/exportTemplate/exportTemplate.vue', 5, '', 0, 0, '表格模板', 'reading', 0),
	(30, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', '2024-11-07 16:20:22.221', 0, 24, 'anInfo', 'anInfo', 0, 'plugin/announcement/view/info.vue', 5, '', 0, 0, '公告管理[示例]', 'scaleToOriginal', 0),
	(31, '2024-11-07 16:18:01.863', '2024-11-07 16:18:01.863', NULL, 0, 3, 'sysParams', 'sysParams', 0, 'view/superAdmin/params/sysParams.vue', 7, '', 0, 0, '参数管理', 'compass', 0);

-- 导出  表 coreapi.sys_base_menu_btns 结构
CREATE TABLE IF NOT EXISTS `sys_base_menu_btns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sys_base_menu_id` bigint unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_base_menu_btns 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_base_menu_parameters 结构
CREATE TABLE IF NOT EXISTS `sys_base_menu_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_base_menu_parameters 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_data_authority_id 结构
CREATE TABLE IF NOT EXISTS `sys_data_authority_id` (
  `sys_authority_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_data_authority_id 的数据：~5 rows (大约)
INSERT INTO `sys_data_authority_id` (`sys_authority_authority_id`, `data_authority_id_authority_id`) VALUES
	(888, 888),
	(888, 8881),
	(888, 9528),
	(9528, 8881),
	(9528, 9528);

-- 导出  表 coreapi.sys_dictionaries 结构
CREATE TABLE IF NOT EXISTS `sys_dictionaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_dictionaries 的数据：~6 rows (大约)
INSERT INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES
	(1, '2024-11-07 16:18:01.839', '2024-11-07 16:18:01.842', NULL, '性别', 'gender', 1, '性别字典'),
	(2, '2024-11-07 16:18:01.839', '2024-11-07 16:18:01.845', NULL, '数据库int类型', 'int', 1, 'int类型对应的数据库类型'),
	(3, '2024-11-07 16:18:01.839', '2024-11-07 16:18:01.849', NULL, '数据库时间日期类型', 'time.Time', 1, '数据库时间日期类型'),
	(4, '2024-11-07 16:18:01.839', '2024-11-07 16:18:01.853', NULL, '数据库浮点型', 'float64', 1, '数据库浮点型'),
	(5, '2024-11-07 16:18:01.839', '2024-11-07 16:18:01.856', NULL, '数据库字符串', 'string', 1, '数据库字符串'),
	(6, '2024-11-07 16:18:01.839', '2024-11-07 16:18:01.860', NULL, '数据库bool类型', 'bool', 1, '数据库bool类型');

-- 导出  表 coreapi.sys_dictionary_details 结构
CREATE TABLE IF NOT EXISTS `sys_dictionary_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示值',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典值',
  `extend` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '扩展值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_dictionary_details 的数据：~33 rows (大约)
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `extend`, `status`, `sort`, `sys_dictionary_id`) VALUES
	(1, '2024-11-07 16:18:01.842', '2024-11-07 16:18:01.842', NULL, '男', '1', '', 1, 1, 1),
	(2, '2024-11-07 16:18:01.842', '2024-11-07 16:18:01.842', NULL, '女', '2', '', 1, 2, 1),
	(3, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'smallint', '1', 'mysql', 1, 1, 2),
	(4, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'mediumint', '2', 'mysql', 1, 2, 2),
	(5, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'int', '3', 'mysql', 1, 3, 2),
	(6, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'bigint', '4', 'mysql', 1, 4, 2),
	(7, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'int2', '5', 'pgsql', 1, 5, 2),
	(8, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'int4', '6', 'pgsql', 1, 6, 2),
	(9, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'int6', '7', 'pgsql', 1, 7, 2),
	(10, '2024-11-07 16:18:01.846', '2024-11-07 16:18:01.846', NULL, 'int8', '8', 'pgsql', 1, 8, 2),
	(11, '2024-11-07 16:18:01.849', '2024-11-07 16:18:01.849', NULL, 'date', '', '', 1, 0, 3),
	(12, '2024-11-07 16:18:01.849', '2024-11-07 16:18:01.849', NULL, 'time', '1', 'mysql', 1, 1, 3),
	(13, '2024-11-07 16:18:01.849', '2024-11-07 16:18:01.849', NULL, 'year', '2', 'mysql', 1, 2, 3),
	(14, '2024-11-07 16:18:01.849', '2024-11-07 16:18:01.849', NULL, 'datetime', '3', 'mysql', 1, 3, 3),
	(15, '2024-11-07 16:18:01.849', '2024-11-07 16:18:01.849', NULL, 'timestamp', '5', 'mysql', 1, 5, 3),
	(16, '2024-11-07 16:18:01.849', '2024-11-07 16:18:01.849', NULL, 'timestamptz', '6', 'pgsql', 1, 5, 3),
	(17, '2024-11-07 16:18:01.854', '2024-11-07 16:18:01.854', NULL, 'float', '', '', 1, 0, 4),
	(18, '2024-11-07 16:18:01.854', '2024-11-07 16:18:01.854', NULL, 'double', '1', 'mysql', 1, 1, 4),
	(19, '2024-11-07 16:18:01.854', '2024-11-07 16:18:01.854', NULL, 'decimal', '2', 'mysql', 1, 2, 4),
	(20, '2024-11-07 16:18:01.854', '2024-11-07 16:18:01.854', NULL, 'numeric', '3', 'pgsql', 1, 3, 4),
	(21, '2024-11-07 16:18:01.854', '2024-11-07 16:18:01.854', NULL, 'smallserial', '4', 'pgsql', 1, 4, 4),
	(22, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'char', '', '', 1, 0, 5),
	(23, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'varchar', '1', 'mysql', 1, 1, 5),
	(24, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'tinyblob', '2', 'mysql', 1, 2, 5),
	(25, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'tinytext', '3', 'mysql', 1, 3, 5),
	(26, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'text', '4', 'mysql', 1, 4, 5),
	(27, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'blob', '5', 'mysql', 1, 5, 5),
	(28, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'mediumblob', '6', 'mysql', 1, 6, 5),
	(29, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'mediumtext', '7', 'mysql', 1, 7, 5),
	(30, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'longblob', '8', 'mysql', 1, 8, 5),
	(31, '2024-11-07 16:18:01.857', '2024-11-07 16:18:01.857', NULL, 'longtext', '9', 'mysql', 1, 9, 5),
	(32, '2024-11-07 16:18:01.860', '2024-11-07 16:18:01.860', NULL, 'tinyint', '1', 'mysql', 1, 0, 6),
	(33, '2024-11-07 16:18:01.860', '2024-11-07 16:18:01.860', NULL, 'bool', '2', 'pgsql', 1, 0, 6);

-- 导出  表 coreapi.sys_export_templates 结构
CREATE TABLE IF NOT EXISTS `sys_export_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `db_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '数据库名称',
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板名称',
  `table_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表名称',
  `template_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板标识',
  `template_info` text COLLATE utf8mb4_general_ci,
  `limit` bigint DEFAULT NULL COMMENT '导出限制',
  `order` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `idx_sys_export_templates_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_export_templates 的数据：~1 rows (大约)
INSERT INTO `sys_export_templates` (`id`, `created_at`, `updated_at`, `deleted_at`, `db_name`, `name`, `table_name`, `template_id`, `template_info`, `limit`, `order`) VALUES
	(1, '2024-11-07 16:18:02.016', '2024-11-07 16:18:02.016', NULL, '', 'api', 'sys_apis', 'api', '{\n"path":"路径",\n"method":"方法（大写）",\n"description":"方法介绍",\n"api_group":"方法分组"\n}', NULL, '');

-- 导出  表 coreapi.sys_export_template_condition 结构
CREATE TABLE IF NOT EXISTS `sys_export_template_condition` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `template_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板标识',
  `from` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '条件取的key',
  `column` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '作为查询条件的字段',
  `operator` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作符',
  PRIMARY KEY (`id`),
  KEY `idx_sys_export_template_condition_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_export_template_condition 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_export_template_join 结构
CREATE TABLE IF NOT EXISTS `sys_export_template_join` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `template_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '模板标识',
  `joins` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联',
  `table` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表',
  `on` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联条件',
  PRIMARY KEY (`id`),
  KEY `idx_sys_export_template_join_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_export_template_join 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_ignore_apis 结构
CREATE TABLE IF NOT EXISTS `sys_ignore_apis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api路径',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_ignore_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_ignore_apis 的数据：~13 rows (大约)
INSERT INTO `sys_ignore_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `method`) VALUES
	(1, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/swagger/*any', 'GET'),
	(2, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/api/freshCasbin', 'GET'),
	(3, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/uploads/file/*filepath', 'GET'),
	(4, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/health', 'GET'),
	(5, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/uploads/file/*filepath', 'HEAD'),
	(6, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/autoCode/llmAuto', 'POST'),
	(7, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/system/reloadSystem', 'POST'),
	(8, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/base/login', 'POST'),
	(9, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/base/captcha', 'POST'),
	(10, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/init/initdb', 'POST'),
	(11, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/init/checkdb', 'POST'),
	(12, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/info/getInfoDataSource', 'GET'),
	(13, '2024-11-07 16:18:01.816', '2024-11-07 16:18:01.816', NULL, '/info/getInfoPublic', 'GET');

-- 导出  表 coreapi.sys_operation_records 结构
CREATE TABLE IF NOT EXISTS `sys_operation_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求路径',
  `status` bigint DEFAULT NULL COMMENT '请求状态',
  `latency` bigint DEFAULT NULL COMMENT '延迟',
  `agent` text COLLATE utf8mb4_general_ci COMMENT '代理',
  `error_message` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '错误信息',
  `body` text COLLATE utf8mb4_general_ci COMMENT '请求Body',
  `resp` text COLLATE utf8mb4_general_ci COMMENT '响应Body',
  `user_id` bigint unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_operation_records 的数据：~12 rows (大约)
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES
	(1, '2024-11-07 16:19:28.299', '2024-11-07 16:19:28.299', NULL, '127.0.0.1', 'PUT', '/user/setSelfInfo', 200, 7937900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"nickName":"雪落星辰"}', '{"code":0,"data":{},"msg":"设置成功"}', 1),
	(2, '2024-11-07 16:19:36.488', '2024-11-07 16:19:36.488', NULL, '127.0.0.1', 'PUT', '/user/setSelfInfo', 200, 2751800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"headerImg":""}', '{"code":0,"data":{},"msg":"设置成功"}', 1),
	(3, '2024-11-07 16:19:38.350', '2024-11-07 16:19:38.350', NULL, '127.0.0.1', 'PUT', '/user/setSelfInfo', 200, 2811900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"headerImg":"https://qmplusimg.henrongyi.top/1576554439myAvatar.png"}', '{"code":0,"data":{},"msg":"设置成功"}', 1),
	(4, '2024-11-07 16:19:48.890', '2024-11-07 16:19:48.890', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 9218400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"ID":22}', '{"code":0,"data":{},"msg":"删除成功"}', 1),
	(5, '2024-11-07 16:20:00.786', '2024-11-07 16:20:00.786', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 13056900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"ID":14}', '{"code":0,"data":{},"msg":"删除成功"}', 1),
	(6, '2024-11-07 16:20:03.913', '2024-11-07 16:20:03.913', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 6869600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"ID":13}', '{"code":0,"data":{},"msg":"删除成功"}', 1),
	(7, '2024-11-07 16:20:06.327', '2024-11-07 16:20:06.327', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 9608400, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"ID":12}', '{"code":0,"data":{},"msg":"删除成功"}', 1),
	(8, '2024-11-07 16:20:08.424', '2024-11-07 16:20:08.424', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 10233100, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"ID":11}', '{"code":0,"data":{},"msg":"删除成功"}', 1),
	(9, '2024-11-07 16:20:12.811', '2024-11-07 16:20:12.811', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 8725500, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"ID":2}', '{"code":0,"data":{},"msg":"删除成功"}', 1),
	(10, '2024-11-07 16:20:22.226', '2024-11-07 16:20:22.226', NULL, '127.0.0.1', 'POST', '/menu/deleteBaseMenu', 200, 6122600, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{"ID":30}', '{"code":0,"data":{},"msg":"删除成功"}', 1),
	(11, '2024-11-07 16:20:29.435', '2024-11-07 16:20:29.435', NULL, '127.0.0.1', 'GET', '/api/getApiGroups', 200, 2841900, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{}', '{"code":0,"data":{"apiGroupMap":{"api":"api","authority":"角色","authorityBtn":"按钮权限","autoCode":"代码生成器历史","casbin":"casbin","customer":"客户","email":"email","fileUploadAndDownload":"文件上传与下载","info":"公告","jwt":"jwt","menu":"菜单","simpleUploader":"断点续传(插件版)","sysDictionary":"系统字典","sysDictionaryDetail":"系统字典详情","sysExportTemplate":"表格模板","sysOperationRecord":"操作记录","sysParams":"参数管理","system":"系统服务","user":"系统用户"},"groups":["jwt","系统用户","api","角色","casbin","菜单","分片上传","文件上传与下载","系统服务","客户","代码生成器","模板配置","代码生成器历史","系统字典详情","系统字典","操作记录","断点续传(插件版)","email","按钮权限","表格模板","公告","参数管理"]},"msg":"成功"}', 1),
	(12, '2024-11-07 16:20:31.107', '2024-11-07 16:20:31.107', NULL, '127.0.0.1', 'GET', '/api/getApiGroups', 200, 517800, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '', '{}', '{"code":0,"data":{"apiGroupMap":{"api":"api","authority":"角色","authorityBtn":"按钮权限","autoCode":"代码生成器历史","casbin":"casbin","customer":"客户","email":"email","fileUploadAndDownload":"文件上传与下载","info":"公告","jwt":"jwt","menu":"菜单","simpleUploader":"断点续传(插件版)","sysDictionary":"系统字典","sysDictionaryDetail":"系统字典详情","sysExportTemplate":"表格模板","sysOperationRecord":"操作记录","sysParams":"参数管理","system":"系统服务","user":"系统用户"},"groups":["jwt","系统用户","api","角色","casbin","菜单","分片上传","文件上传与下载","系统服务","客户","代码生成器","模板配置","代码生成器历史","系统字典详情","系统字典","操作记录","断点续传(插件版)","email","按钮权限","表格模板","公告","参数管理"]},"msg":"成功"}', 1);

-- 导出  表 coreapi.sys_params 结构
CREATE TABLE IF NOT EXISTS `sys_params` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数名称',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数键',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数值',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '参数说明',
  PRIMARY KEY (`id`),
  KEY `idx_sys_params_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_params 的数据：~0 rows (大约)

-- 导出  表 coreapi.sys_users 结构
CREATE TABLE IF NOT EXISTS `sys_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '系统用户' COMMENT '用户昵称',
  `header_img` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `authority_id` bigint unsigned DEFAULT '888' COMMENT '用户角色ID',
  `phone` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户邮箱',
  `enable` bigint DEFAULT '1' COMMENT '用户是否被冻结 1正常 2冻结',
  `origin_setting` text COLLATE utf8mb4_general_ci COMMENT '配置',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_username` (`username`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`),
  KEY `idx_sys_users_uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_users 的数据：~2 rows (大约)
INSERT INTO `sys_users` (`id`, `created_at`, `updated_at`, `deleted_at`, `uuid`, `username`, `password`, `nick_name`, `header_img`, `authority_id`, `phone`, `email`, `enable`, `origin_setting`) VALUES
	(1, '2024-11-07 16:18:02.003', '2024-11-07 16:19:38.347', NULL, 'c2d86d35-77f8-4a1e-9750-f9a3c9db3799', 'admin', '$2a$10$MN3g2nfH0yDizgpvEwuJQ.KDxrow32ck8gLEj5gqKHq.3pYORZ1o2', '雪落星辰', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 888, '17611111111', '333333333@qq.com', 1, NULL),
	(2, '2024-11-07 16:18:02.003', '2024-11-07 16:18:02.009', NULL, '43f09dea-c229-42d0-bd20-1d069f57253c', 'a303176530', '$2a$10$rB5WmkJDWnA3XDWvOucpXuJlo.tHhbheZopD4FDbuThAg/3bHccbC', '用户1', 'https:///qmplusimg.henrongyi.top/1572075907logo.png', 9528, '17611111111', '333333333@qq.com', 1, NULL);

-- 导出  表 coreapi.sys_user_authority 结构
CREATE TABLE IF NOT EXISTS `sys_user_authority` (
  `sys_user_id` bigint unsigned NOT NULL,
  `sys_authority_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在导出表  coreapi.sys_user_authority 的数据：~4 rows (大约)
INSERT INTO `sys_user_authority` (`sys_user_id`, `sys_authority_authority_id`) VALUES
	(1, 888),
	(1, 8881),
	(1, 9528),
	(2, 888);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
