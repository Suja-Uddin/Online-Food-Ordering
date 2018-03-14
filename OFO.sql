/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : dbproject
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : BADCODER

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2016-05-02 23:17:29
*/


-- ----------------------------
-- Table structure for "DIPTO_SUJA"."AREA"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."AREA" (
"AREA_NAME" VARCHAR2(255 BYTE) NOT NULL ,
"AREA_ID" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AREA
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Gulshan', '3');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Dhanmondi', '1');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Motijheel', '2');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Badda', '4');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Shaymoli', '5');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Uttora', '6');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Lalbag', '7');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Lalmatia', '8');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Kakrail', '9');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Bashundhora', '10');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Baridhara', '11');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Bonani', '12');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Komlapur', '13');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Jatrabari', '14');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Gabtoli', '15');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Bangshal', '16');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Chak Bazar', '17');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Demra', '18');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Gendaria', '19');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Kafrul', '20');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Kalabagan', '21');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Kamrangir Char', '22');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Khilgaon', '23');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Khilkhet', '24');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Mirpur', '25');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Mohammadpur', '26');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Paltan', '27');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('New Market', '28');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Ramna', '29');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Rampura', '30');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Savar', '31');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Shahbag', '32');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Sutrapur', '33');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Tejgaon', '34');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Sabujbag', '35');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Shantinagar', '36');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Saydabad', '37');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Shonir AKhra', '38');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Farmgate', '39');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Kolyanpur', '40');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Mouchak', '41');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Siddheshori', '42');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Shahjahanpur', '43');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Malibag', '44');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Mugda', '45');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Thataribajar', '46');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Mogbajar', '47');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Kuril', '48');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Chankhar pool', '49');
INSERT INTO "DIPTO_SUJA"."AREA" VALUES ('Chankhar pool', '50');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."AUTH_GROUP"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."AUTH_GROUP" (
"ID" NUMBER(11) NOT NULL ,
"NAME" NVARCHAR2(80) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AUTH_GROUP
-- ----------------------------

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" (
"ID" NUMBER(11) NOT NULL ,
"GROUP_ID" NUMBER(11) NOT NULL ,
"PERMISSION_ID" NUMBER(11) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AUTH_GROUP_PERMISSIONS
-- ----------------------------

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."AUTH_PERMISSION"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."AUTH_PERMISSION" (
"ID" NUMBER(11) NOT NULL ,
"NAME" NVARCHAR2(255) NULL ,
"CONTENT_TYPE_ID" NUMBER(11) NOT NULL ,
"CODENAME" NVARCHAR2(100) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AUTH_PERMISSION
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('42', 'Can add area', '28', 'add_area');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('43', 'Can change area', '28', 'change_area');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('44', 'Can delete area', '28', 'delete_area');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('45', 'Can add auth user', '29', 'add_authuser');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('46', 'Can change auth user', '29', 'change_authuser');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('47', 'Can delete auth user', '29', 'delete_authuser');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('48', 'Can add bill', '30', 'add_bill');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('49', 'Can change bill', '30', 'change_bill');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('50', 'Can delete bill', '30', 'delete_bill');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('51', 'Can add branch', '31', 'add_branch');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('52', 'Can change branch', '31', 'change_branch');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('53', 'Can delete branch', '31', 'delete_branch');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('54', 'Can add contact branch', '32', 'add_contactbranch');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('55', 'Can change contact branch', '32', 'change_contactbranch');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('56', 'Can delete contact branch', '32', 'delete_contactbranch');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('57', 'Can add django admin log', '33', 'add_djangoadminlog');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('58', 'Can change django admin log', '33', 'change_djangoadminlog');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('59', 'Can delete django admin log', '33', 'delete_djangoadminlog');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('60', 'Can add django content type', '34', 'add_djangocontenttype');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('61', 'Can change django content type', '34', 'change_djangocontenttype');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('62', 'Can delete django content type', '34', 'delete_djangocontenttype');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('63', 'Can add employee', '35', 'add_employee');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('64', 'Can change employee', '35', 'change_employee');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('65', 'Can delete employee', '35', 'delete_employee');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('66', 'Can add food', '36', 'add_food');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('67', 'Can change food', '36', 'change_food');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('68', 'Can delete food', '36', 'delete_food');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('69', 'Can add foodorder', '37', 'add_foodorder');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('70', 'Can change foodorder', '37', 'change_foodorder');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('71', 'Can delete foodorder', '37', 'delete_foodorder');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('72', 'Can add menu', '38', 'add_menu');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('73', 'Can change menu', '38', 'change_menu');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('74', 'Can delete menu', '38', 'delete_menu');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('75', 'Can add order info', '39', 'add_orderinfo');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('76', 'Can change order info', '39', 'change_orderinfo');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('77', 'Can delete order info', '39', 'delete_orderinfo');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('78', 'Can add rating', '40', 'add_rating');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('79', 'Can change rating', '40', 'change_rating');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('80', 'Can delete rating', '40', 'delete_rating');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('81', 'Can add restaurant', '41', 'add_restaurant');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('82', 'Can change restaurant', '41', 'change_restaurant');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('83', 'Can delete restaurant', '41', 'delete_restaurant');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('19', 'Can add customer', '7', 'add_customer');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('20', 'Can change customer', '7', 'change_customer');
INSERT INTO "DIPTO_SUJA"."AUTH_PERMISSION" VALUES ('21', 'Can delete customer', '7', 'delete_customer');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."AUTH_USER"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."AUTH_USER" (
"ID" NUMBER(11) NOT NULL ,
"PASSWORD" NVARCHAR2(128) NULL ,
"LAST_LOGIN" TIMESTAMP(6)  NULL ,
"IS_SUPERUSER" NUMBER(1) NOT NULL ,
"USERNAME" NVARCHAR2(30) NOT NULL ,
"FIRST_NAME" NVARCHAR2(30) NULL ,
"LAST_NAME" NVARCHAR2(30) NULL ,
"EMAIL" NVARCHAR2(254) NULL ,
"IS_STAFF" NUMBER(1) NOT NULL ,
"IS_ACTIVE" NUMBER(1) NOT NULL ,
"DATE_JOINED" TIMESTAMP(6)  NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AUTH_USER
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('62', 'pbkdf2_sha256$20000$n1q1Cl491tGX$PQkABZ2tBRZGnpyQtGKaBFg6K+grRs8IyzEHP2ZySak=', null, '0', 'radon', 'abdullah', 'fuad', 'abdullah@facebook.com', '0', '1', TO_TIMESTAMP(' 2015-12-18 12:19:47:953331', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('142', 'pbkdf2_sha256$20000$cFGhgjvXS3WB$+73fxA+BO2TGqsYJoFRBa+rxWFahjp83qh1XRww0zC8=', null, '0', 'dfd', '1', 'dfd', 'suja.ripon@gmail.com', '0', '1', TO_TIMESTAMP(' 2016-05-01 14:44:32:108444', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('82', 'pbkdf2_sha256$20000$XNv9bWkajgRL$i1wxpIHXNB1BHcQNFNDAfLkUSK9a5UXrWD4NCDObCjw=', TO_TIMESTAMP(' 2015-12-22 05:03:16:188778', 'YYYY-MM-DD HH24:MI:SS:FF6'), '0', 'b', 'a', 'b', 'suja.ripon@gmail.com', '0', '1', TO_TIMESTAMP(' 2015-12-22 05:03:08:857502', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('102', 'pbkdf2_sha256$20000$BI6jJ5sil4Ps$n/I9P37ml1330LAAgTp5dd0SbgkR4KDfEszV3O4bOtY=', TO_TIMESTAMP(' 2016-04-20 12:18:24:861735', 'YYYY-MM-DD HH24:MI:SS:FF6'), '0', 'f', 'f', 'f', 'suja.ripon@gmail.com', '0', '1', TO_TIMESTAMP(' 2016-04-20 12:18:10:622921', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('7', 'pbkdf2_sha256$20000$WFT5vFhK9JB9$Lvn9cTjlqF9xip6Us2jWBtrILOcKJcEUYoiuk5m3Zkg=', null, '0', 'mdmehdi', 'Mehdi', 'Rahman', 'mdmehdirahman@gmail.com', '0', '1', TO_TIMESTAMP(' 2015-12-16 08:30:41:939286', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('42', 'pbkdf2_sha256$20000$Ee1uThxFDOaA$SyMr3CAQanSW0bcPqMhNt7UlUEABlsESwUknahgjTlc=', TO_TIMESTAMP(' 2015-12-17 14:55:27:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'), '0', 'kak', 'kaka', 'KAKA', 'as@gmail.com', '0', '1', TO_TIMESTAMP(' 2015-12-17 14:55:12:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('22', 'pbkdf2_sha256$20000$8WAeJu9mnWOS$NuwFv3X5Nx7kQ4RCLSSk65Nm5HnLSqSPOKUt7t0hijo=', TO_TIMESTAMP(' 2015-12-25 18:30:58:947634', 'YYYY-MM-DD HH24:MI:SS:FF6'), '0', 'triny', 'Safiullah', 'Sabuj', 'suja.ripon@gmail.com', '0', '1', TO_TIMESTAMP(' 2015-12-16 09:53:25:586068', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('122', 'pbkdf2_sha256$20000$qegChi3sOxXf$7K7rQSiKoWf32fxK0VHNhYGk2hkuENHEtsYrf/9uQcA=', TO_TIMESTAMP(' 2016-04-28 18:10:45:310411', 'YYYY-MM-DD HH24:MI:SS:FF6'), '0', 'suja', 'suja', 'uddin', 'suja.ripon@gmail.com', '0', '1', TO_TIMESTAMP(' 2016-04-27 19:37:12:195170', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('1', 'pbkdf2_sha256$20000$FjhjuY0XSLu3$PuQKHYttkpq1RNadqwFS6SAliHSPt6mJmZvGOFsUIIg=', TO_TIMESTAMP(' 2016-05-02 14:56:32:758801', 'YYYY-MM-DD HH24:MI:SS:FF6'), '1', 'baDcoder', null, null, 'suja.ripon@gmail.com', '1', '1', TO_TIMESTAMP(' 2015-12-14 03:04:46:000000', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('8', 'pbkdf2_sha256$20000$6UUpCbnOj4rh$65Mq6oirBI8V43Wo88B2NSOtxnX3bUwPXE8BLyDbPds=', TO_TIMESTAMP(' 2015-12-16 08:32:28:430438', 'YYYY-MM-DD HH24:MI:SS:FF6'), '0', 'sazz', 'sazzad', 'hossain', 'sazzad.cse.88@gmail.com', '0', '1', TO_TIMESTAMP(' 2015-12-16 08:32:11:592132', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."AUTH_USER" VALUES ('6', 'pbkdf2_sha256$20000$VKMqUyInmSmm$8hm5u3eUQeUhkSXFB8gNn0WlXlaYGpbDX3xdK9HRVyU=', TO_TIMESTAMP(' 2015-12-21 06:43:35:744019', 'YYYY-MM-DD HH24:MI:SS:FF6'), '0', 'kaka', 'muhit', 'sarwar', 'muhitsarwar@gmail.com', '0', '1', TO_TIMESTAMP(' 2015-12-16 07:43:07:942749', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."AUTH_USER_GROUPS"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" (
"ID" NUMBER(11) NOT NULL ,
"USER_ID" NUMBER(11) NOT NULL ,
"GROUP_ID" NUMBER(11) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AUTH_USER_GROUPS
-- ----------------------------

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" (
"ID" NUMBER(11) NOT NULL ,
"USER_ID" NUMBER(11) NOT NULL ,
"PERMISSION_ID" NUMBER(11) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AUTH_USER_USER_PERMISSIONS
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" VALUES ('3', '1', '64');
INSERT INTO "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" VALUES ('4', '1', '63');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."BILL"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."BILL" (
"BILL_ID" NUMBER NOT NULL ,
"CUSTOMER_ID" NUMBER NOT NULL ,
"STATUS" NUMBER NULL ,
"AMOUNT" FLOAT(126) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of BILL
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."BILL" VALUES ('1', '1', '0', '2460');
INSERT INTO "DIPTO_SUJA"."BILL" VALUES ('2', '2', '0', '6338');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."BRANCH"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."BRANCH" (
"BRANCH_ID" NUMBER NOT NULL ,
"AREA_ID" NUMBER NOT NULL ,
"RESTAURANT_ID" NUMBER NOT NULL ,
"ADDRESS" VARCHAR2(255 BYTE) NULL ,
"DCHARGE" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of BRANCH
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('3', '3', '25', 'Gulshan', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('4', '4', '59', 'Badda', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('1', '1', '68', 'Dhanmondi', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('2', '2', '1', 'Motijheel', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('5', '5', '65', 'Shaymoli', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('6', '6', '46', 'Uttora', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('7', '7', '28', 'Lalbag', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('8', '8', '92', 'Lalmatia', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('9', '9', '43', 'Kakrail', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('10', '10', '37', 'Bashundhora', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('11', '11', '5', 'Baridhara', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('12', '12', '54', 'Bonani', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('13', '13', '83', 'Komlapur', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('14', '14', '17', 'Jatrabari', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('15', '15', '96', 'Gabtoli', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('16', '16', '27', 'Bangshal', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('17', '17', '39', 'Chak Bazar', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('18', '18', '13', 'Demra', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('19', '19', '100', 'Gendaria', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('20', '20', '95', 'Kafrul', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('21', '21', '12', 'Kalabagan', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('22', '22', '34', 'Kamrangir Char', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('23', '23', '65', 'Khilgaon', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('24', '24', '12', 'Khilkhet', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('25', '25', '69', 'Mirpur', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('26', '26', '45', 'Mohammadpur', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('27', '27', '58', 'Paltan', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('28', '28', '60', 'New Market', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('29', '29', '42', 'Ramna', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('30', '30', '79', 'Rampura', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('31', '31', '36', 'Savar', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('32', '32', '43', 'Shahbag', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('33', '33', '7', 'Sutrapur', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('34', '34', '43', 'Tejgaon', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('35', '35', '49', 'Sabujbag', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('36', '36', '6', 'Shantinagar', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('37', '37', '30', 'Saydabad', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('38', '38', '51', 'Shonir AKhra', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('39', '39', '2', 'Farmgate', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('40', '40', '49', 'Kolyanpur', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('41', '41', '24', 'Mouchak', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('42', '42', '55', 'Siddheshori', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('43', '43', '41', 'Shahjahanpur', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('44', '44', '77', 'Malibag', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('45', '45', '9', 'Mugda', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('46', '46', '40', 'Thataribajar', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('47', '47', '24', 'Mogbajar', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('48', '48', '39', 'Kuril', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('49', '49', '83', 'Jigatola', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('50', '50', '42', 'Chankhar pool', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('51', '1', '16', 'Dhanmondi', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('52', '2', '59', 'Motijheel', '59');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('53', '3', '31', 'Gulshan', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('54', '4', '7', 'Badda', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('55', '5', '87', 'Shaymoli', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('56', '6', '46', 'Uttora', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('57', '7', '73', 'Lalbag', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('58', '8', '30', 'Lalmatia', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('59', '9', '74', 'Kakrail', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('60', '10', '13', 'Bashundhora', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('61', '11', '91', 'Baridhara', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('62', '12', '37', 'Bonani', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('63', '13', '68', 'Komlapur', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('64', '14', '75', 'Jatrabari', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('65', '15', '53', 'Gabtoli', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('66', '16', '51', 'Bangshal', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('67', '17', '25', 'Chak Bazar', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('68', '18', '31', 'Demra', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('69', '19', '92', 'Gendaria', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('70', '20', '38', 'Kafrul', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('71', '21', '88', 'Kalabagan', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('72', '22', '84', 'Kamrangir Char', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('73', '23', '10', 'Khilgaon', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('74', '24', '59', 'Khilkhet', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('75', '25', '89', 'Mirpur', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('76', '26', '47', 'Mohammadpur', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('77', '27', '31', 'Paltan', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('78', '28', '69', 'New Market', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('79', '29', '92', 'Ramna', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('80', '30', '56', 'Rampura', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('81', '31', '60', 'Savar', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('82', '32', '38', 'Shahbag', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('83', '33', '84', 'Sutrapur', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('84', '34', '42', 'Tejgaon', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('85', '35', '51', 'Sabujbag', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('86', '36', '37', 'Shantinagar', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('87', '37', '21', 'Saydabad', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('88', '38', '22', 'Shonir AKhra', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('89', '39', '100', 'Farmgate', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('90', '40', '85', 'Kolyanpur', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('91', '41', '35', 'Mouchak', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('92', '42', '100', 'Siddheshori', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('93', '43', '39', 'Shahjahanpur', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('94', '44', '89', 'Malibag', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('95', '45', '68', 'Mugda', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('96', '46', '94', 'Thataribajar', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('97', '47', '84', 'Mogbajar', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('98', '48', '22', 'Kuril', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('99', '49', '18', 'Jigatola', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('100', '50', '15', 'Chankhar pool', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('101', '1', '17', 'Dhanmondi', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('102', '2', '52', 'Motijheel', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('103', '3', '50', 'Gulshan', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('104', '4', '57', 'Badda', '59');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('105', '5', '4', 'Shaymoli', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('106', '6', '9', 'Uttora', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('107', '7', '10', 'Lalbag', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('108', '8', '3', 'Lalmatia', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('109', '9', '86', 'Kakrail', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('110', '10', '44', 'Bashundhora', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('111', '11', '88', 'Baridhara', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('112', '12', '4', 'Bonani', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('113', '13', '1', 'Komlapur', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('114', '14', '19', 'Jatrabari', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('115', '15', '97', 'Gabtoli', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('116', '16', '82', 'Bangshal', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('117', '17', '99', 'Chak Bazar', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('118', '18', '58', 'Demra', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('119', '19', '23', 'Gendaria', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('120', '20', '93', 'Kafrul', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('121', '21', '80', 'Kalabagan', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('122', '22', '58', 'Kamrangir Char', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('123', '23', '92', 'Khilgaon', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('124', '24', '89', 'Khilkhet', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('125', '25', '12', 'Mirpur', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('126', '26', '35', 'Mohammadpur', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('127', '27', '56', 'Paltan', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('128', '28', '47', 'New Market', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('129', '29', '87', 'Ramna', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('130', '30', '34', 'Rampura', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('131', '31', '43', 'Savar', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('132', '32', '17', 'Shahbag', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('133', '33', '99', 'Sutrapur', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('134', '34', '52', 'Tejgaon', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('135', '35', '100', 'Sabujbag', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('136', '36', '77', 'Shantinagar', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('137', '37', '90', 'Saydabad', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('138', '38', '13', 'Shonir AKhra', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('139', '39', '11', 'Farmgate', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('140', '40', '70', 'Kolyanpur', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('141', '41', '89', 'Mouchak', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('142', '42', '90', 'Siddheshori', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('143', '43', '24', 'Shahjahanpur', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('144', '44', '86', 'Malibag', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('145', '45', '86', 'Mugda', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('146', '46', '27', 'Thataribajar', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('147', '47', '58', 'Mogbajar', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('148', '48', '33', 'Kuril', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('149', '49', '55', 'Jigatola', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('150', '50', '90', 'Chankhar pool', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('151', '1', '30', 'Dhanmondi', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('152', '2', '93', 'Motijheel', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('153', '3', '56', 'Gulshan', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('154', '4', '50', 'Badda', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('155', '5', '13', 'Shaymoli', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('156', '6', '61', 'Uttora', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('157', '7', '54', 'Lalbag', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('158', '8', '24', 'Lalmatia', '59');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('159', '9', '97', 'Kakrail', '59');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('160', '10', '30', 'Bashundhora', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('161', '11', '38', 'Baridhara', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('162', '12', '50', 'Bonani', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('163', '13', '96', 'Komlapur', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('164', '14', '17', 'Jatrabari', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('165', '15', '6', 'Gabtoli', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('166', '16', '83', 'Bangshal', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('167', '17', '35', 'Chak Bazar', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('168', '18', '2', 'Demra', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('169', '19', '72', 'Gendaria', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('170', '20', '64', 'Kafrul', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('171', '21', '56', 'Kalabagan', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('172', '22', '54', 'Kamrangir Char', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('173', '23', '9', 'Khilgaon', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('174', '24', '46', 'Khilkhet', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('175', '25', '57', 'Mirpur', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('176', '26', '59', 'Mohammadpur', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('177', '27', '83', 'Paltan', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('178', '28', '45', 'New Market', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('179', '29', '23', 'Ramna', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('180', '30', '62', 'Rampura', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('181', '31', '51', 'Savar', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('182', '32', '67', 'Shahbag', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('183', '33', '60', 'Sutrapur', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('184', '34', '40', 'Tejgaon', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('185', '35', '25', 'Sabujbag', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('186', '36', '11', 'Shantinagar', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('187', '37', '50', 'Saydabad', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('188', '38', '14', 'Shonir AKhra', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('189', '39', '23', 'Farmgate', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('190', '40', '19', 'Kolyanpur', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('191', '41', '6', 'Mouchak', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('192', '42', '92', 'Siddheshori', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('193', '43', '26', 'Shahjahanpur', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('194', '44', '15', 'Malibag', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('195', '45', '25', 'Mugda', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('196', '46', '75', 'Thataribajar', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('197', '47', '60', 'Mogbajar', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('198', '48', '71', 'Kuril', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('199', '49', '98', 'Jigatola', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('200', '50', '78', 'Chankhar pool', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('201', '1', '71', 'Dhanmondi', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('202', '2', '69', 'Motijheel', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('203', '3', '86', 'Gulshan', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('204', '4', '81', 'Badda', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('205', '5', '28', 'Shaymoli', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('206', '6', '100', 'Uttora', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('207', '7', '26', 'Lalbag', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('208', '8', '25', 'Lalmatia', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('209', '9', '73', 'Kakrail', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('210', '10', '82', 'Bashundhora', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('211', '11', '33', 'Baridhara', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('212', '12', '94', 'Bonani', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('213', '13', '32', 'Komlapur', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('214', '14', '43', 'Jatrabari', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('215', '15', '87', 'Gabtoli', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('216', '16', '1', 'Bangshal', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('217', '17', '61', 'Chak Bazar', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('218', '18', '75', 'Demra', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('219', '19', '71', 'Gendaria', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('220', '20', '34', 'Kafrul', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('221', '21', '61', 'Kalabagan', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('222', '22', '68', 'Kamrangir Char', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('223', '23', '51', 'Khilgaon', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('224', '24', '95', 'Khilkhet', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('225', '25', '25', 'Mirpur', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('226', '26', '26', 'Mohammadpur', '59');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('227', '27', '95', 'Paltan', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('228', '28', '3', 'New Market', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('229', '29', '67', 'Ramna', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('230', '30', '94', 'Rampura', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('231', '31', '85', 'Savar', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('232', '32', '65', 'Shahbag', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('233', '33', '53', 'Sutrapur', '59');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('234', '34', '88', 'Tejgaon', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('235', '35', '27', 'Sabujbag', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('236', '36', '58', 'Shantinagar', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('237', '37', '16', 'Saydabad', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('238', '38', '28', 'Shonir AKhra', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('239', '39', '59', 'Farmgate', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('240', '40', '10', 'Kolyanpur', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('241', '41', '87', 'Mouchak', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('242', '42', '88', 'Siddheshori', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('243', '43', '75', 'Shahjahanpur', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('244', '44', '28', 'Malibag', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('245', '45', '29', 'Mugda', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('246', '46', '21', 'Thataribajar', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('247', '47', '63', 'Mogbajar', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('248', '48', '97', 'Kuril', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('249', '49', '62', 'Jigatola', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('250', '50', '26', 'Chankhar pool', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('251', '1', '61', 'Dhanmondi', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('252', '2', '17', 'Motijheel', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('253', '3', '27', 'Gulshan', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('254', '4', '72', 'Badda', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('255', '5', '48', 'Shaymoli', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('256', '6', '21', 'Uttora', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('257', '7', '25', 'Lalbag', '50');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('258', '8', '64', 'Lalmatia', '48');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('259', '9', '52', 'Kakrail', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('260', '10', '30', 'Bashundhora', '42');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('261', '11', '14', 'Baridhara', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('262', '12', '79', 'Bonani', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('263', '13', '8', 'Komlapur', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('264', '14', '1', 'Jatrabari', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('265', '15', '40', 'Gabtoli', '58');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('266', '16', '61', 'Bangshal', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('267', '17', '25', 'Chak Bazar', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('268', '18', '9', 'Demra', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('269', '19', '88', 'Gendaria', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('270', '20', '51', 'Kafrul', '41');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('271', '21', '29', 'Kalabagan', '40');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('272', '22', '85', 'Kamrangir Char', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('273', '23', '41', 'Khilgaon', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('274', '24', '5', 'Khilkhet', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('275', '25', '57', 'Mirpur', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('276', '26', '51', 'Mohammadpur', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('277', '27', '86', 'Paltan', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('278', '28', '17', 'New Market', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('279', '29', '58', 'Ramna', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('280', '30', '58', 'Rampura', '46');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('281', '31', '72', 'Savar', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('282', '32', '62', 'Shahbag', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('283', '33', '23', 'Sutrapur', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('284', '34', '13', 'Tejgaon', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('285', '35', '97', 'Sabujbag', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('286', '36', '42', 'Shantinagar', '45');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('287', '37', '30', 'Saydabad', '43');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('288', '38', '66', 'Shonir AKhra', '49');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('289', '39', '33', 'Farmgate', '59');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('290', '40', '56', 'Kolyanpur', '56');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('291', '41', '63', 'Mouchak', '53');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('292', '42', '35', 'Siddheshori', '44');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('293', '43', '73', 'Shahjahanpur', '54');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('294', '44', '70', 'Malibag', '57');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('295', '45', '64', 'Mugda', '52');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('296', '46', '84', 'Thataribajar', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('297', '47', '36', 'Mogbajar', '51');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('298', '48', '49', 'Kuril', '47');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('299', '49', '39', 'Jigatola', '55');
INSERT INTO "DIPTO_SUJA"."BRANCH" VALUES ('300', '50', '43', 'Chankhar pool', null);

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."CONTACT_BRANCH"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."CONTACT_BRANCH" (
"CONTACT_ID" NUMBER NOT NULL ,
"BRANCH_ID" NUMBER NULL ,
"PHONE" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CONTACT_BRANCH
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('1', '1', '01174094882');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('2', '2', '01455171152');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('3', '3', '01761423221');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('4', '4', '01685761892');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('5', '5', '01795431233');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('6', '6', '01411387427');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('7', '7', '01793198650');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('8', '8', '01286024865');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('9', '9', '01090061389');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('10', '10', '01344606618');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('11', '11', '01496378829');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('12', '12', '01135984076');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('13', '13', '01361542097');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('14', '14', '01372601657');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('15', '15', '01541200146');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('16', '16', '01071777733');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('17', '17', '01599818266');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('18', '18', '01038012509');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('19', '19', '01478351201');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('20', '20', '01640618984');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('21', '21', '01143988087');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('22', '22', '01783837107');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('23', '23', '01349651099');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('24', '24', '01683484992');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('25', '25', '01553337438');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('26', '26', '01088068198');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('27', '27', '01972282890');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('28', '28', '01781586124');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('29', '29', '01258626539');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('30', '30', '01246182119');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('31', '31', '01762952003');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('32', '32', '01918195325');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('33', '33', '01258677229');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('34', '34', '01419698255');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('35', '35', '01491250839');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('36', '36', '01396799769');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('37', '37', '01357665825');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('38', '38', '01441616335');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('39', '39', '01532825361');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('40', '40', '01862146291');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('41', '41', '01503649293');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('42', '42', '01440596342');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('43', '43', '01887581257');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('44', '44', '01444442930');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('45', '45', '01778730382');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('46', '46', '01520372975');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('47', '47', '01343211325');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('48', '48', '01351222640');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('49', '49', '01703400531');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('50', '50', '01067500454');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('51', '51', '01956482168');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('52', '52', '01314849207');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('53', '53', '01060705673');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('54', '54', '01849265774');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('55', '55', '01579830223');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('56', '56', '01671554026');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('57', '57', '01061117300');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('58', '58', '01483012903');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('59', '59', '01885770893');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('60', '60', '01074783710');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('61', '61', '01083450145');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('62', '62', '01620356667');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('63', '63', '01677191627');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('64', '64', '01276513995');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('65', '65', '01926532444');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('66', '66', '01279237315');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('67', '67', '01785832411');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('68', '68', '01595106453');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('69', '69', '01089134746');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('70', '70', '01365281031');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('71', '71', '01552217482');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('72', '72', '01363035280');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('73', '73', '01722591085');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('74', '74', '01079053410');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('75', '75', '01485925413');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('76', '76', '01958279617');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('77', '77', '01719034175');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('78', '78', '01332412908');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('79', '79', '01745680774');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('80', '80', '01313630190');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('81', '81', '01429314820');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('82', '82', '01559328748');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('83', '83', '01143552689');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('84', '84', '01295945058');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('85', '85', '01801322270');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('86', '86', '01313370955');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('87', '87', '01837837939');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('88', '88', '01182801848');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('89', '89', '01609300876');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('90', '90', '01356583948');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('91', '91', '01397645861');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('92', '92', '01551964542');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('93', '93', '01532682663');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('94', '94', '01945625356');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('95', '95', '01614462682');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('96', '96', '01551015176');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('97', '97', '01002433628');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('98', '98', '01234343684');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('99', '99', '01739800880');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('100', '100', '01514363921');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('101', '101', '01982340231');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('102', '102', '01989891351');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('103', '103', '01425389287');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('104', '104', '01014819359');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('105', '105', '01798014755');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('106', '106', '01509282450');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('107', '107', '01440511590');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('108', '108', '01838726938');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('109', '109', '01103384801');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('110', '110', '01541373585');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('111', '111', '01690893606');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('112', '112', '01978941566');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('113', '113', '01666714061');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('114', '114', '01214952341');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('115', '115', '01523168827');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('116', '116', '01712604946');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('117', '117', '01036245881');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('118', '118', '01214982452');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('119', '119', '01998386986');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('120', '120', '01623826275');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('121', '121', '01782780208');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('122', '122', '01928205527');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('123', '123', '01678781609');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('124', '124', '01589000725');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('125', '125', '01521486468');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('126', '126', '01983551558');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('127', '127', '01405472149');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('128', '128', '01903035076');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('129', '129', '01783644195');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('130', '130', '01574734088');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('131', '131', '01152324666');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('132', '132', '01290493119');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('133', '133', '01955560594');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('134', '134', '01634905391');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('135', '135', '01288186024');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('136', '136', '01902215444');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('137', '137', '01250421277');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('138', '138', '01955403412');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('139', '139', '01298227858');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('140', '140', '01394469856');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('141', '141', '01607272647');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('142', '142', '01132163832');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('143', '143', '01860126054');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('144', '144', '01679347881');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('145', '145', '01638761723');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('146', '146', '01785858733');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('147', '147', '01108109249');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('148', '148', '01157334220');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('149', '149', '01127702410');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('150', '150', '01373959720');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('151', '151', '01286708183');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('152', '152', '01036202841');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('153', '153', '01837581704');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('154', '154', '01881367895');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('155', '155', '01556630088');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('156', '156', '01230650972');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('157', '157', '01282944827');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('158', '158', '01258473951');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('159', '159', '01902831431');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('160', '160', '01040790814');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('161', '161', '01079538232');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('162', '162', '01104075905');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('163', '163', '01120989173');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('164', '164', '01307660289');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('165', '165', '01899942087');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('166', '166', '01873076421');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('167', '167', '01916033622');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('168', '168', '01143260549');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('169', '169', '01608274076');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('170', '170', '01012938515');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('171', '171', '01668898707');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('172', '172', '01915863945');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('173', '173', '01382394851');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('174', '174', '01328164677');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('175', '175', '01964192631');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('176', '176', '01597026176');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('177', '177', '01253407553');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('178', '178', '01188801750');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('179', '179', '01590935427');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('180', '180', '01267220117');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('181', '181', '01591817866');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('182', '182', '01992665840');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('183', '183', '01378311257');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('184', '184', '01621611574');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('185', '185', '01856498432');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('186', '186', '01538327068');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('187', '187', '01011953631');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('188', '188', '01534031790');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('189', '189', '01352912617');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('190', '190', '01015229051');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('191', '191', '01836886166');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('192', '192', '01704989498');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('193', '193', '01756486878');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('194', '194', '01095690013');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('195', '195', '01558017746');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('196', '196', '01707412183');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('197', '197', '01571476823');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('198', '198', '01027885971');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('199', '199', '01347137127');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('200', '200', '01534455141');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('201', '201', '01266330081');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('202', '202', '01381698013');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('203', '203', '01939365540');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('204', '204', '01506551896');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('205', '205', '01225052520');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('206', '206', '01672800683');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('207', '207', '01064370520');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('208', '208', '01756181856');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('209', '209', '01592652321');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('210', '210', '01228887400');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('211', '211', '01599530995');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('212', '212', '01111233972');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('213', '213', '01330484392');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('214', '214', '01490574766');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('215', '215', '01309080151');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('216', '216', '01039589625');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('217', '217', '01763859302');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('218', '218', '01515779417');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('219', '219', '01857884238');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('220', '220', '01413041772');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('221', '221', '01131315150');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('222', '222', '01512215538');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('223', '223', '01928427584');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('224', '224', '01094435841');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('225', '225', '01033406755');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('226', '226', '01609835790');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('227', '227', '01487402354');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('228', '228', '01166452912');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('229', '229', '01499376587');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('230', '230', '01897716501');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('231', '231', '01326057449');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('232', '232', '01061190421');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('233', '233', '01970933313');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('234', '234', '01569598839');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('235', '235', '01513628819');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('236', '236', '01813343927');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('237', '237', '01217617306');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('238', '238', '01025607209');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('239', '239', '01543256088');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('240', '240', '01157579237');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('241', '241', '01279363810');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('242', '242', '01687651295');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('243', '243', '01615413850');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('244', '244', '01921335290');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('245', '245', '01485733030');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('246', '246', '01321108187');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('247', '247', '01289230282');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('248', '248', '01558124988');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('249', '249', '01271795034');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('250', '250', '01015342329');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('251', '251', '01492490449');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('252', '252', '01853230171');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('253', '253', '01988329332');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('254', '254', '01834020121');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('255', '255', '01076680588');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('256', '256', '01957322200');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('257', '257', '01231687728');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('258', '258', '01795929130');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('259', '259', '01819202475');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('260', '260', '01810071693');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('261', '261', '01037304323');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('262', '262', '01102771307');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('263', '263', '01036319561');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('264', '264', '01510973081');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('265', '265', '01517179498');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('266', '266', '01001850892');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('267', '267', '01808514736');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('268', '268', '01168086571');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('269', '269', '01028355614');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('270', '270', '01938323373');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('271', '271', '01014878989');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('272', '272', '01791958969');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('273', '273', '01331414576');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('274', '274', '01346383427');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('275', '275', '01890140734');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('276', '276', '01945689899');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('277', '277', '01708456936');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('278', '278', '01200651619');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('279', '279', '01735006518');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('280', '280', '01272452258');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('281', '281', '01698355058');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('282', '282', '01150734156');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('283', '283', '01417040610');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('284', '284', '01552583278');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('285', '285', '01527297631');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('286', '286', '01598954952');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('287', '287', '01522308728');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('288', '288', '01375418296');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('289', '289', '01898163754');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('290', '290', '01101228546');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('291', '291', '01773449183');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('292', '292', '01879711435');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('293', '293', '01291556790');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('294', '294', '01231987844');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('295', '295', '01435802949');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('296', '296', '01835043525');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('297', '297', '01777440411');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('298', '298', '01540286814');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('299', '299', '01764987386');
INSERT INTO "DIPTO_SUJA"."CONTACT_BRANCH" VALUES ('300', '300', '01280980496');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."CUSTOMER"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."CUSTOMER" (
"CUSTOMER_ID" NUMBER NOT NULL ,
"NAME" VARCHAR2(255 BYTE) NOT NULL ,
"ADDRESS" VARCHAR2(255 BYTE) NULL ,
"USERNAME" VARCHAR2(255 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of CUSTOMER
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('2', 'Sabuj', 'NIH,BUET', 'triny');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('7', 'Safiullah', '326,NIH,BUET', 'triny12');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('9', 'a b', 'c', 'b');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('14', '1', '1', 'dfd');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('10', 'a b', 'c', 'b');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('11', 'f', 'f', 'f');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('12', 'Suja', 'NIH', 'baDcoder');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('1', 'Sabuj', 'NIH,BUET', 'triny');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('4', 'Mehdi', '311,NIH,BUET', 'mdmehdi');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('8', 'kaka', 'KAKA', 'kakka');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('13', 'suja', 'nih', 'suja');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('3', 'muhit', '230,nih,buet', 'kaka');
INSERT INTO "DIPTO_SUJA"."CUSTOMER" VALUES ('5', 'sazzad', '311,NIH,BUET', 'sazz');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."DEPARTMENTS"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."DEPARTMENTS" (
"DEPARTMENT_ID" NUMBER(11) NOT NULL ,
"DEPARTMENT_NAME" NVARCHAR2(30) NULL ,
"MANAGER_ID" NUMBER(11) DEFAULT NULL  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DEPARTMENTS
-- ----------------------------

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."DJANGO_ADMIN_LOG"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" (
"ID" NUMBER(11) NOT NULL ,
"ACTION_TIME" TIMESTAMP(6)  NOT NULL ,
"OBJECT_ID" NCLOB NULL ,
"OBJECT_REPR" NVARCHAR2(200) NULL ,
"ACTION_FLAG" NUMBER(11) NOT NULL ,
"CHANGE_MESSAGE" NCLOB NULL ,
"CONTENT_TYPE_ID" NUMBER(11) NULL ,
"USER_ID" NUMBER(11) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DJANGO_ADMIN_LOG
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('2', TO_TIMESTAMP(' 2015-12-27 13:21:28:671513', 'YYYY-MM-DD HH24:MI:SS:FF6'), '42', 'kak', '2', 'No fields changed.', '4', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('3', TO_TIMESTAMP(' 2015-12-27 15:21:31:109213', 'YYYY-MM-DD HH24:MI:SS:FF6'), '1', 'Customer object', '2', 'Changed customer_id.', '7', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('7', TO_TIMESTAMP(' 2015-12-27 18:40:29:979041', 'YYYY-MM-DD HH24:MI:SS:FF6'), '300', 'Branch object', '2', 'Changed dcharge.', '31', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('41', TO_TIMESTAMP(' 2015-12-28 13:59:31:710835', 'YYYY-MM-DD HH24:MI:SS:FF6'), '123', 'kkj (kjk)', '1', null, '36', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('44', TO_TIMESTAMP(' 2015-12-28 14:04:13:792854', 'YYYY-MM-DD HH24:MI:SS:FF6'), '1', 'baDcoder', '2', 'Changed user_permissions.', '4', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('45', TO_TIMESTAMP(' 2015-12-28 14:04:30:479040', 'YYYY-MM-DD HH24:MI:SS:FF6'), '5', 'Employee object', '3', null, '35', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('22', TO_TIMESTAMP(' 2015-12-28 06:27:08:379883', 'YYYY-MM-DD HH24:MI:SS:FF6'), '1', 'Menu object', '2', 'Changed menu_id.', '38', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('1', TO_TIMESTAMP(' 2015-12-27 13:21:27:912470', 'YYYY-MM-DD HH24:MI:SS:FF6'), '42', 'kak', '2', 'Changed username.', '4', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('4', TO_TIMESTAMP(' 2015-12-27 15:21:47:464148', 'YYYY-MM-DD HH24:MI:SS:FF6'), '9', 'Customer object', '2', 'Changed customer_id.', '7', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('5', TO_TIMESTAMP(' 2015-12-27 15:33:59:731617', 'YYYY-MM-DD HH24:MI:SS:FF6'), '49', 'Area object', '2', 'Changed area_id.', '28', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('6', TO_TIMESTAMP(' 2015-12-27 16:31:22:170868', 'YYYY-MM-DD HH24:MI:SS:FF6'), '2999', 'Menu object', '2', 'Changed price.', '38', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('8', TO_TIMESTAMP(' 2015-12-27 19:39:09:067010', 'YYYY-MM-DD HH24:MI:SS:FF6'), '41', 'Food object', '1', null, '36', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('9', TO_TIMESTAMP(' 2015-12-27 19:39:33:390924', 'YYYY-MM-DD HH24:MI:SS:FF6'), '41', 'Food object', '3', null, '36', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('21', TO_TIMESTAMP(' 2015-12-28 06:26:44:890060', 'YYYY-MM-DD HH24:MI:SS:FF6'), '1', 'Menu object', '2', 'Changed menu_id.', '38', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('42', TO_TIMESTAMP(' 2015-12-28 13:59:43:780999', 'YYYY-MM-DD HH24:MI:SS:FF6'), '123', 'kkj (kjk)', '3', null, '36', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('43', TO_TIMESTAMP(' 2015-12-28 14:02:56:803767', 'YYYY-MM-DD HH24:MI:SS:FF6'), '1', 'baDcoder', '2', 'Changed user_permissions.', '4', '1');
INSERT INTO "DIPTO_SUJA"."DJANGO_ADMIN_LOG" VALUES ('46', TO_TIMESTAMP(' 2015-12-28 14:13:37:934678', 'YYYY-MM-DD HH24:MI:SS:FF6'), '4', 'Employee object', '2', 'Changed emp_name.', '35', '1');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."DJANGO_CONTENT_TYPE"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" (
"ID" NUMBER(11) NOT NULL ,
"APP_LABEL" NVARCHAR2(100) NULL ,
"MODEL" NVARCHAR2(100) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DJANGO_CONTENT_TYPE
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('28', 'myapp', 'area');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('29', 'myapp', 'authuser');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('30', 'myapp', 'bill');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('31', 'myapp', 'branch');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('32', 'myapp', 'contactbranch');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('33', 'myapp', 'djangoadminlog');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('34', 'myapp', 'djangocontenttype');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('35', 'myapp', 'employee');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('36', 'myapp', 'food');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('37', 'myapp', 'foodorder');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('38', 'myapp', 'menu');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('39', 'myapp', 'orderinfo');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('40', 'myapp', 'rating');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('41', 'myapp', 'restaurant');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('1', 'admin', 'logentry');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('2', 'auth', 'permission');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('3', 'auth', 'group');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('4', 'auth', 'user');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('6', 'sessions', 'session');
INSERT INTO "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" VALUES ('7', 'myapp', 'customer');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."DJANGO_MIGRATIONS"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."DJANGO_MIGRATIONS" (
"ID" NUMBER(11) NOT NULL ,
"APP" NVARCHAR2(255) NULL ,
"NAME" NVARCHAR2(255) NULL ,
"APPLIED" TIMESTAMP(6)  NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DJANGO_MIGRATIONS
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('13', 'myapp', '0003_auto_20151216_1231', TO_TIMESTAMP(' 2015-12-27 15:10:16:925652', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('14', 'myapp', '0004_delete_customer', TO_TIMESTAMP(' 2015-12-27 15:10:17:113662', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('15', 'myapp', '0005_auto_20151227_2101', TO_TIMESTAMP(' 2015-12-27 15:10:17:181666', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('1', 'contenttypes', '0001_initial', TO_TIMESTAMP(' 2015-12-14 03:04:10:415815', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('2', 'auth', '0001_initial', TO_TIMESTAMP(' 2015-12-14 03:04:12:241018', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('3', 'admin', '0001_initial', TO_TIMESTAMP(' 2015-12-14 03:04:12:615419', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('4', 'contenttypes', '0002_remove_content_type_name', TO_TIMESTAMP(' 2015-12-14 03:04:14:081821', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('5', 'auth', '0002_alter_permission_name_max_length', TO_TIMESTAMP(' 2015-12-14 03:04:14:315822', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('6', 'auth', '0003_alter_user_email_max_length', TO_TIMESTAMP(' 2015-12-14 03:04:14:443825', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('7', 'auth', '0004_alter_user_username_opts', TO_TIMESTAMP(' 2015-12-14 03:04:14:554025', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('8', 'auth', '0005_alter_user_last_login_null', TO_TIMESTAMP(' 2015-12-14 03:04:14:710025', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('9', 'auth', '0006_require_contenttypes_0002', TO_TIMESTAMP(' 2015-12-14 03:04:14:788025', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('10', 'myapp', '0001_initial', TO_TIMESTAMP(' 2015-12-14 03:04:15:037626', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('11', 'myapp', '0002_helo', TO_TIMESTAMP(' 2015-12-14 03:04:15:178026', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_MIGRATIONS" VALUES ('12', 'sessions', '0001_initial', TO_TIMESTAMP(' 2015-12-14 03:04:15:287226', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."DJANGO_SESSION"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."DJANGO_SESSION" (
"SESSION_KEY" NVARCHAR2(40) NOT NULL ,
"SESSION_DATA" NCLOB NULL ,
"EXPIRE_DATE" TIMESTAMP(6)  NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DJANGO_SESSION
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."DJANGO_SESSION" VALUES ('zocmbaai0v3ui3rjf4b4iro3jy1u5tax', 'YzFlOGFkNzMzNmMwMjcxYTg5NzI2NDgyZGIwNGU1MjdkZTUwYTAwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOTYzMWJhYTRkMzgzZjFjYjZhYzczMGEyMWQ5MjNlZWEzODQyMjg3In0=', TO_TIMESTAMP(' 2016-05-16 14:56:32:763801', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_SESSION" VALUES ('w43k8f7fkrqeuwg5v94myy73nnoqec5l', 'MzZlYjkwZWZlMjJlZmRhYmNkNDQ1OTNmZDllN2MxZGQ1ZjEyNDY0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzk2MzFiYWE0ZDM4M2YxY2I2YWM3MzBhMjFkOTIzZWVhMzg0MjI4NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', TO_TIMESTAMP(' 2016-05-09 18:13:42:044550', 'YYYY-MM-DD HH24:MI:SS:FF6'));
INSERT INTO "DIPTO_SUJA"."DJANGO_SESSION" VALUES ('k08f154w3iojl6df2y77kwcdr7gfozt1', 'NDg2MzBjNTE5NTUwZTlkOWE2YjM5OTRlZmE0MmY4YTMzNDBmY2YyMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzk2MzFiYWE0ZDM4M2YxY2I2YWM3MzBhMjFkOTIzZWVhMzg0MjI4NyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', TO_TIMESTAMP(' 2016-01-11 16:00:23:984125', 'YYYY-MM-DD HH24:MI:SS:FF6'));

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."EMP_CONTACT"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."EMP_CONTACT" (
"CONTACT_ID" NUMBER NOT NULL ,
"EMP_ID" NUMBER NULL ,
"PHONE" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of EMP_CONTACT
-- ----------------------------

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."EMPLOYEE"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."EMPLOYEE" (
"EMP_ID" NUMBER NOT NULL ,
"AREA_ID" NUMBER NOT NULL ,
"EMP_NAME" VARCHAR2(255 BYTE) NOT NULL ,
"PHONE" VARCHAR2(10 BYTE) NULL ,
"HIRE_DATE" DATE NULL ,
"SALARY" FLOAT(126) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of EMPLOYEE
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."EMPLOYEE" VALUES ('1', '3', 'Dipto', '0193833984', TO_DATE('2015-12-23 11:50:18', 'YYYY-MM-DD HH24:MI:SS'), '100');
INSERT INTO "DIPTO_SUJA"."EMPLOYEE" VALUES ('2', '8', 'Suja', '0993982919', TO_DATE('2015-12-22 11:50:39', 'YYYY-MM-DD HH24:MI:SS'), '20');
INSERT INTO "DIPTO_SUJA"."EMPLOYEE" VALUES ('3', '1', 'Sabuj', '9929838', TO_DATE('2015-12-22 11:50:58', 'YYYY-MM-DD HH24:MI:SS'), '1000');
INSERT INTO "DIPTO_SUJA"."EMPLOYEE" VALUES ('4', '1', 'Sazzadd', '919399292', TO_DATE('2015-12-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1000');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."EMPLOYEES"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."EMPLOYEES" (
"EMPLOYEE_ID" NUMBER(11) NOT NULL ,
"FIRST_NAME" NVARCHAR2(30) NULL ,
"LAST_NAME" NVARCHAR2(30) NULL ,
"EMAIL" NVARCHAR2(23) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of EMPLOYEES
-- ----------------------------

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."FOOD"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."FOOD" (
"FOOD_ID" NUMBER NOT NULL ,
"FOOD_NAME" VARCHAR2(255 BYTE) NOT NULL ,
"CATEGORY" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of FOOD
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('3', 'Fried Rice', 'Chinese');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('4', 'Rice', 'Bangladeshi');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('5', 'Alu Vorta', 'Vorta');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('6', 'Dal Vorta', 'Vorta');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('7', 'Mach vorta', 'Vorta');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('8', 'Beef Khichuri', 'Khichuri');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('1', 'Chicken Fry', 'Chinese');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('2', 'Grill Chicken', 'Chinese');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('9', 'Mutton Khichuri', 'Khichuri');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('10', 'Chicken Biriyani', 'Biriyani');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('11', 'Prown Soup', 'Soup');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('12', 'Chicken Soup', 'Soup');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('13', 'Thai Soup', 'Soup');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('14', 'Chicken Khichuri', 'Khichuri');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('15', 'Beef Biriyani', 'Biriyani');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('16', 'Mutton Biriyani', 'Biriyani');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('17', 'Dal', 'Bangladeshi');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('18', 'Vegetable', 'Bangladeshi');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('19', 'Beef', 'Bangladeshi');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('20', 'Chicken', 'Bangladeshi');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('21', 'Mutton', 'Bangladeshi');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('22', 'Chinese Vegetable', 'Chinese');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('23', 'Beef Sizzling', 'Chinese');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('24', 'Chowmein', 'Chinese');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('25', 'Burger', 'Fast Food');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('26', 'Pizza ', 'Fast Food');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('27', 'Hot Dog', 'Fast Food');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('28', 'Cutlet', 'Fast Food');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('29', 'Pettis', 'Fast Food');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('30', 'Tea', 'Drinks');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('31', 'Lacchi', 'Drinks');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('32', 'Borhani', 'Drinks');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('33', 'Lemon Soda', 'Drinks');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('34', 'Milk Shake', 'Drinks');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('35', 'Porota', 'Bangladeshi');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('36', 'Rice+Beef+Vorta', 'SetMenu');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('37', 'Fried Rice+Chicken Fry+Vegetable', 'SetMenu');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('38', 'Rice+Beef+Dal', 'SetMenu');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('39', 'Khichuri+Kabab+Drinks', 'SetMenu');
INSERT INTO "DIPTO_SUJA"."FOOD" VALUES ('40', 'Chowmein+Prown+Fish Ball', 'SetMenu');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."FOODORDER"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."FOODORDER" (
"CUSTOMER_ID" NUMBER NOT NULL ,
"EMP_ID" NUMBER NULL ,
"ORDER_DATE" DATE NULL ,
"STATUS" NUMBER NULL ,
"BILL_ID" NUMBER NULL ,
"ORDER_ID" NUMBER NOT NULL ,
"IS_SUBMITTED" NUMBER NULL ,
"AREA_ID" NUMBER NULL ,
"ADDRESS" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of FOODORDER
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('1', null, TO_DATE('2015-12-23 11:19:48', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '2', '1', '4', '230,nih,buet');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('1', null, null, null, null, '12', '0', null, null);
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('1', null, TO_DATE('2015-12-23 11:19:12', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '1', '1', '4', '311,NIH,BUET');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('2', null, TO_DATE('2015-12-23 17:00:27', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '9', '1', '4', '326,NIH,BUET');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('2', null, TO_DATE('2015-12-23 15:38:15', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '8', '1', '4', 'buet');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('13', null, null, null, null, '14', '0', null, null);
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('1', null, TO_DATE('2015-12-25 22:22:03', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '10', '1', '4', '326,NIH,BUET');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('2', null, TO_DATE('2015-12-23 14:59:58', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '6', '1', '4', '326,NIH,BUET');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('2', null, null, null, null, '11', '0', null, null);
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('12', null, null, null, null, '13', '0', null, null);
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('2', null, TO_DATE('2015-12-23 11:55:25', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '3', '1', '4', '326,NIH,BUET');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('1', null, TO_DATE('2015-12-25 14:48:31', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '4', '1', '4', '326,NIH,BUET');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('2', null, TO_DATE('2015-12-23 14:59:21', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '5', '1', '4', 'buet');
INSERT INTO "DIPTO_SUJA"."FOODORDER" VALUES ('2', null, TO_DATE('2015-12-23 15:04:52', 'YYYY-MM-DD HH24:MI:SS'), '0', null, '7', '1', '4', '326,NIH,BUET');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."MENU"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."MENU" (
"MENU_ID" NUMBER NOT NULL ,
"FOOD_ID" NUMBER NOT NULL ,
"BRANCH_ID" NUMBER NOT NULL ,
"PRICE" FLOAT(126) NULL ,
"AMOUNT" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MENU
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('3', '39', '1', '403', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('4', '25', '1', '233', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1', '37', '2', '101', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2', '21', '1', '440', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('5', '2', '1', '89', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('6', '12', '1', '266', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('7', '28', '1', '420', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('8', '5', '1', '203', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('9', '13', '1', '333', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('10', '37', '2', '101', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('11', '8', '2', '389', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('12', '19', '2', '118', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('13', '28', '2', '398', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('14', '15', '2', '409', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('15', '3', '2', '134', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('16', '25', '2', '94', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('17', '14', '2', '341', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('18', '5', '2', '335', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('19', '38', '2', '204', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('20', '22', '3', '377', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('21', '37', '3', '141', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('22', '3', '3', '390', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('23', '1', '3', '372', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('24', '9', '3', '403', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('25', '11', '3', '66', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('26', '31', '3', '483', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('27', '34', '3', '286', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('28', '24', '3', '160', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('29', '37', '3', '55', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('30', '17', '4', '200', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('31', '25', '4', '322', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('32', '4', '4', '391', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('33', '39', '4', '429', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('34', '22', '4', '497', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('35', '40', '4', '204', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('36', '11', '4', '101', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('37', '34', '4', '110', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('38', '26', '4', '180', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('39', '31', '4', '218', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('40', '14', '5', '326', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('41', '27', '5', '191', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('42', '37', '5', '463', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('43', '16', '5', '473', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('44', '13', '5', '298', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('45', '22', '5', '486', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('46', '31', '5', '475', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('47', '8', '5', '173', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('48', '8', '5', '60', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('49', '26', '5', '238', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('50', '39', '6', '147', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('51', '23', '6', '496', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('52', '31', '6', '354', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('53', '21', '6', '321', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('54', '16', '6', '95', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('55', '25', '6', '401', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('56', '4', '6', '483', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('57', '3', '6', '419', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('58', '37', '6', '246', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('59', '37', '6', '338', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('60', '40', '7', '180', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('61', '2', '7', '103', '3');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('62', '40', '7', '477', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('63', '21', '7', '137', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('64', '28', '7', '60', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('65', '9', '7', '268', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('66', '22', '7', '353', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('67', '14', '7', '378', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('68', '17', '7', '363', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('69', '1', '7', '333', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('70', '37', '8', '136', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('71', '25', '8', '482', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('72', '10', '8', '280', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('73', '36', '8', '437', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('74', '24', '8', '284', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('75', '35', '8', '282', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('76', '1', '8', '354', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('77', '21', '8', '416', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('78', '2', '8', '102', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('79', '10', '8', '227', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('80', '23', '9', '165', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('81', '39', '9', '200', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('82', '18', '9', '378', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('83', '16', '9', '264', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('84', '32', '9', '429', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('85', '33', '9', '83', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('86', '7', '9', '426', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('87', '36', '9', '153', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('88', '23', '9', '113', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('89', '2', '9', '450', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('90', '12', '10', '337', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('91', '38', '10', '431', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('92', '30', '10', '389', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('93', '1', '10', '307', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('94', '30', '10', '306', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('95', '2', '10', '422', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('96', '24', '10', '262', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('97', '23', '10', '78', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('98', '27', '10', '355', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('99', '33', '10', '160', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('100', '35', '11', '101', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('101', '17', '11', '163', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('102', '13', '11', '232', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('103', '35', '11', '275', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('104', '33', '11', '70', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('105', '39', '11', '404', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('106', '24', '11', '339', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('107', '8', '11', '500', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('108', '38', '11', '371', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('109', '34', '11', '190', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('110', '17', '12', '370', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('111', '9', '12', '328', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('112', '15', '12', '476', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('113', '37', '12', '424', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('114', '24', '12', '51', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('115', '26', '12', '60', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('116', '9', '12', '249', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('117', '34', '12', '409', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('118', '39', '12', '70', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('119', '2', '12', '245', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('120', '23', '13', '407', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('121', '16', '13', '399', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('122', '27', '13', '61', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('123', '13', '13', '165', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('124', '25', '13', '245', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('125', '26', '13', '157', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('126', '34', '13', '110', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('127', '9', '13', '346', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('128', '26', '13', '225', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('129', '3', '13', '369', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('130', '15', '14', '167', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('131', '15', '14', '68', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('132', '40', '14', '158', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('133', '8', '14', '352', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('134', '18', '14', '299', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('135', '4', '14', '104', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('136', '26', '14', '412', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('137', '14', '14', '342', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('138', '20', '14', '420', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('139', '24', '14', '249', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('140', '13', '15', '250', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('141', '4', '15', '417', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('142', '34', '15', '453', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('143', '13', '15', '134', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('144', '7', '15', '283', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('145', '28', '15', '364', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('146', '15', '15', '356', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('147', '36', '15', '368', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('148', '1', '15', '207', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('149', '6', '15', '190', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('150', '15', '16', '477', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('151', '20', '16', '468', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('152', '15', '16', '194', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('153', '12', '16', '218', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('154', '34', '16', '278', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('155', '19', '16', '423', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('156', '33', '16', '97', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('157', '21', '16', '491', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('158', '38', '16', '70', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('159', '17', '16', '367', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('160', '39', '17', '198', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('161', '3', '17', '300', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('162', '8', '17', '92', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('163', '26', '17', '267', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('164', '9', '17', '157', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('165', '23', '17', '173', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('166', '37', '17', '232', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('167', '36', '17', '412', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('168', '21', '17', '499', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('169', '31', '17', '197', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('170', '12', '18', '341', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('171', '34', '18', '74', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('172', '5', '18', '165', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('173', '21', '18', '221', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('174', '30', '18', '174', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('175', '39', '18', '297', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('176', '8', '18', '348', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('177', '19', '18', '98', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('178', '1', '18', '119', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('179', '38', '18', '417', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('180', '8', '19', '350', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('181', '21', '19', '415', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('182', '25', '19', '276', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('183', '32', '19', '257', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('184', '37', '19', '85', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('185', '24', '19', '311', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('186', '17', '19', '387', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('187', '7', '19', '72', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('188', '32', '19', '96', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('189', '17', '19', '352', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('190', '33', '20', '255', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('191', '26', '20', '119', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('192', '10', '20', '105', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('193', '40', '20', '247', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('194', '16', '20', '325', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('195', '25', '20', '390', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('196', '13', '20', '438', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('197', '13', '20', '402', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('198', '4', '20', '410', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('199', '28', '20', '215', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('200', '19', '21', '93', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('201', '35', '21', '241', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('202', '16', '21', '286', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('203', '22', '21', '323', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('204', '15', '21', '263', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('205', '11', '21', '230', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('206', '22', '21', '156', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('207', '38', '21', '194', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('208', '34', '21', '499', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('209', '3', '21', '146', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('210', '21', '22', '455', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('211', '16', '22', '113', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('212', '23', '22', '259', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('213', '25', '22', '449', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('214', '4', '22', '95', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('215', '1', '22', '474', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('216', '33', '22', '209', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('217', '18', '22', '200', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('218', '16', '22', '429', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('219', '1', '22', '322', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('220', '11', '23', '384', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('221', '31', '23', '461', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('222', '35', '23', '181', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('223', '5', '23', '385', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('224', '40', '23', '439', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('225', '25', '23', '140', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('226', '30', '23', '363', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('227', '13', '23', '461', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('228', '37', '23', '107', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('229', '28', '23', '472', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('230', '1', '24', '360', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('231', '2', '24', '421', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('232', '4', '24', '139', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('233', '25', '24', '441', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('234', '40', '24', '320', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('235', '28', '24', '203', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('236', '27', '24', '215', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('237', '8', '24', '182', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('238', '24', '24', '163', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('239', '27', '24', '491', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('240', '12', '25', '250', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('241', '5', '25', '453', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('242', '34', '25', '440', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('243', '19', '25', '349', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('244', '6', '25', '236', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('245', '24', '25', '402', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('246', '8', '25', '168', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('247', '12', '25', '413', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('248', '36', '25', '349', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('249', '27', '25', '466', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('250', '23', '26', '54', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('251', '10', '26', '209', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('252', '21', '26', '302', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('253', '39', '26', '180', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('254', '4', '26', '168', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('255', '33', '26', '207', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('256', '4', '26', '466', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('257', '24', '26', '375', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('258', '10', '26', '203', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('259', '29', '26', '141', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('260', '9', '27', '59', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('261', '10', '27', '138', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('262', '2', '27', '117', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('263', '9', '27', '74', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('264', '39', '27', '192', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('265', '27', '27', '332', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('266', '4', '27', '414', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('267', '29', '27', '76', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('268', '24', '27', '255', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('269', '26', '27', '432', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('270', '30', '28', '464', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('271', '4', '28', '286', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('272', '7', '28', '122', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('273', '39', '28', '205', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('274', '26', '28', '383', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('275', '30', '28', '143', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('276', '36', '28', '391', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('277', '36', '28', '407', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('278', '37', '28', '317', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('279', '27', '28', '65', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('280', '30', '29', '441', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('281', '27', '29', '483', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('282', '14', '29', '301', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('283', '17', '29', '196', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('284', '35', '29', '388', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('285', '17', '29', '237', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('286', '36', '29', '279', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('287', '31', '29', '243', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('288', '12', '29', '177', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('289', '11', '29', '300', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('290', '35', '30', '481', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('291', '17', '30', '77', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('292', '23', '30', '92', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('293', '24', '30', '195', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('294', '17', '30', '350', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('295', '38', '30', '99', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('296', '29', '30', '384', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('297', '39', '30', '197', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('298', '36', '30', '431', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('299', '24', '30', '378', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('300', '30', '31', '454', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('301', '10', '31', '430', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('302', '14', '31', '466', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('303', '3', '31', '273', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('304', '10', '31', '465', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('305', '9', '31', '118', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('306', '4', '31', '360', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('307', '25', '31', '263', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('308', '34', '31', '227', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('309', '3', '31', '145', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('310', '11', '32', '421', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('311', '29', '32', '401', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('312', '14', '32', '63', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('313', '18', '32', '108', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('314', '21', '32', '156', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('315', '38', '32', '251', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('316', '16', '32', '383', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('317', '13', '32', '170', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('318', '35', '32', '465', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('319', '5', '32', '312', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('320', '16', '33', '277', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('321', '36', '33', '473', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('322', '19', '33', '387', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('323', '18', '33', '240', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('324', '10', '33', '136', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('325', '22', '33', '420', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('326', '4', '33', '429', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('327', '19', '33', '160', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('328', '6', '33', '219', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('329', '14', '33', '496', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('330', '16', '34', '129', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('331', '37', '34', '287', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('332', '39', '34', '233', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('333', '7', '34', '244', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('334', '10', '34', '225', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('335', '40', '34', '156', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('336', '6', '34', '101', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1318', '27', '132', '75', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1319', '33', '132', '233', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1320', '26', '133', '123', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('337', '37', '34', '303', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1317', '26', '132', '433', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1321', '22', '133', '339', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1322', '25', '133', '183', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1323', '6', '133', '173', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1324', '11', '133', '335', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1325', '34', '133', '170', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1326', '17', '133', '103', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1327', '17', '133', '168', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1328', '11', '133', '372', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1329', '31', '133', '164', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1330', '2', '134', '112', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1331', '10', '134', '237', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1332', '3', '134', '182', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1333', '25', '134', '470', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1334', '23', '134', '165', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1335', '29', '134', '72', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1336', '11', '134', '188', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1337', '22', '134', '479', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1338', '35', '134', '62', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1339', '1', '134', '412', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1340', '21', '135', '246', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1341', '26', '135', '215', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1342', '31', '135', '395', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1343', '40', '135', '337', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1344', '10', '135', '356', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1345', '14', '135', '184', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1346', '26', '135', '397', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1347', '39', '135', '196', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1348', '28', '135', '407', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1349', '18', '135', '223', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1350', '25', '136', '188', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1351', '23', '136', '179', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1352', '36', '136', '424', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1353', '39', '136', '282', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1354', '31', '136', '447', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1355', '21', '136', '133', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1356', '21', '136', '425', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1357', '25', '136', '457', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1358', '31', '136', '229', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1359', '7', '136', '233', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1360', '17', '137', '445', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1361', '28', '137', '381', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1362', '16', '137', '497', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1363', '40', '137', '76', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1364', '2', '137', '77', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1365', '38', '137', '133', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1366', '32', '137', '191', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1367', '20', '137', '225', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1368', '20', '137', '468', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1369', '37', '137', '452', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1370', '36', '138', '142', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1371', '22', '138', '342', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1372', '9', '138', '453', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1373', '2', '138', '412', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1374', '8', '138', '500', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1375', '10', '138', '114', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1376', '5', '138', '235', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1377', '5', '138', '242', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1378', '26', '138', '489', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1379', '30', '138', '309', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1380', '28', '139', '102', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1381', '26', '139', '227', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1382', '36', '139', '138', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1383', '14', '139', '278', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1384', '17', '139', '427', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1385', '35', '139', '380', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1386', '25', '139', '361', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1387', '31', '139', '415', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1388', '17', '139', '131', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1389', '7', '139', '392', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1390', '16', '140', '269', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1391', '19', '140', '157', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1392', '39', '140', '163', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1393', '3', '140', '335', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1394', '32', '140', '209', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1395', '22', '140', '255', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1396', '33', '140', '155', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1397', '23', '140', '103', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1398', '19', '140', '171', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1399', '7', '140', '167', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1400', '35', '141', '266', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1401', '4', '141', '211', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1402', '6', '141', '203', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1403', '18', '141', '158', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1404', '11', '141', '163', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1405', '19', '141', '391', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1406', '39', '141', '192', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1407', '37', '141', '280', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1408', '5', '141', '103', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1409', '33', '141', '446', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1410', '32', '142', '303', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1411', '9', '142', '444', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1412', '24', '142', '431', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1413', '9', '142', '78', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1414', '28', '142', '431', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1415', '19', '142', '352', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1416', '17', '142', '332', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1417', '2', '142', '353', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1418', '16', '142', '75', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1419', '19', '142', '214', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1420', '6', '143', '332', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1421', '10', '143', '65', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1422', '28', '143', '217', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1423', '3', '143', '418', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1424', '14', '143', '397', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1425', '18', '143', '313', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1426', '26', '143', '355', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1427', '20', '143', '429', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1428', '16', '143', '265', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1429', '27', '143', '403', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1430', '6', '144', '120', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1431', '21', '144', '372', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1432', '9', '144', '148', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1433', '33', '144', '386', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1434', '39', '144', '278', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1435', '12', '144', '381', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1436', '2', '144', '79', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1437', '23', '144', '470', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1438', '13', '144', '165', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1439', '1', '144', '467', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1440', '1', '145', '440', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1441', '1', '145', '326', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1442', '28', '145', '372', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1443', '17', '145', '236', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1444', '31', '145', '187', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1445', '33', '145', '175', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1446', '8', '145', '140', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1447', '16', '145', '466', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1448', '27', '145', '306', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1449', '27', '145', '233', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1450', '26', '146', '95', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1451', '1', '146', '458', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1452', '13', '146', '231', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1453', '27', '146', '463', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1454', '10', '146', '423', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1455', '34', '146', '95', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1456', '22', '146', '178', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1457', '10', '146', '455', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1458', '6', '146', '130', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1459', '2', '146', '196', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1460', '14', '147', '244', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1461', '36', '147', '448', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1462', '10', '147', '95', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1463', '22', '147', '190', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1464', '13', '147', '192', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1465', '29', '147', '256', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1466', '40', '147', '292', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1467', '5', '147', '92', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1468', '7', '147', '441', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1469', '4', '147', '376', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1470', '34', '148', '419', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1471', '15', '148', '381', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1472', '18', '148', '340', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1473', '7', '148', '192', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1474', '14', '148', '360', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1475', '20', '148', '447', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1476', '34', '148', '392', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1477', '40', '148', '313', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1478', '34', '148', '318', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1479', '12', '148', '470', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1480', '32', '149', '187', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1481', '40', '149', '353', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1482', '33', '149', '371', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1483', '18', '149', '204', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1484', '38', '149', '192', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1485', '26', '149', '499', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1486', '20', '149', '230', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1487', '29', '149', '145', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1488', '30', '149', '467', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1489', '19', '149', '170', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1490', '4', '150', '287', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1491', '25', '150', '144', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1492', '3', '150', '185', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1493', '16', '150', '127', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1494', '24', '150', '207', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1495', '3', '150', '418', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1496', '24', '150', '447', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1497', '31', '150', '320', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1498', '26', '150', '358', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1499', '19', '150', '277', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1500', '1', '151', '254', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1501', '34', '151', '141', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1502', '23', '151', '95', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1503', '39', '151', '429', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1504', '15', '151', '217', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1505', '25', '151', '187', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1506', '31', '151', '147', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1507', '4', '151', '430', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1508', '32', '151', '224', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1509', '39', '151', '154', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1510', '1', '152', '120', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1511', '7', '152', '446', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1512', '7', '152', '90', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1513', '39', '152', '163', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1514', '35', '152', '294', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1515', '37', '152', '253', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1516', '32', '152', '409', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1517', '15', '152', '436', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1518', '17', '152', '81', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1519', '30', '152', '253', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1520', '22', '153', '89', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1521', '4', '153', '364', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1522', '28', '153', '118', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1523', '17', '153', '336', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1524', '24', '153', '465', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1525', '16', '153', '74', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1526', '30', '153', '156', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1527', '19', '153', '425', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1528', '18', '153', '488', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1529', '17', '153', '177', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1530', '35', '154', '357', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1531', '17', '154', '346', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1532', '17', '154', '453', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1533', '3', '154', '412', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1534', '10', '154', '487', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1535', '23', '154', '334', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1536', '17', '154', '170', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1537', '40', '154', '192', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1538', '5', '154', '100', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1539', '25', '154', '59', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1540', '2', '155', '344', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1541', '38', '155', '275', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1542', '21', '155', '104', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1543', '26', '155', '102', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1544', '9', '155', '252', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1545', '1', '155', '468', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1546', '10', '155', '359', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1547', '34', '155', '127', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1548', '3', '155', '304', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1549', '17', '155', '394', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1550', '33', '156', '165', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1551', '20', '156', '195', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1552', '23', '156', '105', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1553', '15', '156', '313', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1554', '39', '156', '315', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1555', '24', '156', '472', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1556', '29', '156', '82', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1557', '28', '156', '343', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1558', '38', '156', '150', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1559', '22', '156', '120', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1560', '2', '157', '312', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1561', '33', '157', '485', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1562', '13', '157', '343', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1563', '12', '157', '100', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1564', '30', '157', '130', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1565', '37', '157', '484', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1566', '21', '157', '381', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1567', '1', '157', '220', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1568', '24', '157', '407', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1569', '12', '157', '371', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1570', '25', '158', '181', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1571', '34', '158', '367', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1572', '24', '158', '341', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1573', '12', '158', '205', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1574', '30', '158', '110', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1575', '27', '158', '453', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1576', '5', '158', '272', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1577', '22', '158', '288', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1578', '4', '158', '209', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1579', '33', '158', '348', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1580', '8', '159', '457', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1581', '10', '159', '206', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1582', '20', '159', '119', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1583', '32', '159', '430', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1584', '17', '159', '179', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1585', '26', '159', '495', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1586', '19', '159', '111', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1587', '16', '159', '491', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1588', '33', '159', '250', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1589', '3', '159', '95', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1590', '14', '160', '126', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1591', '13', '160', '96', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1592', '25', '160', '331', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1593', '33', '160', '416', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1594', '39', '160', '138', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1595', '6', '160', '316', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1596', '25', '160', '465', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1597', '10', '160', '281', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1598', '39', '160', '110', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1599', '4', '160', '137', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1600', '27', '161', '367', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1601', '21', '161', '473', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1602', '28', '161', '106', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1603', '31', '161', '495', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1604', '1', '161', '359', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1605', '27', '161', '77', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1606', '20', '161', '189', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1607', '21', '161', '474', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1608', '28', '161', '333', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1609', '13', '161', '297', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1610', '11', '162', '421', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1611', '11', '162', '310', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1612', '31', '162', '379', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1613', '8', '162', '169', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1614', '18', '162', '226', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1615', '9', '162', '159', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1616', '20', '162', '418', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1617', '30', '162', '350', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1618', '10', '162', '155', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1619', '40', '162', '106', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1620', '21', '163', '209', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1621', '14', '163', '152', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1622', '40', '163', '388', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1623', '31', '163', '434', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1624', '6', '163', '333', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1625', '15', '163', '201', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1626', '40', '163', '499', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1627', '14', '163', '66', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1628', '1', '163', '203', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1629', '32', '163', '469', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1630', '15', '164', '360', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1631', '17', '164', '223', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1632', '26', '164', '51', '6');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('340', '23', '35', '251', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('341', '30', '35', '363', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('342', '34', '35', '88', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('343', '26', '35', '60', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('338', '8', '34', '170', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('339', '21', '34', '208', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('344', '12', '35', '141', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('345', '39', '35', '387', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('346', '28', '35', '160', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('347', '17', '35', '261', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('348', '10', '35', '154', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('349', '11', '35', '280', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('350', '33', '36', '139', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('351', '29', '36', '325', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('352', '33', '36', '398', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('353', '40', '36', '418', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('354', '25', '36', '200', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('355', '30', '36', '248', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('356', '24', '36', '92', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('357', '20', '36', '123', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('358', '37', '36', '74', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('359', '39', '36', '294', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('360', '33', '37', '367', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('361', '8', '37', '338', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('362', '8', '37', '369', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('363', '13', '37', '112', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('364', '40', '37', '203', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('365', '3', '37', '403', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('366', '16', '37', '146', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('367', '17', '37', '349', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('368', '18', '37', '371', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('369', '17', '37', '440', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('370', '6', '38', '279', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('371', '1', '38', '295', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('372', '28', '38', '352', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('373', '36', '38', '312', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('374', '35', '38', '195', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('375', '35', '38', '492', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('376', '10', '38', '202', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('377', '36', '38', '296', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('378', '36', '38', '283', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('379', '35', '38', '53', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('380', '25', '39', '148', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('381', '2', '39', '422', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('382', '30', '39', '403', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('383', '31', '39', '425', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('384', '31', '39', '150', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('385', '18', '39', '266', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('386', '37', '39', '252', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('387', '32', '39', '243', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('388', '26', '39', '132', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('389', '18', '39', '301', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('390', '11', '40', '401', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('391', '2', '40', '182', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('392', '14', '40', '126', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('393', '37', '40', '484', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('394', '13', '40', '258', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('395', '15', '40', '91', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('396', '12', '40', '495', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('397', '20', '40', '247', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('398', '26', '40', '381', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('399', '16', '40', '290', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('400', '7', '41', '339', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('401', '30', '41', '352', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('402', '14', '41', '132', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('403', '13', '41', '348', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('404', '32', '41', '83', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('405', '31', '41', '156', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('406', '20', '41', '150', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('407', '23', '41', '211', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('408', '5', '41', '61', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('409', '23', '41', '451', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('410', '35', '42', '262', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('411', '3', '42', '430', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('412', '30', '42', '479', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('413', '35', '42', '157', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('414', '35', '42', '160', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('415', '33', '42', '399', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('416', '33', '42', '154', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('417', '9', '42', '154', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('418', '24', '42', '326', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('419', '5', '42', '310', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('420', '39', '43', '247', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('421', '7', '43', '142', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('422', '13', '43', '169', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('423', '37', '43', '340', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('424', '22', '43', '114', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('425', '12', '43', '220', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('426', '29', '43', '443', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('427', '19', '43', '250', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('428', '32', '43', '454', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('429', '11', '43', '315', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('430', '7', '44', '234', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('431', '4', '44', '393', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('432', '29', '44', '393', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('433', '37', '44', '191', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('434', '8', '44', '136', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('435', '18', '44', '262', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('436', '28', '44', '183', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('437', '29', '44', '71', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('438', '38', '44', '166', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('439', '22', '44', '373', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('440', '32', '45', '237', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('441', '33', '45', '134', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('442', '2', '45', '473', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('443', '34', '45', '193', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('444', '33', '45', '330', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('445', '22', '45', '266', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('446', '38', '45', '301', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('447', '5', '45', '404', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('448', '24', '45', '406', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('449', '20', '45', '375', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('450', '8', '46', '241', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('451', '23', '46', '309', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('452', '8', '46', '106', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('453', '12', '46', '498', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('454', '21', '46', '139', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('455', '23', '46', '463', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('456', '9', '46', '479', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('457', '39', '46', '485', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('458', '26', '46', '127', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('459', '18', '46', '251', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('460', '39', '47', '456', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('461', '24', '47', '111', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('462', '39', '47', '92', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('463', '6', '47', '420', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('464', '27', '47', '292', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('465', '11', '47', '409', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('466', '13', '47', '438', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('467', '7', '47', '467', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('468', '40', '47', '294', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('469', '23', '47', '87', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('470', '10', '48', '196', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('471', '9', '48', '422', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('472', '33', '48', '493', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('473', '25', '48', '292', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('474', '10', '48', '282', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('475', '30', '48', '469', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('476', '9', '48', '57', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('477', '35', '48', '175', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('478', '1', '48', '118', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('479', '18', '48', '241', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('480', '19', '49', '122', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('481', '21', '49', '498', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('482', '6', '49', '176', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('483', '13', '49', '340', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('484', '12', '49', '99', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('485', '1', '49', '129', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('486', '10', '49', '364', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('487', '32', '49', '181', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('488', '30', '49', '420', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('489', '12', '49', '123', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('490', '34', '50', '350', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('491', '27', '50', '447', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('492', '23', '50', '385', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('493', '19', '50', '209', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('494', '10', '50', '102', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('495', '21', '50', '55', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('496', '9', '50', '62', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('497', '11', '50', '265', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('498', '35', '50', '484', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('499', '20', '50', '282', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('500', '11', '51', '497', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('501', '37', '51', '246', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('502', '22', '51', '98', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('503', '23', '51', '176', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('504', '16', '51', '394', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('505', '17', '51', '228', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('506', '33', '51', '162', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('507', '1', '51', '369', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('508', '31', '51', '441', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('509', '10', '51', '238', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('510', '26', '52', '458', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('511', '17', '52', '394', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('512', '19', '52', '303', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('513', '18', '52', '76', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('514', '10', '52', '339', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('515', '39', '52', '292', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('516', '20', '52', '281', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('517', '14', '52', '359', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('518', '4', '52', '348', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('519', '9', '52', '417', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('520', '14', '53', '484', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('521', '12', '53', '390', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('522', '7', '53', '409', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('523', '30', '53', '61', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('524', '32', '53', '412', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('525', '27', '53', '121', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('526', '16', '53', '298', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('527', '1', '53', '286', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('528', '32', '53', '157', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('529', '3', '53', '232', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('530', '35', '54', '362', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('531', '26', '54', '308', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('532', '22', '54', '382', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('533', '39', '54', '151', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('534', '28', '54', '220', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('535', '16', '54', '446', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('536', '30', '54', '385', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('537', '15', '54', '448', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('538', '33', '54', '181', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('539', '3', '54', '290', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('540', '2', '55', '433', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('541', '26', '55', '57', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('542', '19', '55', '104', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('543', '9', '55', '227', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('544', '40', '55', '255', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('545', '27', '55', '348', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('546', '29', '55', '400', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('547', '14', '55', '279', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('548', '24', '55', '382', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('549', '3', '55', '266', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('550', '27', '56', '86', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('551', '17', '56', '364', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('552', '16', '56', '114', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('553', '39', '56', '151', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('554', '15', '56', '243', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('555', '35', '56', '207', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('556', '36', '56', '74', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('557', '34', '56', '287', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('558', '1', '56', '472', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('559', '11', '56', '206', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('560', '40', '57', '255', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('561', '37', '57', '492', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('562', '6', '57', '362', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('563', '31', '57', '329', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('564', '8', '57', '120', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('565', '4', '57', '457', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('566', '10', '57', '358', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('567', '37', '57', '179', '5');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('568', '11', '57', '286', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('569', '13', '57', '431', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('570', '1', '58', '147', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('571', '19', '58', '118', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('572', '19', '58', '452', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('573', '12', '58', '289', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('574', '18', '58', '292', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('575', '10', '58', '393', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('576', '25', '58', '164', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('577', '18', '58', '440', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('578', '5', '58', '367', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('579', '9', '58', '206', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('580', '31', '59', '109', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('581', '7', '59', '293', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('582', '31', '59', '78', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('583', '16', '59', '368', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('584', '21', '59', '101', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('585', '28', '59', '235', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('586', '28', '59', '288', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('587', '35', '59', '437', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('588', '32', '59', '233', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('589', '6', '59', '242', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('590', '5', '60', '456', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('591', '9', '60', '70', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('592', '1', '60', '449', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('593', '39', '60', '189', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('594', '10', '60', '74', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('595', '14', '60', '213', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('596', '2', '60', '149', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('597', '22', '60', '182', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('598', '26', '60', '55', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('599', '5', '60', '496', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('600', '22', '61', '183', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('601', '33', '61', '98', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('602', '24', '61', '70', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('603', '1', '61', '264', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('604', '34', '61', '144', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('605', '17', '61', '405', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('606', '1', '61', '355', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('607', '20', '61', '132', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('608', '14', '61', '341', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('609', '6', '61', '103', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('610', '36', '62', '457', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('611', '16', '62', '62', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('612', '9', '62', '186', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('613', '3', '62', '288', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('614', '1', '62', '415', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('615', '6', '62', '384', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('616', '37', '62', '133', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('617', '29', '62', '429', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('618', '37', '62', '424', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('619', '21', '62', '229', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('620', '14', '63', '361', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('621', '16', '63', '449', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('622', '28', '63', '421', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('623', '22', '63', '354', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('624', '9', '63', '53', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('625', '26', '63', '414', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('626', '17', '63', '321', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('627', '4', '63', '71', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('628', '3', '63', '278', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('629', '19', '63', '315', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('630', '35', '64', '261', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('631', '16', '64', '62', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('632', '16', '64', '140', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('633', '20', '64', '291', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('634', '32', '64', '162', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('635', '13', '64', '180', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('636', '30', '64', '327', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('637', '14', '64', '195', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('638', '15', '64', '117', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('639', '24', '64', '407', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('640', '25', '65', '303', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('641', '6', '65', '291', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('642', '8', '65', '169', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('643', '4', '65', '62', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('644', '31', '65', '406', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('645', '32', '65', '407', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('646', '31', '65', '187', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('647', '36', '65', '475', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('648', '7', '65', '341', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('649', '8', '65', '219', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('650', '9', '66', '436', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('651', '34', '66', '207', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('652', '6', '66', '213', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('653', '8', '66', '464', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('654', '15', '66', '154', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('655', '39', '66', '117', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('656', '19', '66', '462', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('657', '13', '66', '332', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('658', '25', '66', '341', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('659', '11', '66', '81', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('660', '28', '67', '290', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('661', '12', '67', '487', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('662', '4', '67', '458', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('663', '22', '67', '169', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('664', '16', '67', '189', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('665', '13', '67', '64', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('666', '16', '67', '219', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('667', '40', '67', '305', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('668', '15', '67', '285', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('671', '5', '68', '176', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('669', '6', '67', '194', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('670', '11', '68', '203', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('672', '39', '68', '461', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('673', '11', '68', '311', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('674', '35', '68', '405', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('675', '28', '68', '364', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('676', '17', '68', '244', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('677', '19', '68', '223', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('678', '18', '68', '483', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('679', '25', '68', '178', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('680', '35', '69', '362', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('681', '14', '69', '470', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('682', '2', '69', '145', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('683', '25', '69', '470', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('684', '40', '69', '265', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('685', '5', '69', '152', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('686', '4', '69', '218', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('687', '6', '69', '159', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('688', '29', '69', '332', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('689', '18', '69', '311', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('690', '36', '70', '303', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('691', '34', '70', '382', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('692', '21', '70', '94', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('693', '25', '70', '200', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('694', '31', '70', '325', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('695', '32', '70', '104', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('696', '15', '70', '484', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('697', '30', '70', '421', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('698', '40', '70', '397', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('699', '24', '70', '246', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('700', '6', '71', '489', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('701', '16', '71', '497', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('702', '39', '71', '237', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('703', '36', '71', '277', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('704', '27', '71', '436', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('705', '29', '71', '95', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('706', '19', '71', '171', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('707', '24', '71', '312', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('708', '30', '71', '188', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('709', '23', '71', '364', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('710', '27', '72', '333', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('711', '14', '72', '316', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('712', '11', '72', '416', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('713', '7', '72', '83', '6');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('714', '23', '72', '179', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('715', '26', '72', '458', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('716', '3', '72', '66', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('717', '1', '72', '147', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('718', '12', '72', '497', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('719', '26', '72', '160', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('720', '23', '73', '400', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('721', '23', '73', '129', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('722', '24', '73', '134', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('723', '9', '73', '267', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('724', '37', '73', '310', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('725', '17', '73', '306', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('726', '3', '73', '358', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('727', '37', '73', '426', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('728', '5', '73', '244', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('729', '29', '73', '284', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('730', '40', '74', '134', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('731', '24', '74', '472', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('732', '3', '74', '310', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('733', '35', '74', '478', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('734', '18', '74', '492', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('735', '11', '74', '290', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('736', '34', '74', '418', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('737', '12', '74', '171', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('738', '2', '74', '155', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('739', '33', '74', '78', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('740', '23', '75', '98', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('741', '3', '75', '413', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('742', '16', '75', '469', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('743', '2', '75', '145', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('744', '20', '75', '384', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('745', '3', '75', '88', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('746', '8', '75', '159', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('747', '21', '75', '131', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('748', '31', '75', '179', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('749', '34', '75', '492', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('750', '24', '76', '295', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('751', '35', '76', '483', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('752', '35', '76', '172', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('753', '5', '76', '471', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('754', '39', '76', '255', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('755', '33', '76', '480', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('756', '12', '76', '345', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('757', '30', '76', '175', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('758', '24', '76', '473', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('759', '14', '76', '140', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('760', '9', '77', '177', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('761', '11', '77', '74', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('762', '32', '77', '289', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('763', '21', '77', '155', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('764', '37', '77', '309', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('765', '16', '77', '239', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('766', '20', '77', '220', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('767', '4', '77', '461', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('768', '23', '77', '427', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('769', '23', '77', '184', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('770', '7', '78', '359', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('771', '38', '78', '218', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('772', '28', '78', '115', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('773', '30', '78', '413', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('774', '2', '78', '316', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('775', '29', '78', '207', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('776', '33', '78', '280', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('777', '25', '78', '168', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('778', '29', '78', '500', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('779', '11', '78', '453', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('780', '37', '79', '398', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('781', '1', '79', '478', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('782', '14', '79', '480', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('783', '34', '79', '232', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('784', '22', '79', '319', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('785', '28', '79', '82', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('786', '24', '79', '80', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('787', '1', '79', '204', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('788', '4', '79', '159', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('789', '6', '79', '229', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('790', '6', '80', '203', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('791', '10', '80', '273', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('792', '11', '80', '353', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('793', '16', '80', '228', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('794', '32', '80', '87', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('795', '25', '80', '384', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('796', '21', '80', '256', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('797', '39', '80', '374', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('798', '29', '80', '397', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('799', '39', '80', '88', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('800', '16', '81', '447', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('801', '8', '81', '233', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('802', '2', '81', '215', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('803', '31', '81', '329', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('804', '36', '81', '185', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('805', '1', '81', '278', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('806', '34', '81', '251', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('807', '7', '81', '378', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('808', '40', '81', '381', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('809', '34', '81', '458', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('810', '14', '82', '466', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('811', '11', '82', '214', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('812', '29', '82', '332', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('813', '30', '82', '321', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('814', '8', '82', '313', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('815', '30', '82', '392', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('816', '10', '82', '295', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('817', '4', '82', '428', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('818', '35', '82', '425', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('819', '26', '82', '493', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('820', '34', '83', '150', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('821', '34', '83', '311', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('822', '5', '83', '167', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('823', '9', '83', '450', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('824', '12', '83', '355', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('825', '28', '83', '301', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('826', '40', '83', '480', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('827', '27', '83', '50', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('828', '19', '83', '350', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('829', '8', '83', '260', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('830', '5', '84', '76', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('831', '10', '84', '350', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('832', '13', '84', '443', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('833', '37', '84', '278', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('834', '27', '84', '413', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('835', '28', '84', '389', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('836', '31', '84', '245', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('837', '36', '84', '216', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('838', '23', '84', '244', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('839', '25', '84', '314', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('840', '33', '85', '497', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('841', '7', '85', '214', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('842', '4', '85', '118', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('843', '21', '85', '82', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('844', '22', '85', '315', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('845', '8', '85', '379', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('846', '12', '85', '307', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('847', '15', '85', '81', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('848', '31', '85', '424', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('849', '37', '85', '109', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('850', '16', '86', '194', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('851', '26', '86', '93', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('852', '33', '86', '87', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('853', '26', '86', '414', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('854', '13', '86', '135', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('855', '27', '86', '64', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('856', '36', '86', '201', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('857', '30', '86', '287', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('858', '40', '86', '341', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('859', '36', '86', '101', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('860', '14', '87', '464', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('861', '18', '87', '343', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('862', '4', '87', '312', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('863', '15', '87', '108', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('864', '23', '87', '491', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('865', '39', '87', '442', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('866', '2', '87', '340', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('867', '38', '87', '460', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('868', '22', '87', '344', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('869', '23', '87', '458', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('870', '16', '88', '163', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('871', '18', '88', '62', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('872', '5', '88', '92', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('873', '22', '88', '339', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('874', '29', '88', '169', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('875', '18', '88', '372', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('876', '25', '88', '200', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('877', '33', '88', '440', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('878', '36', '88', '409', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('879', '38', '88', '299', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('880', '13', '89', '388', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('881', '30', '89', '316', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('882', '39', '89', '452', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('883', '35', '89', '385', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('884', '39', '89', '147', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('885', '30', '89', '233', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('886', '39', '89', '75', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('887', '1', '89', '262', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('888', '26', '89', '481', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('889', '8', '89', '354', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('890', '25', '90', '408', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('891', '35', '90', '220', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('892', '6', '90', '435', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('893', '23', '90', '488', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('894', '19', '90', '257', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('895', '38', '90', '401', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('896', '30', '90', '349', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('897', '14', '90', '102', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('898', '23', '90', '473', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('899', '20', '90', '85', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('900', '25', '91', '351', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('901', '9', '91', '331', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('902', '15', '91', '73', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('903', '35', '91', '53', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('904', '35', '91', '275', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('905', '39', '91', '110', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('906', '2', '91', '466', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('907', '17', '91', '117', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('908', '29', '91', '269', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('909', '7', '91', '277', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('910', '23', '92', '172', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('911', '2', '92', '334', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('912', '19', '92', '163', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('913', '24', '92', '121', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('914', '16', '92', '496', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('915', '13', '92', '283', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('916', '12', '92', '341', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('917', '5', '92', '390', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('918', '25', '92', '150', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('919', '10', '92', '157', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('920', '31', '93', '245', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('921', '16', '93', '378', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('922', '33', '93', '254', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('923', '24', '93', '453', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('924', '12', '93', '381', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('925', '13', '93', '107', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('926', '24', '93', '470', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('927', '13', '93', '414', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('928', '33', '93', '490', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('929', '33', '93', '445', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('930', '26', '94', '138', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('931', '23', '94', '244', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('932', '39', '94', '109', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('933', '12', '94', '231', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('934', '35', '94', '82', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('935', '10', '94', '348', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('936', '37', '94', '304', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('937', '20', '94', '454', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('938', '4', '94', '465', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('939', '26', '94', '407', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('940', '27', '95', '169', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('941', '3', '95', '447', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('942', '37', '95', '246', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('943', '35', '95', '157', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('944', '1', '95', '425', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('945', '19', '95', '119', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('946', '19', '95', '134', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('947', '14', '95', '283', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('948', '17', '95', '499', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('949', '8', '95', '152', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('950', '28', '96', '267', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('951', '38', '96', '307', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('952', '35', '96', '480', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('953', '15', '96', '240', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('954', '33', '96', '262', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('955', '27', '96', '497', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('956', '16', '96', '85', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('957', '21', '96', '270', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('958', '20', '96', '338', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('959', '30', '96', '160', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('960', '33', '97', '311', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('961', '2', '97', '122', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('962', '27', '97', '63', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('963', '38', '97', '212', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('964', '25', '97', '337', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('965', '38', '97', '112', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('966', '12', '97', '52', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('967', '33', '97', '197', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('968', '32', '97', '320', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('969', '19', '97', '203', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('970', '1', '98', '264', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('971', '38', '98', '292', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('972', '2', '98', '269', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('973', '29', '98', '448', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('974', '14', '98', '278', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('975', '10', '98', '129', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('976', '8', '98', '490', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('977', '31', '98', '318', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('978', '8', '98', '112', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('979', '8', '98', '370', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('980', '6', '99', '425', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('981', '32', '99', '458', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('982', '33', '99', '235', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('983', '6', '99', '456', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('984', '21', '99', '481', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('985', '36', '99', '133', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('986', '18', '99', '400', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('987', '5', '99', '288', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('988', '25', '99', '51', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('989', '39', '99', '269', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('990', '8', '100', '207', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('991', '40', '100', '487', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('992', '37', '100', '233', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('993', '31', '100', '188', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('994', '10', '100', '419', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('995', '1', '100', '378', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('996', '14', '100', '220', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('997', '32', '100', '236', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('998', '2', '100', '188', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('999', '7', '100', '126', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1000', '31', '101', '290', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1001', '21', '101', '463', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1002', '3', '101', '163', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1003', '20', '101', '270', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1004', '19', '101', '165', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1005', '21', '101', '100', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1006', '34', '101', '253', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1007', '38', '101', '82', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1008', '16', '101', '388', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1009', '4', '101', '280', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1010', '32', '102', '320', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1011', '18', '102', '307', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1012', '18', '102', '490', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1013', '18', '102', '145', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1014', '38', '102', '212', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1015', '17', '102', '418', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1016', '29', '102', '423', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1017', '25', '102', '114', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1018', '10', '102', '383', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1019', '13', '102', '283', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1020', '8', '103', '165', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1021', '26', '103', '296', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1022', '34', '103', '321', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1023', '4', '103', '223', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1024', '22', '103', '193', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1025', '9', '103', '65', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1026', '32', '103', '226', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1027', '8', '103', '328', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1028', '23', '103', '116', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1029', '18', '103', '270', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1030', '21', '104', '294', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1031', '37', '104', '161', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1032', '31', '104', '148', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1033', '18', '104', '383', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1034', '8', '104', '495', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1035', '12', '104', '321', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1036', '14', '104', '174', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1037', '26', '104', '120', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1038', '1', '104', '367', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1039', '31', '104', '405', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1040', '32', '105', '415', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1041', '1', '105', '471', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1042', '9', '105', '402', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1043', '37', '105', '96', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1044', '13', '105', '134', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1045', '25', '105', '317', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1046', '37', '105', '88', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1047', '23', '105', '264', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1048', '20', '105', '152', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1049', '12', '105', '386', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1050', '11', '106', '135', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1051', '19', '106', '280', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1052', '4', '106', '273', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1053', '16', '106', '101', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1054', '4', '106', '65', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1055', '9', '106', '94', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1056', '20', '106', '265', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1057', '40', '106', '376', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1058', '3', '106', '341', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1059', '4', '106', '183', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1060', '4', '107', '213', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1061', '36', '107', '499', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1062', '29', '107', '62', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1063', '26', '107', '95', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1064', '11', '107', '246', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1065', '26', '107', '484', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1066', '10', '107', '459', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1067', '6', '107', '213', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1068', '26', '107', '432', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1069', '6', '107', '194', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1070', '35', '108', '405', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1071', '29', '108', '493', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1072', '17', '108', '98', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1073', '23', '108', '179', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1074', '36', '108', '500', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1075', '8', '108', '275', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1076', '9', '108', '437', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1077', '12', '108', '128', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1078', '12', '108', '416', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1079', '33', '108', '129', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1080', '2', '109', '386', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1081', '7', '109', '280', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1082', '4', '109', '60', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1083', '40', '109', '313', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1084', '14', '109', '195', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1085', '15', '109', '348', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1086', '28', '109', '372', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1087', '7', '109', '295', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1088', '38', '109', '318', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1089', '19', '109', '255', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1090', '4', '110', '487', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1091', '12', '110', '447', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1092', '36', '110', '56', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1093', '5', '110', '456', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1094', '2', '110', '297', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1095', '6', '110', '111', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1096', '33', '110', '467', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1097', '37', '110', '390', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1098', '15', '110', '484', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1099', '3', '110', '94', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1100', '16', '111', '288', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1101', '31', '111', '315', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1102', '8', '111', '347', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1103', '17', '111', '146', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1104', '2', '111', '284', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1105', '6', '111', '187', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1106', '10', '111', '197', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1107', '35', '111', '410', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1108', '28', '111', '324', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1109', '2', '111', '407', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1110', '21', '112', '447', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1111', '22', '112', '87', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1112', '38', '112', '158', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1113', '24', '112', '316', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1114', '12', '112', '175', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1115', '19', '112', '194', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1116', '13', '112', '331', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1117', '24', '112', '360', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1118', '28', '112', '425', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1119', '22', '112', '366', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1120', '12', '113', '219', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1121', '20', '113', '52', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1122', '28', '113', '265', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1123', '32', '113', '355', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1124', '7', '113', '80', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1125', '22', '113', '152', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1126', '20', '113', '181', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1127', '2', '113', '187', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1128', '25', '113', '52', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1129', '2', '113', '488', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1130', '1', '114', '457', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1131', '26', '114', '496', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1132', '15', '114', '136', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1133', '30', '114', '333', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1134', '24', '114', '371', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1135', '18', '114', '295', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1136', '12', '114', '437', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1137', '38', '114', '398', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1138', '25', '114', '479', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1139', '30', '114', '461', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1140', '38', '115', '217', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1141', '28', '115', '473', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1142', '23', '115', '208', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1143', '14', '115', '162', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1144', '25', '115', '287', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1145', '16', '115', '441', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1146', '13', '115', '236', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1147', '20', '115', '425', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1148', '35', '115', '294', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1149', '35', '115', '216', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1150', '19', '116', '196', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1151', '39', '116', '223', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1152', '24', '116', '394', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1153', '9', '116', '418', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1154', '1', '116', '379', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1155', '9', '116', '425', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1156', '38', '116', '71', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1157', '39', '116', '184', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1158', '27', '116', '317', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1159', '37', '116', '224', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1160', '4', '117', '481', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1161', '18', '117', '268', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1162', '7', '117', '156', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1163', '12', '117', '383', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1164', '24', '117', '471', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1165', '19', '117', '107', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1166', '35', '117', '257', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1167', '25', '117', '444', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1168', '38', '117', '154', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1169', '23', '117', '125', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1170', '19', '118', '264', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1171', '10', '118', '461', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1172', '16', '118', '495', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1173', '10', '118', '274', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1174', '33', '118', '402', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1175', '33', '118', '287', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1176', '34', '118', '347', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1177', '6', '118', '448', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1178', '38', '118', '187', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1179', '36', '118', '239', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1180', '37', '119', '122', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1181', '32', '119', '162', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1182', '17', '119', '319', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1183', '17', '119', '324', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1184', '39', '119', '345', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1185', '27', '119', '61', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1186', '29', '119', '388', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1187', '30', '119', '216', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1188', '9', '119', '103', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1189', '40', '119', '277', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1190', '8', '120', '280', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1191', '7', '120', '356', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1192', '10', '120', '495', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1193', '22', '120', '436', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1194', '17', '120', '311', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1195', '16', '120', '315', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1196', '10', '120', '269', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1197', '29', '120', '114', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1198', '18', '120', '124', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1199', '36', '120', '498', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1200', '1', '121', '339', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1201', '9', '121', '332', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1202', '31', '121', '338', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1203', '38', '121', '386', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1204', '25', '121', '162', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1205', '20', '121', '348', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1206', '13', '121', '405', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1207', '32', '121', '500', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1208', '34', '121', '344', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1209', '4', '121', '449', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1210', '31', '122', '188', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1211', '2', '122', '310', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1212', '5', '122', '279', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1213', '30', '122', '442', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1214', '13', '122', '411', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1215', '13', '122', '458', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1216', '36', '122', '292', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1217', '18', '122', '118', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1218', '15', '122', '190', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1219', '39', '122', '418', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1220', '15', '123', '65', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1221', '33', '123', '457', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1222', '33', '123', '459', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1223', '16', '123', '61', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1224', '34', '123', '307', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1225', '3', '123', '54', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1226', '23', '123', '190', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1227', '38', '123', '471', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1228', '38', '123', '422', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1229', '38', '123', '378', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1230', '19', '124', '300', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1231', '5', '124', '284', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1232', '37', '124', '73', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1233', '19', '124', '497', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1234', '36', '124', '321', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1235', '27', '124', '142', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1236', '34', '124', '293', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1237', '10', '124', '60', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1238', '26', '124', '98', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1239', '10', '124', '313', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1240', '16', '125', '110', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1241', '8', '125', '258', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1242', '8', '125', '435', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1243', '30', '125', '336', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1244', '11', '125', '298', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1245', '7', '125', '421', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1246', '25', '125', '439', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1247', '17', '125', '195', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1248', '12', '125', '277', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1249', '6', '125', '208', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1250', '6', '126', '481', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1251', '29', '126', '308', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1252', '9', '126', '275', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1253', '17', '126', '315', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1254', '31', '126', '384', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1255', '9', '126', '391', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1256', '21', '126', '256', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1257', '12', '126', '300', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1258', '25', '126', '168', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1259', '22', '126', '71', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1260', '27', '127', '305', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1261', '28', '127', '495', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1262', '39', '127', '96', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1263', '36', '127', '471', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1264', '33', '127', '222', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1265', '38', '127', '409', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1266', '28', '127', '334', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1267', '23', '127', '171', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1268', '27', '127', '288', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1269', '35', '127', '126', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1270', '40', '128', '165', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1271', '40', '128', '77', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1272', '37', '128', '191', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1273', '11', '128', '459', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1274', '25', '128', '268', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1275', '1', '128', '258', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1276', '22', '128', '126', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1277', '9', '128', '364', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1278', '20', '128', '272', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1279', '8', '128', '243', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1280', '18', '129', '172', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1281', '30', '129', '279', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1282', '20', '129', '199', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1283', '22', '129', '139', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1284', '39', '129', '106', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1285', '18', '129', '338', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1286', '3', '129', '386', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1287', '33', '129', '389', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1288', '2', '129', '53', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1289', '8', '129', '244', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1290', '23', '130', '61', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1291', '9', '130', '227', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1292', '34', '130', '155', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1293', '32', '130', '355', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1294', '39', '130', '77', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1295', '40', '130', '153', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1296', '14', '130', '253', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1297', '10', '130', '159', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1298', '22', '130', '93', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1299', '13', '130', '97', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1300', '19', '131', '271', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1301', '16', '131', '214', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1302', '23', '131', '431', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1303', '9', '131', '373', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1304', '9', '131', '353', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1305', '29', '131', '284', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1306', '18', '131', '134', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1307', '26', '131', '397', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1308', '15', '131', '445', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1309', '37', '131', '251', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1310', '22', '132', '269', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1311', '15', '132', '200', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1312', '28', '132', '264', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1313', '12', '132', '436', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1314', '32', '132', '446', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1315', '21', '132', '262', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1316', '24', '132', '427', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1633', '2', '164', '80', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1634', '20', '164', '229', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1635', '40', '164', '137', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1636', '29', '164', '79', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1637', '33', '164', '500', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1638', '16', '164', '136', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1639', '37', '164', '137', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1640', '37', '165', '278', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1641', '24', '165', '283', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1642', '38', '165', '438', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1643', '23', '165', '397', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1644', '7', '165', '147', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1645', '4', '165', '434', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1646', '36', '165', '65', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1647', '39', '165', '151', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1648', '30', '165', '277', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1649', '27', '165', '81', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1650', '2', '166', '368', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1651', '17', '166', '484', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1652', '9', '166', '219', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1653', '30', '166', '136', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1654', '2', '166', '222', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1655', '4', '166', '94', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1656', '10', '166', '87', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1657', '11', '166', '383', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1658', '10', '166', '285', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1659', '28', '166', '293', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1660', '39', '167', '301', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1661', '24', '167', '376', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1662', '39', '167', '53', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1663', '30', '167', '91', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1664', '31', '167', '343', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1665', '4', '167', '453', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1666', '27', '167', '207', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1667', '30', '167', '410', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1668', '38', '167', '351', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1669', '39', '167', '432', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1670', '32', '168', '82', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1671', '21', '168', '97', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1672', '17', '168', '86', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1673', '21', '168', '180', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1674', '5', '168', '482', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1675', '6', '168', '327', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1676', '17', '168', '419', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1677', '30', '168', '107', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1678', '40', '168', '466', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1679', '18', '168', '368', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1680', '18', '169', '404', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1681', '17', '169', '192', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1682', '5', '169', '281', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1683', '1', '169', '298', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1684', '35', '169', '218', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1685', '1', '169', '143', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1686', '22', '169', '465', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1687', '20', '169', '369', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1688', '20', '169', '216', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1689', '7', '169', '160', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1690', '4', '170', '490', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1691', '25', '170', '382', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1692', '11', '170', '354', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1693', '33', '170', '99', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1694', '14', '170', '265', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1695', '29', '170', '206', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1696', '31', '170', '442', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1697', '35', '170', '155', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1698', '39', '170', '195', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1699', '32', '170', '119', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1700', '9', '171', '481', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1701', '21', '171', '334', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1702', '13', '171', '74', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1703', '36', '171', '339', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1704', '32', '171', '447', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1705', '5', '171', '250', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1706', '7', '171', '233', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1707', '39', '171', '202', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1708', '28', '171', '316', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1709', '13', '171', '109', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1710', '31', '172', '343', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1711', '11', '172', '116', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1712', '6', '172', '61', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1713', '15', '172', '459', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1714', '17', '172', '222', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1715', '19', '172', '135', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1716', '22', '172', '257', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1717', '15', '172', '267', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1718', '3', '172', '204', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1719', '16', '172', '92', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1720', '21', '173', '129', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1721', '18', '173', '84', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1722', '30', '173', '72', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1723', '35', '173', '108', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1724', '36', '173', '226', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1725', '5', '173', '185', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1726', '36', '173', '170', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1727', '6', '173', '350', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1728', '37', '173', '265', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1729', '7', '173', '457', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1730', '34', '174', '240', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1731', '30', '174', '412', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1732', '9', '174', '224', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1733', '35', '174', '383', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1734', '15', '174', '339', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1735', '11', '174', '492', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1736', '17', '174', '77', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1737', '24', '174', '154', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1738', '14', '174', '319', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1739', '34', '174', '363', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1740', '33', '175', '134', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1741', '3', '175', '175', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1742', '2', '175', '172', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1743', '1', '175', '117', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1744', '2', '175', '126', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1745', '7', '175', '350', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1746', '16', '175', '114', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1747', '4', '175', '190', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1748', '16', '175', '206', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1749', '2', '175', '162', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1750', '33', '176', '74', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1751', '31', '176', '277', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1752', '20', '176', '102', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1753', '35', '176', '431', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1754', '24', '176', '428', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1755', '29', '176', '223', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1756', '3', '176', '193', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1757', '34', '176', '147', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1758', '16', '176', '334', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1759', '24', '176', '397', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1760', '6', '177', '467', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1761', '8', '177', '95', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1762', '11', '177', '438', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1763', '16', '177', '404', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1764', '35', '177', '483', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1765', '32', '177', '176', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1766', '31', '177', '259', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1767', '17', '177', '104', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1768', '13', '177', '361', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1769', '14', '177', '316', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1770', '1', '178', '51', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1771', '23', '178', '320', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1772', '24', '178', '143', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1773', '30', '178', '190', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1774', '39', '178', '469', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1775', '28', '178', '145', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1776', '8', '178', '105', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1777', '23', '178', '113', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1778', '9', '178', '226', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1779', '30', '178', '167', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1780', '26', '179', '377', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1781', '40', '179', '255', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1782', '16', '179', '147', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1783', '26', '179', '222', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1784', '18', '179', '235', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1785', '11', '179', '422', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1786', '10', '179', '303', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1787', '36', '179', '362', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1788', '23', '179', '206', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1789', '9', '179', '398', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1790', '20', '180', '478', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1791', '27', '180', '157', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1792', '21', '180', '152', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1793', '6', '180', '209', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1794', '2', '180', '484', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1795', '31', '180', '59', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1796', '2', '180', '342', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1797', '6', '180', '52', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1798', '11', '180', '313', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1799', '22', '180', '171', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1800', '35', '181', '259', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1801', '30', '181', '264', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1802', '32', '181', '154', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1803', '23', '181', '287', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1804', '32', '181', '133', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1805', '31', '181', '206', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1806', '16', '181', '298', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1807', '13', '181', '189', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1808', '13', '181', '77', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1809', '16', '181', '437', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1810', '12', '182', '423', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1811', '24', '182', '430', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1812', '11', '182', '278', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1813', '35', '182', '207', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1814', '16', '182', '252', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1815', '32', '182', '363', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1816', '31', '182', '443', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1817', '2', '182', '495', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1818', '4', '182', '134', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1819', '26', '182', '248', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1820', '9', '183', '53', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1821', '10', '183', '319', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1822', '23', '183', '52', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1823', '31', '183', '422', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1824', '40', '183', '64', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1825', '32', '183', '150', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1826', '6', '183', '116', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1827', '10', '183', '468', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1828', '4', '183', '368', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1829', '11', '183', '66', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1830', '5', '184', '273', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1831', '26', '184', '272', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1832', '36', '184', '358', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1833', '33', '184', '444', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1834', '20', '184', '188', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1835', '9', '184', '100', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1836', '9', '184', '309', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1837', '14', '184', '428', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1838', '35', '184', '274', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1839', '35', '184', '347', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1840', '19', '185', '88', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1841', '9', '185', '381', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1842', '17', '185', '321', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1843', '18', '185', '399', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1844', '4', '185', '307', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1845', '25', '185', '467', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1846', '17', '185', '416', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1847', '9', '185', '169', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1848', '34', '185', '170', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1849', '24', '185', '500', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1850', '38', '186', '408', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1851', '22', '186', '138', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1852', '24', '186', '70', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1853', '13', '186', '50', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1854', '34', '186', '381', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1855', '13', '186', '412', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1856', '7', '186', '467', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1857', '7', '186', '332', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1858', '25', '186', '479', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1859', '34', '186', '410', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1860', '1', '187', '326', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1861', '8', '187', '285', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1862', '28', '187', '108', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1863', '6', '187', '359', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1864', '39', '187', '451', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1865', '24', '187', '405', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1866', '19', '187', '369', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1867', '13', '187', '285', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1868', '37', '187', '113', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1869', '19', '187', '323', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1870', '2', '188', '146', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1871', '23', '188', '174', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1872', '34', '188', '166', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1873', '12', '188', '359', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1874', '32', '188', '332', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1875', '5', '188', '314', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1876', '36', '188', '78', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1877', '11', '188', '126', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1878', '11', '188', '99', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1879', '29', '188', '388', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1880', '20', '189', '180', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1881', '12', '189', '137', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1882', '24', '189', '463', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1883', '1', '189', '222', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1884', '5', '189', '430', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1885', '2', '189', '487', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1886', '3', '189', '110', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1887', '12', '189', '496', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1888', '19', '189', '81', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1889', '35', '189', '424', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1890', '26', '190', '196', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1891', '30', '190', '401', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1892', '2', '190', '423', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1893', '13', '190', '334', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1894', '23', '190', '139', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1895', '17', '190', '183', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1896', '29', '190', '315', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1897', '8', '190', '151', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1898', '30', '190', '198', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1899', '12', '190', '396', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1900', '9', '191', '149', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1901', '37', '191', '117', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1902', '27', '191', '330', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1903', '39', '191', '233', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1904', '10', '191', '444', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1905', '15', '191', '199', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1906', '17', '191', '157', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1907', '24', '191', '203', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1908', '20', '191', '78', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1909', '40', '191', '232', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1910', '6', '192', '326', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1911', '13', '192', '207', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1912', '4', '192', '458', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1913', '15', '192', '320', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1914', '35', '192', '431', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1915', '18', '192', '179', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1916', '32', '192', '375', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1917', '8', '192', '284', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1918', '35', '192', '348', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1919', '28', '192', '219', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1920', '12', '193', '173', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1921', '28', '193', '100', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1922', '17', '193', '350', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1923', '38', '193', '277', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1924', '23', '193', '231', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1925', '25', '193', '146', '6');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1926', '24', '193', '431', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1927', '3', '193', '175', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1928', '30', '193', '452', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1929', '36', '193', '311', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1930', '13', '194', '438', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1931', '13', '194', '382', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1932', '32', '194', '90', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1933', '5', '194', '499', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1934', '40', '194', '361', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1935', '29', '194', '403', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1936', '26', '194', '292', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1937', '12', '194', '478', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1938', '36', '194', '456', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1939', '35', '194', '488', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1940', '27', '195', '163', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1941', '34', '195', '54', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1942', '19', '195', '203', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1943', '24', '195', '248', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1944', '19', '195', '361', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1945', '26', '195', '178', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1946', '21', '195', '336', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1947', '1', '195', '213', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1948', '16', '195', '319', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1949', '16', '195', '204', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1950', '26', '196', '287', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1951', '6', '196', '105', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1952', '33', '196', '159', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1953', '26', '196', '250', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1954', '14', '196', '424', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1955', '34', '196', '131', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1956', '15', '196', '495', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1957', '21', '196', '117', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1958', '6', '196', '497', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1959', '29', '196', '241', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1960', '9', '197', '275', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1961', '3', '197', '459', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1962', '33', '197', '235', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1963', '40', '197', '263', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1964', '32', '197', '190', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1965', '35', '197', '363', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1966', '40', '197', '455', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1967', '40', '197', '66', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1968', '26', '197', '245', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1969', '9', '197', '298', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1970', '17', '198', '125', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1971', '15', '198', '157', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1972', '18', '198', '459', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1973', '39', '198', '212', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1974', '24', '198', '398', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1975', '22', '198', '319', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1976', '16', '198', '274', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1977', '19', '198', '339', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1978', '31', '198', '406', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1979', '6', '198', '175', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1980', '6', '199', '498', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1981', '18', '199', '430', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1982', '33', '199', '232', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1983', '32', '199', '321', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1984', '3', '199', '338', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1985', '36', '199', '430', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1986', '2', '199', '385', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1987', '3', '199', '267', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1988', '27', '199', '426', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1989', '18', '199', '342', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1990', '25', '200', '189', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1991', '22', '200', '82', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1992', '7', '200', '80', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1993', '28', '200', '329', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1994', '32', '200', '293', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1995', '38', '200', '453', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1996', '17', '200', '366', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1997', '15', '200', '419', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1998', '27', '200', '244', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('1999', '9', '200', '172', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2000', '19', '201', '365', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2001', '14', '201', '104', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2002', '24', '201', '216', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2003', '11', '201', '393', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2004', '9', '201', '178', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2005', '24', '201', '137', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2006', '22', '201', '409', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2007', '24', '201', '309', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2008', '36', '201', '390', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2009', '10', '201', '249', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2010', '26', '202', '313', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2011', '10', '202', '438', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2012', '17', '202', '217', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2013', '14', '202', '395', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2014', '38', '202', '373', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2015', '21', '202', '68', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2016', '1', '202', '229', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2017', '3', '202', '339', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2018', '27', '202', '261', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2019', '32', '202', '496', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2020', '35', '203', '112', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2021', '30', '203', '336', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2022', '25', '203', '315', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2023', '38', '203', '379', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2024', '31', '203', '271', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2025', '24', '203', '125', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2026', '4', '203', '151', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2027', '30', '203', '396', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2028', '28', '203', '216', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2029', '33', '203', '317', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2030', '9', '204', '178', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2031', '31', '204', '258', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2032', '21', '204', '375', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2033', '13', '204', '64', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2034', '33', '204', '327', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2035', '7', '204', '71', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2036', '23', '204', '283', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2037', '37', '204', '329', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2038', '38', '204', '396', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2039', '37', '204', '338', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2040', '7', '205', '436', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2041', '1', '205', '261', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2042', '28', '205', '223', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2043', '12', '205', '262', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2044', '26', '205', '405', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2045', '4', '205', '136', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2046', '3', '205', '53', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2047', '10', '205', '274', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2048', '12', '205', '79', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2049', '15', '205', '302', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2050', '10', '206', '116', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2051', '10', '206', '389', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2052', '37', '206', '63', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2053', '2', '206', '76', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2054', '6', '206', '229', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2055', '30', '206', '101', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2056', '34', '206', '190', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2057', '23', '206', '349', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2058', '3', '206', '452', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2059', '24', '206', '71', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2060', '9', '207', '352', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2061', '33', '207', '198', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2062', '10', '207', '144', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2063', '34', '207', '106', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2064', '39', '207', '131', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2065', '29', '207', '348', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2066', '5', '207', '240', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2067', '27', '207', '236', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2068', '29', '207', '73', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2069', '22', '207', '229', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2070', '30', '208', '404', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2071', '29', '208', '170', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2072', '32', '208', '258', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2073', '14', '208', '437', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2074', '31', '208', '60', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2075', '20', '208', '203', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2076', '8', '208', '161', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2077', '11', '208', '164', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2078', '14', '208', '303', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2079', '17', '208', '310', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2080', '20', '209', '243', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2081', '8', '209', '335', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2082', '8', '209', '215', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2083', '7', '209', '225', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2084', '4', '209', '315', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2085', '13', '209', '284', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2086', '24', '209', '229', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2087', '21', '209', '394', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2088', '31', '209', '486', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2089', '33', '209', '169', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2090', '7', '210', '240', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2091', '5', '210', '303', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2092', '39', '210', '459', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2093', '6', '210', '184', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2094', '38', '210', '375', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2095', '35', '210', '171', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2096', '2', '210', '358', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2097', '37', '210', '88', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2098', '34', '210', '97', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2099', '24', '210', '73', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2100', '34', '211', '163', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2101', '18', '211', '203', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2102', '24', '211', '236', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2103', '9', '211', '94', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2104', '7', '211', '120', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2105', '19', '211', '390', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2106', '26', '211', '228', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2107', '11', '211', '439', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2108', '20', '211', '66', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2109', '4', '211', '86', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2110', '9', '212', '114', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2111', '9', '212', '75', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2112', '8', '212', '311', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2113', '14', '212', '180', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2114', '19', '212', '126', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2115', '17', '212', '54', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2116', '38', '212', '116', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2117', '33', '212', '56', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2118', '7', '212', '63', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2119', '35', '212', '398', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2120', '7', '213', '292', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2121', '14', '213', '111', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2122', '39', '213', '99', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2123', '35', '213', '325', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2124', '6', '213', '197', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2125', '25', '213', '269', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2126', '37', '213', '403', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2127', '8', '213', '249', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2128', '5', '213', '398', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2129', '30', '213', '70', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2130', '17', '214', '89', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2131', '29', '214', '205', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2132', '31', '214', '99', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2133', '11', '214', '164', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2134', '27', '214', '485', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2135', '7', '214', '339', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2136', '37', '214', '411', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2137', '38', '214', '62', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2138', '28', '214', '293', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2139', '24', '214', '330', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2140', '37', '215', '55', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2141', '39', '215', '281', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2142', '18', '215', '317', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2143', '35', '215', '155', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2144', '8', '215', '288', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2145', '8', '215', '483', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2146', '36', '215', '351', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2147', '40', '215', '310', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2148', '12', '215', '493', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2149', '36', '215', '291', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2150', '35', '216', '421', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2151', '33', '216', '232', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2152', '26', '216', '205', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2153', '29', '216', '111', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2154', '26', '216', '212', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2155', '5', '216', '384', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2156', '24', '216', '395', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2157', '26', '216', '455', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2158', '23', '216', '109', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2159', '35', '216', '218', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2160', '9', '217', '473', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2161', '32', '217', '53', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2162', '3', '217', '144', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2163', '11', '217', '437', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2164', '11', '217', '286', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2165', '23', '217', '51', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2166', '6', '217', '445', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2167', '10', '217', '464', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2168', '10', '217', '145', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2169', '7', '217', '133', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2170', '23', '218', '307', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2171', '35', '218', '237', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2172', '12', '218', '348', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2173', '12', '218', '69', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2174', '3', '218', '433', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2175', '30', '218', '322', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2176', '6', '218', '149', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2177', '8', '218', '398', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2178', '20', '218', '399', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2179', '34', '218', '468', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2180', '13', '219', '344', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2181', '39', '219', '93', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2182', '28', '219', '243', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2183', '13', '219', '93', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2184', '39', '219', '197', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2185', '31', '219', '110', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2186', '10', '219', '61', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2187', '8', '219', '490', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2188', '34', '219', '210', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2189', '9', '219', '153', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2190', '29', '220', '176', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2191', '4', '220', '340', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2192', '37', '220', '322', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2193', '26', '220', '83', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2194', '23', '220', '237', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2195', '9', '220', '351', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2196', '15', '220', '360', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2197', '23', '220', '249', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2198', '11', '220', '197', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2199', '7', '220', '120', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2200', '22', '221', '249', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2201', '8', '221', '256', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2202', '2', '221', '73', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2203', '29', '221', '437', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2204', '25', '221', '234', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2205', '27', '221', '302', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2206', '11', '221', '195', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2207', '34', '221', '429', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2208', '23', '221', '301', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2209', '12', '221', '285', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2210', '26', '222', '417', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2211', '25', '222', '228', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2212', '25', '222', '335', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2213', '2', '222', '86', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2214', '18', '222', '316', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2215', '18', '222', '129', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2216', '22', '222', '63', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2217', '12', '222', '364', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2218', '14', '222', '66', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2219', '14', '222', '441', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2220', '15', '223', '266', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2221', '13', '223', '291', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2222', '13', '223', '269', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2223', '10', '223', '210', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2224', '10', '223', '102', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2225', '6', '223', '239', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2226', '12', '223', '252', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2227', '7', '223', '374', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2228', '11', '223', '223', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2229', '3', '223', '98', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2230', '17', '224', '329', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2231', '40', '224', '233', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2232', '7', '224', '433', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2233', '32', '224', '385', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2234', '29', '224', '343', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2235', '21', '224', '248', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2236', '19', '224', '473', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2237', '19', '224', '178', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2238', '18', '224', '119', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2239', '23', '224', '109', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2240', '22', '225', '213', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2241', '5', '225', '69', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2242', '5', '225', '462', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2243', '5', '225', '435', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2244', '10', '225', '59', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2245', '37', '225', '144', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2246', '14', '225', '423', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2247', '13', '225', '255', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2248', '40', '225', '316', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2249', '28', '225', '383', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2250', '30', '226', '256', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2251', '38', '226', '134', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2252', '5', '226', '401', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2253', '16', '226', '285', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2254', '40', '226', '409', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2255', '5', '226', '109', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2256', '24', '226', '247', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2257', '18', '226', '292', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2258', '12', '226', '261', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2259', '13', '226', '116', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2260', '22', '227', '51', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2261', '34', '227', '162', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2262', '32', '227', '428', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2263', '28', '227', '471', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2264', '16', '227', '219', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2265', '22', '227', '196', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2266', '24', '227', '115', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2267', '11', '227', '428', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2268', '19', '227', '446', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2269', '22', '227', '249', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2270', '24', '228', '176', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2271', '30', '228', '302', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2272', '24', '228', '227', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2273', '10', '228', '283', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2274', '23', '228', '479', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2275', '20', '228', '366', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2276', '22', '228', '426', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2277', '7', '228', '153', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2278', '30', '228', '94', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2279', '32', '228', '184', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2280', '5', '229', '93', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2281', '39', '229', '447', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2282', '18', '229', '104', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2283', '16', '229', '284', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2284', '20', '229', '142', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2285', '40', '229', '183', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2286', '31', '229', '216', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2287', '5', '229', '407', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2288', '6', '229', '115', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2289', '23', '229', '187', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2290', '14', '230', '227', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2291', '12', '230', '470', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2292', '40', '230', '145', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2293', '6', '230', '111', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2294', '32', '230', '262', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2295', '12', '230', '280', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2296', '31', '230', '308', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2297', '19', '230', '258', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2298', '27', '230', '237', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2299', '40', '230', '466', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2300', '40', '231', '407', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2301', '26', '231', '342', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2302', '21', '231', '231', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2303', '22', '231', '500', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2304', '8', '231', '367', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2305', '29', '231', '270', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2306', '39', '231', '156', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2307', '32', '231', '274', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2308', '29', '231', '372', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2309', '33', '231', '163', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2310', '28', '232', '111', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2311', '2', '232', '454', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2312', '12', '232', '151', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2313', '37', '232', '228', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2314', '26', '232', '173', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2315', '29', '232', '492', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2316', '13', '232', '474', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2317', '38', '232', '185', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2318', '40', '232', '256', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2319', '3', '232', '199', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2320', '21', '233', '384', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2321', '21', '233', '311', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2322', '9', '233', '321', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2323', '35', '233', '299', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2324', '3', '233', '178', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2325', '5', '233', '364', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2326', '17', '233', '118', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2327', '30', '233', '244', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2328', '29', '233', '171', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2329', '31', '233', '113', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2330', '38', '234', '240', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2331', '11', '234', '77', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2332', '11', '234', '433', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2333', '40', '234', '283', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2334', '25', '234', '196', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2335', '7', '234', '149', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2336', '28', '234', '159', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2337', '28', '234', '135', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2338', '5', '234', '439', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2339', '16', '234', '355', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2340', '8', '235', '302', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2341', '36', '235', '222', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2342', '38', '235', '239', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2343', '20', '235', '338', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2344', '14', '235', '478', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2345', '5', '235', '323', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2346', '6', '235', '326', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2347', '4', '235', '306', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2348', '40', '235', '111', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2349', '2', '235', '193', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2350', '21', '236', '232', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2351', '6', '236', '323', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2352', '28', '236', '51', '0');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2353', '20', '236', '179', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2354', '39', '236', '306', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2355', '2', '236', '230', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2356', '12', '236', '386', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2357', '24', '236', '457', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2358', '3', '236', '312', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2359', '36', '236', '136', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2360', '17', '237', '145', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2361', '34', '237', '56', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2362', '25', '237', '166', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2363', '28', '237', '428', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2364', '19', '237', '120', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2365', '24', '237', '358', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2366', '20', '237', '329', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2367', '18', '237', '280', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2368', '4', '237', '170', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2369', '8', '237', '130', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2370', '25', '238', '362', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2371', '21', '238', '438', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2372', '38', '238', '298', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2373', '6', '238', '404', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2374', '14', '238', '158', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2375', '28', '238', '405', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2376', '11', '238', '424', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2377', '40', '238', '132', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2378', '6', '238', '180', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2379', '37', '238', '243', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2380', '20', '239', '437', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2381', '36', '239', '428', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2382', '28', '239', '354', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2383', '14', '239', '496', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2384', '4', '239', '487', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2385', '36', '239', '354', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2386', '31', '239', '292', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2387', '18', '239', '199', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2388', '30', '239', '388', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2389', '39', '239', '238', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2390', '30', '240', '312', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2391', '22', '240', '102', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2392', '19', '240', '396', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2393', '11', '240', '88', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2394', '36', '240', '403', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2395', '19', '240', '51', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2396', '25', '240', '85', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2397', '25', '240', '414', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2398', '22', '240', '339', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2399', '22', '240', '353', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2400', '25', '241', '480', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2401', '1', '241', '227', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2402', '35', '241', '207', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2403', '6', '241', '130', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2404', '33', '241', '405', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2405', '39', '241', '482', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2406', '11', '241', '182', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2407', '36', '241', '86', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2408', '2', '241', '207', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2409', '14', '241', '413', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2410', '11', '242', '286', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2411', '9', '242', '316', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2412', '18', '242', '255', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2413', '11', '242', '362', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2414', '39', '242', '283', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2415', '20', '242', '372', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2416', '12', '242', '482', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2417', '28', '242', '205', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2418', '33', '242', '139', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2419', '18', '242', '86', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2420', '22', '243', '214', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2421', '18', '243', '310', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2422', '2', '243', '90', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2423', '35', '243', '383', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2424', '13', '243', '310', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2425', '3', '243', '229', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2426', '16', '243', '329', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2427', '1', '243', '423', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2428', '5', '243', '478', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2429', '4', '243', '309', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2430', '23', '244', '428', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2431', '11', '244', '61', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2432', '3', '244', '94', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2433', '39', '244', '262', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2434', '27', '244', '162', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2435', '19', '244', '331', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2436', '22', '244', '498', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2437', '9', '244', '382', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2438', '28', '244', '73', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2439', '20', '244', '271', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2440', '35', '245', '184', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2441', '39', '245', '435', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2442', '35', '245', '357', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2443', '31', '245', '311', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2444', '9', '245', '291', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2445', '16', '245', '239', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2446', '29', '245', '464', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2447', '39', '245', '133', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2448', '21', '245', '301', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2449', '5', '245', '318', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2450', '21', '246', '349', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2451', '18', '246', '307', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2452', '23', '246', '178', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2453', '8', '246', '386', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2454', '8', '246', '256', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2455', '11', '246', '392', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2456', '12', '246', '139', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2457', '3', '246', '52', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2458', '11', '246', '271', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2459', '37', '246', '106', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2460', '38', '247', '356', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2461', '34', '247', '54', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2462', '15', '247', '246', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2463', '18', '247', '231', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2464', '1', '247', '239', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2465', '2', '247', '216', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2466', '9', '247', '293', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2467', '20', '247', '225', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2468', '31', '247', '117', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2469', '34', '247', '55', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2470', '35', '248', '394', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2471', '34', '248', '422', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2472', '15', '248', '366', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2473', '18', '248', '230', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2474', '7', '248', '138', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2475', '7', '248', '412', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2476', '10', '248', '199', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2477', '27', '248', '146', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2478', '14', '248', '497', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2479', '7', '248', '210', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2480', '39', '249', '483', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2481', '7', '249', '393', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2482', '4', '249', '272', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2483', '19', '249', '305', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2484', '31', '249', '103', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2485', '26', '249', '191', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2486', '38', '249', '272', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2487', '30', '249', '398', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2488', '35', '249', '274', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2489', '33', '249', '488', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2490', '7', '250', '155', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2491', '40', '250', '297', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2492', '12', '250', '255', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2493', '17', '250', '134', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2494', '23', '250', '89', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2495', '10', '250', '432', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2496', '4', '250', '460', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2497', '9', '250', '89', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2498', '37', '250', '433', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2499', '26', '250', '123', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2500', '4', '251', '284', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2501', '12', '251', '352', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2502', '15', '251', '257', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2503', '32', '251', '78', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2504', '6', '251', '295', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2505', '25', '251', '287', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2506', '40', '251', '326', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2507', '10', '251', '123', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2508', '20', '251', '200', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2509', '28', '251', '193', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2510', '26', '252', '179', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2511', '5', '252', '55', '3');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2512', '9', '252', '340', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2513', '10', '252', '277', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2514', '4', '252', '55', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2515', '12', '252', '372', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2516', '22', '252', '251', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2517', '9', '252', '51', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2518', '29', '252', '391', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2519', '5', '252', '127', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2520', '32', '253', '157', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2521', '21', '253', '229', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2522', '26', '253', '108', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2523', '1', '253', '164', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2524', '1', '253', '235', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2525', '26', '253', '426', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2526', '5', '253', '451', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2527', '19', '253', '307', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2528', '27', '253', '424', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2529', '5', '253', '193', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2530', '7', '254', '155', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2531', '12', '254', '125', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2532', '13', '254', '333', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2533', '37', '254', '484', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2534', '8', '254', '166', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2535', '6', '254', '82', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2536', '31', '254', '382', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2537', '18', '254', '194', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2538', '36', '254', '326', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2539', '39', '254', '248', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2540', '32', '255', '334', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2541', '11', '255', '348', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2542', '9', '255', '249', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2543', '31', '255', '407', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2544', '19', '255', '190', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2545', '30', '255', '438', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2546', '6', '255', '342', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2547', '29', '255', '416', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2548', '22', '255', '83', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2549', '2', '255', '163', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2550', '30', '256', '468', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2551', '31', '256', '312', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2552', '3', '256', '266', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2553', '9', '256', '227', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2554', '30', '256', '448', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2555', '32', '256', '481', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2556', '18', '256', '471', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2557', '36', '256', '227', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2558', '11', '256', '371', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2559', '37', '256', '495', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2560', '39', '257', '371', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2561', '22', '257', '240', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2562', '7', '257', '118', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2563', '34', '257', '415', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2564', '1', '257', '175', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2565', '21', '257', '422', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2566', '22', '257', '217', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2567', '34', '257', '297', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2568', '19', '257', '414', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2569', '22', '257', '167', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2570', '37', '258', '323', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2571', '6', '258', '463', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2572', '22', '258', '164', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2573', '8', '258', '278', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2574', '11', '258', '147', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2575', '40', '258', '436', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2576', '14', '258', '195', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2577', '26', '258', '436', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2578', '34', '258', '333', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2579', '7', '258', '137', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2580', '20', '259', '105', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2581', '40', '259', '426', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2582', '15', '259', '105', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2583', '28', '259', '259', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2584', '13', '259', '440', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2585', '19', '259', '396', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2586', '33', '259', '482', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2587', '5', '259', '292', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2588', '10', '259', '365', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2589', '17', '259', '337', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2590', '39', '260', '284', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2591', '9', '260', '207', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2592', '8', '260', '71', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2593', '4', '260', '112', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2594', '30', '260', '147', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2595', '13', '260', '363', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2596', '32', '260', '290', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2597', '6', '260', '442', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2598', '17', '260', '419', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2599', '38', '260', '216', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2600', '9', '261', '142', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2601', '13', '261', '268', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2602', '25', '261', '411', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2603', '8', '261', '78', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2604', '29', '261', '284', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2605', '2', '261', '113', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2606', '8', '261', '412', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2607', '21', '261', '463', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2608', '10', '261', '481', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2609', '24', '261', '467', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2610', '1', '262', '459', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2611', '33', '262', '79', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2612', '11', '262', '333', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2613', '18', '262', '297', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2614', '34', '262', '296', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2615', '20', '262', '109', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2616', '14', '262', '51', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2617', '37', '262', '356', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2618', '13', '262', '483', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2619', '17', '262', '371', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2620', '39', '263', '491', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2621', '39', '263', '370', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2622', '11', '263', '382', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2623', '14', '263', '251', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2624', '37', '263', '305', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2625', '39', '263', '136', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2626', '26', '263', '95', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2627', '12', '263', '322', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2628', '35', '263', '74', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2629', '30', '263', '240', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2630', '9', '264', '60', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2631', '33', '264', '336', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2632', '18', '264', '203', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2633', '22', '264', '128', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2634', '2', '264', '420', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2635', '19', '264', '151', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2636', '22', '264', '346', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2637', '2', '264', '304', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2638', '8', '264', '118', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2639', '40', '264', '277', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2640', '15', '265', '381', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2641', '6', '265', '110', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2642', '25', '265', '155', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2643', '35', '265', '254', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2644', '16', '265', '148', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2645', '31', '265', '457', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2646', '38', '265', '443', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2647', '32', '265', '239', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2648', '13', '265', '239', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2649', '21', '265', '338', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2650', '32', '266', '151', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2651', '19', '266', '396', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2652', '9', '266', '340', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2653', '39', '266', '248', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2654', '38', '266', '294', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2655', '5', '266', '160', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2656', '6', '266', '324', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2657', '22', '266', '218', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2658', '5', '266', '179', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2659', '39', '266', '423', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2660', '18', '267', '265', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2661', '23', '267', '115', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2662', '38', '267', '289', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2663', '12', '267', '319', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2664', '30', '267', '440', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2665', '11', '267', '423', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2666', '7', '267', '385', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2667', '18', '267', '457', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2668', '24', '267', '131', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2669', '40', '267', '398', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2670', '19', '268', '52', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2671', '8', '268', '354', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2672', '3', '268', '125', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2673', '12', '268', '316', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2674', '12', '268', '103', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2675', '13', '268', '318', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2676', '30', '268', '417', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2677', '8', '268', '373', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2678', '2', '268', '128', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2679', '8', '268', '370', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2680', '35', '269', '308', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2681', '3', '269', '281', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2682', '20', '269', '304', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2683', '3', '269', '256', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2684', '33', '269', '434', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2685', '1', '269', '353', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2686', '31', '269', '140', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2687', '5', '269', '153', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2688', '21', '269', '420', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2689', '3', '269', '252', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2690', '21', '270', '53', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2691', '7', '270', '444', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2692', '12', '270', '205', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2693', '23', '270', '378', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2694', '17', '270', '490', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2695', '30', '270', '369', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2696', '36', '270', '68', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2697', '26', '270', '354', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2698', '24', '270', '91', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2699', '18', '270', '266', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2700', '28', '271', '296', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2701', '28', '271', '106', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2702', '9', '271', '442', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2703', '38', '271', '204', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2704', '17', '271', '346', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2705', '12', '271', '250', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2706', '24', '271', '443', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2707', '16', '271', '467', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2708', '35', '271', '173', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2709', '37', '271', '437', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2710', '8', '272', '498', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2711', '2', '272', '132', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2712', '23', '272', '149', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2713', '9', '272', '129', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2714', '32', '272', '287', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2715', '18', '272', '93', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2716', '39', '272', '58', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2717', '28', '272', '177', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2718', '40', '272', '404', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2719', '38', '272', '230', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2720', '15', '273', '77', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2721', '28', '273', '154', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2722', '20', '273', '464', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2723', '19', '273', '388', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2724', '18', '273', '412', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2725', '7', '273', '292', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2726', '32', '273', '400', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2727', '39', '273', '175', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2728', '12', '273', '245', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2729', '4', '273', '325', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2730', '37', '274', '261', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2731', '29', '274', '131', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2732', '25', '274', '261', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2733', '13', '274', '350', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2734', '27', '274', '354', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2735', '32', '274', '331', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2736', '7', '274', '308', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2737', '21', '274', '124', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2738', '7', '274', '132', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2739', '35', '274', '62', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2740', '31', '275', '217', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2741', '30', '275', '447', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2742', '39', '275', '330', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2743', '8', '275', '472', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2744', '2', '275', '57', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2745', '14', '275', '153', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2746', '28', '275', '101', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2747', '23', '275', '278', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2748', '26', '275', '117', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2749', '10', '275', '266', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2750', '16', '276', '105', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2751', '8', '276', '342', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2752', '7', '276', '434', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2753', '10', '276', '151', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2754', '1', '276', '263', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2755', '3', '276', '346', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2756', '19', '276', '472', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2757', '30', '276', '330', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2758', '36', '276', '105', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2759', '8', '276', '113', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2760', '16', '277', '278', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2761', '17', '277', '291', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2762', '38', '277', '466', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2763', '26', '277', '235', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2764', '8', '277', '474', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2765', '37', '277', '411', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2766', '7', '277', '264', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2767', '16', '277', '260', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2768', '37', '277', '297', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2769', '14', '277', '324', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2770', '24', '278', '309', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2771', '15', '278', '369', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2772', '3', '278', '432', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2773', '27', '278', '213', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2774', '15', '278', '259', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2775', '33', '278', '290', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2776', '12', '278', '463', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2777', '17', '278', '457', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2778', '32', '278', '100', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2779', '26', '278', '206', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2780', '19', '279', '154', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2781', '25', '279', '135', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2782', '15', '279', '260', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2783', '36', '279', '52', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2784', '26', '279', '473', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2785', '29', '279', '476', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2786', '27', '279', '152', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2787', '16', '279', '490', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2788', '40', '279', '104', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2789', '14', '279', '89', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2790', '22', '280', '185', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2791', '7', '280', '337', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2792', '13', '280', '355', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2793', '8', '280', '85', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2794', '3', '280', '327', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2795', '9', '280', '105', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2796', '17', '280', '303', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2797', '26', '280', '473', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2798', '6', '280', '84', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2799', '6', '280', '58', '7');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2800', '21', '281', '409', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2801', '24', '281', '478', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2802', '2', '281', '338', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2803', '10', '281', '176', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2804', '23', '281', '59', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2805', '19', '281', '145', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2806', '8', '281', '215', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2807', '30', '281', '96', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2808', '28', '281', '116', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2809', '3', '281', '124', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2810', '28', '282', '368', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2811', '11', '282', '121', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2812', '25', '282', '419', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2813', '10', '282', '197', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2814', '5', '282', '435', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2815', '9', '282', '75', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2816', '11', '282', '211', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2817', '28', '282', '321', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2818', '4', '282', '119', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2819', '17', '282', '333', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2820', '16', '283', '337', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2821', '21', '283', '63', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2822', '12', '283', '371', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2823', '6', '283', '490', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2824', '14', '283', '180', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2825', '27', '283', '432', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2826', '28', '283', '118', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2827', '11', '283', '392', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2828', '27', '283', '133', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2829', '29', '283', '137', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2830', '17', '284', '386', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2831', '40', '284', '183', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2832', '4', '284', '132', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2833', '11', '284', '89', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2834', '39', '284', '84', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2835', '38', '284', '156', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2836', '2', '284', '424', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2837', '31', '284', '77', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2838', '34', '284', '326', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2839', '5', '284', '467', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2840', '10', '285', '438', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2841', '28', '285', '493', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2842', '24', '285', '454', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2843', '35', '285', '196', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2844', '21', '285', '231', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2845', '37', '285', '437', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2846', '34', '285', '390', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2847', '31', '285', '143', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2848', '16', '285', '393', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2849', '32', '285', '81', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2850', '27', '286', '202', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2851', '30', '286', '219', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2852', '28', '286', '385', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2853', '36', '286', '307', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2854', '8', '286', '127', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2855', '29', '286', '292', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2856', '9', '286', '343', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2857', '8', '286', '272', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2858', '17', '286', '301', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2859', '15', '286', '183', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2860', '6', '287', '334', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2861', '14', '287', '366', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2862', '23', '287', '274', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2863', '8', '287', '406', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2864', '4', '287', '104', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2865', '31', '287', '458', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2866', '30', '287', '363', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2867', '3', '287', '479', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2868', '21', '287', '263', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2869', '39', '287', '440', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2870', '13', '288', '306', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2871', '16', '288', '126', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2872', '23', '288', '112', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2873', '28', '288', '202', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2874', '20', '288', '239', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2875', '1', '288', '83', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2876', '14', '288', '395', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2877', '10', '288', '235', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2878', '14', '288', '238', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2879', '7', '288', '393', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2880', '1', '289', '71', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2881', '26', '289', '170', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2882', '16', '289', '499', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2883', '40', '289', '421', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2884', '4', '289', '168', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2885', '11', '289', '282', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2886', '40', '289', '183', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2887', '3', '289', '161', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2888', '30', '289', '496', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2889', '8', '289', '365', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2890', '34', '290', '331', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2891', '37', '290', '456', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2892', '27', '290', '338', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2893', '21', '290', '320', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2894', '7', '290', '107', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2895', '22', '290', '452', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2896', '21', '290', '56', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2897', '19', '290', '54', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2898', '15', '290', '234', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2899', '31', '290', '184', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2900', '7', '291', '399', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2901', '35', '291', '328', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2902', '1', '291', '81', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2903', '39', '291', '269', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2904', '19', '291', '58', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2905', '26', '291', '163', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2906', '33', '291', '259', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2907', '38', '291', '124', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2908', '37', '291', '179', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2909', '25', '291', '346', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2910', '1', '292', '287', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2911', '40', '292', '433', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2912', '23', '292', '234', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2913', '24', '292', '412', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2914', '11', '292', '228', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2915', '29', '292', '102', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2916', '23', '292', '344', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2917', '34', '292', '64', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2918', '38', '292', '252', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2919', '32', '292', '437', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2920', '22', '293', '104', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2921', '19', '293', '110', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2922', '7', '293', '470', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2923', '6', '293', '469', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2924', '26', '293', '295', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2925', '1', '293', '380', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2926', '3', '293', '438', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2927', '8', '293', '277', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2928', '7', '293', '124', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2929', '33', '293', '354', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2930', '10', '294', '156', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2931', '36', '294', '498', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2932', '17', '294', '110', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2933', '11', '294', '196', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2934', '6', '294', '70', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2935', '16', '294', '242', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2936', '21', '294', '413', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2937', '15', '294', '92', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2938', '37', '294', '350', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2939', '1', '294', '298', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2940', '34', '295', '474', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2941', '33', '295', '170', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2942', '19', '295', '434', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2943', '18', '295', '258', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2944', '18', '295', '331', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2945', '34', '295', '481', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2946', '20', '295', '486', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2947', '39', '295', '310', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2948', '29', '295', '330', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2949', '9', '295', '488', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2950', '9', '296', '400', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2951', '36', '296', '497', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2952', '32', '296', '276', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2953', '1', '296', '429', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2954', '40', '296', '424', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2955', '9', '296', '312', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2956', '34', '296', '484', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2957', '11', '296', '175', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2958', '18', '296', '369', '12');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2959', '24', '296', '59', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2960', '1', '297', '422', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2961', '7', '297', '286', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2962', '7', '297', '483', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2963', '10', '297', '490', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2964', '3', '297', '308', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2965', '38', '297', '356', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2966', '13', '297', '125', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2967', '30', '297', '353', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2968', '38', '297', '383', '14');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2969', '36', '297', '458', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2970', '9', '298', '240', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2971', '34', '298', '59', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2972', '4', '298', '189', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2973', '35', '298', '176', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2974', '13', '298', '336', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2975', '6', '298', '395', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2976', '25', '298', '88', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2977', '34', '298', '69', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2978', '27', '298', '289', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2979', '30', '298', '377', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2980', '8', '299', '265', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2981', '15', '299', '146', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2982', '9', '299', '140', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2983', '8', '299', '261', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2984', '6', '299', '270', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2985', '34', '299', '152', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2986', '14', '299', '396', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2987', '30', '299', '159', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2988', '12', '299', '259', '11');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2989', '4', '299', '265', '18');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2990', '3', '300', '253', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2991', '14', '300', '233', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2992', '19', '300', '443', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2993', '6', '300', '446', '19');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2994', '14', '300', '262', '16');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2995', '15', '300', '50', '13');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2996', '20', '300', '372', '17');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2997', '22', '300', '230', '15');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2998', '4', '300', '169', '10');
INSERT INTO "DIPTO_SUJA"."MENU" VALUES ('2999', '6', '300', null, '14');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."MYAPP_HELO"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."MYAPP_HELO" (
"ID" NUMBER(11) NOT NULL ,
"NAME" NVARCHAR2(30) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MYAPP_HELO
-- ----------------------------

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."ORDER_INFO"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."ORDER_INFO" (
"ORDER_ID" NUMBER NOT NULL ,
"MENU_ID" NUMBER NOT NULL ,
"AMOUNT" NUMBER NOT NULL ,
"ORDERINFO_ID" NUMBER NOT NULL ,
"IS_CHECKED" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ORDER_INFO
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('11', '2118', '3', '20', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('1', '827', '2', '1', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('12', '2063', '3', '21', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('8', '827', '2', '10', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('6', '2511', '6', '7', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('8', '1632', '6', '11', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('6', '2799', '8', '8', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('9', '1921', '1', '13', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('14', '2995', '2', '23', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('13', '2165', '1', '26', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('11', '2511', '2', '16', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('8', '988', '5', '12', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('9', '1925', '5', '14', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('6', '1797', '5', '6', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('10', '2352', '14', '15', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('11', '1797', '1', '17', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('11', '2799', '1', '18', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('11', '1712', '2', '19', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('13', '1853', '11', '22', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('13', '2395', '2', '25', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('3', '1512', '2', '2', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('3', '713', '4', '3', '1');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('14', '1853', '1', '24', '0');
INSERT INTO "DIPTO_SUJA"."ORDER_INFO" VALUES ('7', '2511', '8', '9', '1');

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."RATING"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."RATING" (
"CUSTOMER_ID" NUMBER NOT NULL ,
"MENU_ID" NUMBER NOT NULL ,
"RATING_VALUE" NUMBER NOT NULL ,
"GIVEN_DATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of RATING
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('12', '1770', '8', TO_DATE('2016-05-02 20:44:53', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('2', '752', '6', TO_DATE('2015-12-22 18:34:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('12', '2165', '5', TO_DATE('2016-05-02 20:40:39', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('12', '2995', '5', TO_DATE('2016-05-02 20:57:02', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('2', '759', '2', TO_DATE('2015-12-22 18:33:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('2', '2995', '5', TO_DATE('2015-12-23 11:23:09', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('12', '2244', '2', TO_DATE('2016-05-02 20:38:51', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('13', '827', '2', TO_DATE('2016-04-29 00:11:22', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('12', '1853', '3', TO_DATE('2016-04-28 23:47:33', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('12', '827', '2', TO_DATE('2016-04-29 00:10:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('2', '2285', '1', TO_DATE('2015-12-23 11:58:54', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DIPTO_SUJA"."RATING" VALUES ('1', '1820', '4', TO_DATE('2015-12-27 18:33:30', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for "DIPTO_SUJA"."RESTAURANT"
-- ----------------------------

CREATE TABLE "DIPTO_SUJA"."RESTAURANT" (
"RESTAURANT_ID" NUMBER NOT NULL ,
"RESTAURANT_NAME" VARCHAR2(255 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of RESTAURANT
-- ----------------------------
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('3', 'Nanna Biriyani');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('4', 'Pizza King');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('5', 'Pizz Hut');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('6', 'Royal ');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('7', 'Ghorowa');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('8', 'Mamun Biriyani');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('9', 'Nobab');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('10', 'Korai Goshto');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('11', 'Shwarma House');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('12', 'Baton Rogue');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('13', 'Flambe');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('14', 'Seven Hill');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('15', 'Artium');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('16', 'Don Giovanni');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('17', 'Dish and Desert');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('18', 'Turkich Kabab & Pizza');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('19', 'Heritage Fuision Cuisine');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('20', 'Nandos');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('21', 'Sky Chef');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('22', 'Caspian Persian');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('23', 'Lasania Kabana');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('24', 'El toro');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('25', 'Roof Top');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('26', 'Abacus');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('27', 'Cafe Italiano');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('28', 'Khana Khajana');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('29', 'The Aristrocat');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('30', 'Zaika');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('31', 'Saffron Garden');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('32', 'Dhanshiri');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('33', 'Captains World');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('34', 'Club Wheels');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('35', 'Shanta Biriyani');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('36', 'Star Kabab');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('37', 'Vooter Adda');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('38', 'Golden Spoon');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('39', 'Vooter Bari');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('40', 'Chung Wah');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('41', 'Jing Ling');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('42', 'Red Tomatto');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('43', 'Red Chillis');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('44', 'Xinxian');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('45', 'Kabab Dhaba');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('46', 'Bismillah Kabab');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('47', 'Aftab');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('48', 'Nirob');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('49', 'Kolkata Kacchi');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('50', 'Grand Nowab');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('51', 'Chang Pei');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('52', 'Coffe Shop');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('53', 'Tandoori Night');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('54', 'Re-eat');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('55', 'Onion Garden');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('56', 'Heshel');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('57', 'Cafe Hello');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('58', 'Cafe Meridian');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('59', 'La Bone Cusine');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('60', 'China Kitchen');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('61', 'Ammu_s Kitchen');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('62', 'Old City');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('1', 'KFC');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('2', 'Baburchi');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('63', 'Spicy');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('64', 'Cinnamon');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('65', 'Al Razzak');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('66', 'Oshto-byanjon');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('67', 'Boomers');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('68', 'Wok & Cook');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('69', 'Hot Hut');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('70', 'Tung King');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('71', 'Olympia Palace');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('72', 'White House');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('73', 'Pithaghar');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('74', 'Broccoli');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('75', 'Rannaghar');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('76', 'The Kabana');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('77', 'Mexi-Ind');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('78', 'The Shadow');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('79', 'Orlando');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('80', 'Hotel California');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('81', 'Hotel Arabia');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('82', 'Hotel Al Saladia');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('83', 'Arabian Cuisine');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('84', 'Hydrabadi Biriyani');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('85', 'My World');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('86', 'Hotel Buffet');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('87', 'Grand Dinner');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('88', 'Al Kabana');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('89', 'Sky Shadow');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('90', 'Dhaka Corner');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('91', 'Mexican Grill');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('92', 'Music Cafe');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('93', 'Hirajheel');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('94', 'Cafe Life');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('95', 'Cafe Jheel');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('96', 'The Black');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('97', 'Thai Corner');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('98', 'Eat n Drink');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('99', 'Bengali World');
INSERT INTO "DIPTO_SUJA"."RESTAURANT" VALUES ('100', 'Bangaliana');

-- ----------------------------
-- Procedure structure for "DIPTO_SUJA"."ADD_ORDER"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "DIPTO_SUJA"."ADD_ORDER" (user_name in VARCHAR2, menu in NUMBER,amnt in number) AS
orderid number;
flag number;
userid number;
temp number;
BEGIN
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
		select CUSTOMER_ID into userid from CUSTOMER where USERNAME=user_name;
		DBMS_OUTPUT.PUT_LINE(userid);		
	select count(*) into temp from FOODORDER;
	DBMS_OUTPUT.PUT_LINE(temp);

		if temp=0 then
			INSERT INTO FOODORDER (CUSTOMER_ID,ORDER_ID,IS_SUBMITTED) values(userid,1,0);
		END IF;
		orderid:=0;
		FOR R IN (SELECT * FROM FOODORDER)
		LOOP
			IF R.CUSTOMER_ID=userid AND NVL(R.IS_SUBMITTED,0)=0 THEN	
						orderid:=R.ORDER_ID;
			END IF;
		END LOOP;
		
		if orderid=0 THEN	
		select max(order_id) into temp from FOODORDER;
		orderid:=temp+1;
		insert into FOODORDER (CUSTOMER_ID,order_id,IS_SUBMITTED) values (userid,orderid,0);
		end if;

		flag:=0;

			--select num_rows from user_tables where table_name ='ORDER_INFO';
		select count(*) into temp from ORDER_INFO;
		if temp=0 then 
				insert into order_info values(orderid,menu,amnt,1,0);
		else  

		FOR R IN (SELECT * FROM ORDER_INFO)
		LOOP
			IF R.ORDER_ID=orderid and R.MENU_ID=menu then
				update order_info set amount=amnt where order_id=orderid and menu_id=menu;
				flag:=1;
			end if;
	END LOOP;
		if flag=0 then
		insert into order_info values(orderid,menu,amnt,
		(select max(ORDERINFO_ID)+1 from ORDER_INFO),0);
		end if;
		end if;

END;
/

-- ----------------------------
-- Procedure structure for "DIPTO_SUJA"."SUBMIT_RATING"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "DIPTO_SUJA"."SUBMIT_RATING" (user_name in VARCHAR2,val in NUMBER,menu in NUMBER) AS
user_id NUMBER;
FLAG NUMBER;
BEGIN
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');

	select customer_id into user_id from CUSTOMER where USERNAME=user_name;
	FLAG:=0;

	FOR R in (select * from RATING)
	LOOP
			IF R.CUSTOMER_ID=user_id and R.menu_id=menu THEN 
					UPDATE RATING SET RATING_VALUE=val , given_date=SYSDATE WHERE CUSTOMER_ID=user_id AND MENU_ID=menu;
					FLAG:=1;
			END IF;
	END LOOP;

  IF FLAG=0 THEN
			INSERT INTO RATING VALUES(user_id,menu,val,SYSDATE);
	END IF;
  commit;
END;
/

-- ----------------------------
-- Procedure structure for "DIPTO_SUJA"."UPDATE_BILL"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "DIPTO_SUJA"."UPDATE_BILL"(user_name VARCHAR2,amnt float) AS
temp number;
userid number;
flag number;
BEGIN
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
		select customer_id into userid from customer where username=user_name;
		select count(*) into temp from bill;
		if temp=0 THEN
				insert into bill values(1,userid,amnt,0);
		end if;
		flag:=0;
		for r in (select * from bill)
		loop
			if r.customer_id=userid THEN
					update bill set amount=amount+amnt,status=0 where customer_id=userid;
					flag:=1;
			end if;
		end loop;
		if flag=0 then 
			insert into bill values((select max(bill_id) from bill)+1,userid,amnt,0);
		end if;
END;
/

-- ----------------------------
-- Function structure for "DIPTO_SUJA"."FIND_RATING"
-- ----------------------------
CREATE OR REPLACE FUNCTION "DIPTO_SUJA"."FIND_RATING"(menu NUMBER) RETURN  FLOAT
AS
rating FLOAT;
BEGIN
	-- routine body goes here, e.g.
	-- DBMS_OUTPUT.PUT_LINE('Navicat for Oracle');
	select Round(avg(rating_value),3) into rating from RATING where MENU_ID=menu;
	RETURN rating;
END;
/

-- ----------------------------
-- Function structure for "DIPTO_SUJA"."find_restaurant_from_menu_id"
-- ----------------------------
CREATE OR REPLACE FUNCTION "DIPTO_SUJA"."find_restaurant_from_menu_id" (id number)RETURN varchar2 -- VARCHAR2
is
temp number;
temp1 number;
str VARCHAR2(100);
BEGIN
	select branch_id into temp from MENU
	where menu_id=id;
  if(temp=NULL) THEN
	dbms_output.put_line('no match in menu table');
	end if;
	select restaurant_id into temp1 from "BRANCH"
	where branch_id=temp;
  select restaurant_name into str from restaurant 
  where RESTAURANT_ID=temp1;
  return str;
END;
/

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."AUTH_GROUP_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."AUTH_GROUP_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."AUTH_GROUP_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."AUTH_PERMISSION_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."AUTH_PERMISSION_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."AUTH_PERMISSION_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 102
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."AUTH_USER_GROUPS_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."AUTH_USER_GROUPS_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."AUTH_USER_GROUPS_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."AUTH_USER_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."AUTH_USER_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."AUTH_USER_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 143
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 21
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."DJANGO_ADMIN_LOG_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."DJANGO_ADMIN_LOG_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."DJANGO_ADMIN_LOG_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 61
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."DJANGO_CONTENT_TYPE_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."DJANGO_CONTENT_TYPE_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."DJANGO_CONTENT_TYPE_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 48
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."DJANGO_MIGRATIONS_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."DJANGO_MIGRATIONS_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."DJANGO_MIGRATIONS_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 33
 CACHE 20;

-- ----------------------------
-- Sequence structure for "DIPTO_SUJA"."MYAPP_HELO_SQ"
-- ----------------------------
DROP SEQUENCE "DIPTO_SUJA"."MYAPP_HELO_SQ";
CREATE SEQUENCE "DIPTO_SUJA"."MYAPP_HELO_SQ"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Indexes structure for table AREA
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."AREA"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AREA" ADD CHECK ("AREA_NAME" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AREA" ADD CHECK ("AREA_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."AREA"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AREA" ADD PRIMARY KEY ("AREA_ID");

-- ----------------------------
-- Indexes structure for table AUTH_GROUP
-- ----------------------------

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."AUTH_GROUP"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."AUTH_GROUP_TR" BEFORE INSERT ON "DIPTO_SUJA"."AUTH_GROUP" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "AUTH_GROUP_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Uniques structure for table "DIPTO_SUJA"."AUTH_GROUP"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP" ADD UNIQUE ("NAME");

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."AUTH_GROUP"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."AUTH_GROUP"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table AUTH_GROUP_PERMISSIONS
-- ----------------------------
CREATE INDEX "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS_0E9922A"
ON "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ("GROUP_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS_837A862"
ON "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ("PERMISSION_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS_TR" BEFORE INSERT ON "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "AUTH_GROUP_PERMISSIONS_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Uniques structure for table "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ADD UNIQUE ("GROUP_ID", "PERMISSION_ID");

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ADD CHECK ("GROUP_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ADD CHECK ("PERMISSION_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table AUTH_PERMISSION
-- ----------------------------
CREATE INDEX "DIPTO_SUJA"."AUTH_PERMISSION_417F1B1C"
ON "DIPTO_SUJA"."AUTH_PERMISSION" ("CONTENT_TYPE_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."AUTH_PERMISSION"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."AUTH_PERMISSION_TR" BEFORE INSERT ON "DIPTO_SUJA"."AUTH_PERMISSION" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "AUTH_PERMISSION_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Uniques structure for table "DIPTO_SUJA"."AUTH_PERMISSION"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_PERMISSION" ADD UNIQUE ("CONTENT_TYPE_ID", "CODENAME");

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."AUTH_PERMISSION"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_PERMISSION" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_PERMISSION" ADD CHECK ("CONTENT_TYPE_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."AUTH_PERMISSION"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_PERMISSION" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table AUTH_USER
-- ----------------------------

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."AUTH_USER"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."AUTH_USER_TR" BEFORE INSERT ON "DIPTO_SUJA"."AUTH_USER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "AUTH_USER_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Uniques structure for table "DIPTO_SUJA"."AUTH_USER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD UNIQUE ("USERNAME");

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."AUTH_USER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("IS_SUPERUSER" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("IS_STAFF" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("IS_ACTIVE" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("DATE_JOINED" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("IS_SUPERUSER" IN (0,1));
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("IS_STAFF" IN (0,1));
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("IS_ACTIVE" IN (0,1));
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD CHECK ("USERNAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."AUTH_USER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table AUTH_USER_GROUPS
-- ----------------------------
CREATE INDEX "DIPTO_SUJA"."AUTH_USER_GROUPS_0E939A4F"
ON "DIPTO_SUJA"."AUTH_USER_GROUPS" ("GROUP_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "DIPTO_SUJA"."AUTH_USER_GROUPS_E8701AD4"
ON "DIPTO_SUJA"."AUTH_USER_GROUPS" ("USER_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."AUTH_USER_GROUPS"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."AUTH_USER_GROUPS_TR" BEFORE INSERT ON "DIPTO_SUJA"."AUTH_USER_GROUPS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "AUTH_USER_GROUPS_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Uniques structure for table "DIPTO_SUJA"."AUTH_USER_GROUPS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" ADD UNIQUE ("USER_ID", "GROUP_ID");

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."AUTH_USER_GROUPS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" ADD CHECK ("GROUP_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."AUTH_USER_GROUPS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table AUTH_USER_USER_PERMISSIONS
-- ----------------------------
CREATE INDEX "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS1CCA"
ON "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ("USER_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS8AFE"
ON "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ("PERMISSION_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS_TR" BEFORE INSERT ON "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "AUTH_USER_USER_PERMISSIONS_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Uniques structure for table "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ADD UNIQUE ("USER_ID", "PERMISSION_ID");

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ADD CHECK ("PERMISSION_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table BILL
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."BILL"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."BILL" ADD CHECK ("BILL_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."BILL" ADD CHECK ("CUSTOMER_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."BILL"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."BILL" ADD PRIMARY KEY ("BILL_ID");

-- ----------------------------
-- Indexes structure for table BRANCH
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."BRANCH"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."BRANCH" ADD CHECK ("BRANCH_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."BRANCH" ADD CHECK ("AREA_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."BRANCH" ADD CHECK ("RESTAURANT_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."BRANCH"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."BRANCH" ADD PRIMARY KEY ("BRANCH_ID");

-- ----------------------------
-- Indexes structure for table CONTACT_BRANCH
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."CONTACT_BRANCH"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."CONTACT_BRANCH" ADD CHECK ("CONTACT_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."CONTACT_BRANCH"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."CONTACT_BRANCH" ADD PRIMARY KEY ("CONTACT_ID");

-- ----------------------------
-- Indexes structure for table CUSTOMER
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."CUSTOMER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."CUSTOMER" ADD CHECK ("CUSTOMER_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."CUSTOMER" ADD CHECK ("NAME" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."CUSTOMER" ADD CHECK ("USERNAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."CUSTOMER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."CUSTOMER" ADD PRIMARY KEY ("CUSTOMER_ID");

-- ----------------------------
-- Indexes structure for table DEPARTMENTS
-- ----------------------------
CREATE INDEX "DIPTO_SUJA"."DEPARTMENTS_8784215C"
ON "DIPTO_SUJA"."DEPARTMENTS" ("MANAGER_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."DEPARTMENTS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DEPARTMENTS" ADD CHECK ("DEPARTMENT_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."DEPARTMENTS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DEPARTMENTS" ADD PRIMARY KEY ("DEPARTMENT_ID");

-- ----------------------------
-- Indexes structure for table DJANGO_ADMIN_LOG
-- ----------------------------
CREATE INDEX "DIPTO_SUJA"."DJANGO_ADMIN_LOG_417F1B1C"
ON "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ("CONTENT_TYPE_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "DIPTO_SUJA"."DJANGO_ADMIN_LOG_E8701AD4"
ON "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ("USER_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."DJANGO_ADMIN_LOG"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."DJANGO_ADMIN_LOG_TR" BEFORE INSERT ON "DIPTO_SUJA"."DJANGO_ADMIN_LOG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "DJANGO_ADMIN_LOG_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."DJANGO_ADMIN_LOG"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD CHECK ("ACTION_TIME" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD CHECK ("ACTION_FLAG" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD CHECK ("ACTION_FLAG" >= 0);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."DJANGO_ADMIN_LOG"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table DJANGO_CONTENT_TYPE
-- ----------------------------

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."DJANGO_CONTENT_TYPE"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."DJANGO_CONTENT_TYPE_TR" BEFORE INSERT ON "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "DJANGO_CONTENT_TYPE_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Uniques structure for table "DIPTO_SUJA"."DJANGO_CONTENT_TYPE"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" ADD UNIQUE ("APP_LABEL", "MODEL");

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."DJANGO_CONTENT_TYPE"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."DJANGO_CONTENT_TYPE"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table DJANGO_MIGRATIONS
-- ----------------------------

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."DJANGO_MIGRATIONS"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."DJANGO_MIGRATIONS_TR" BEFORE INSERT ON "DIPTO_SUJA"."DJANGO_MIGRATIONS" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "DJANGO_MIGRATIONS_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."DJANGO_MIGRATIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_MIGRATIONS" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."DJANGO_MIGRATIONS" ADD CHECK ("APPLIED" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."DJANGO_MIGRATIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_MIGRATIONS" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table DJANGO_SESSION
-- ----------------------------
CREATE INDEX "DIPTO_SUJA"."DJANGO_SESSION_DE54FA62"
ON "DIPTO_SUJA"."DJANGO_SESSION" ("EXPIRE_DATE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."DJANGO_SESSION"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_SESSION" ADD CHECK ("SESSION_KEY" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."DJANGO_SESSION" ADD CHECK ("EXPIRE_DATE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."DJANGO_SESSION"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_SESSION" ADD PRIMARY KEY ("SESSION_KEY");

-- ----------------------------
-- Indexes structure for table EMP_CONTACT
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."EMP_CONTACT"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMP_CONTACT" ADD CHECK ("CONTACT_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."EMP_CONTACT"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMP_CONTACT" ADD PRIMARY KEY ("CONTACT_ID");

-- ----------------------------
-- Indexes structure for table EMPLOYEE
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."EMPLOYEE"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMPLOYEE" ADD CHECK ("EMP_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."EMPLOYEE" ADD CHECK ("AREA_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."EMPLOYEE" ADD CHECK ("EMP_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."EMPLOYEE"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMPLOYEE" ADD PRIMARY KEY ("EMP_ID");

-- ----------------------------
-- Indexes structure for table EMPLOYEES
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."EMPLOYEES"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMPLOYEES" ADD CHECK ("EMPLOYEE_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."EMPLOYEES"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMPLOYEES" ADD PRIMARY KEY ("EMPLOYEE_ID");

-- ----------------------------
-- Indexes structure for table FOOD
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."FOOD"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."FOOD" ADD CHECK ("FOOD_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."FOOD" ADD CHECK ("FOOD_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."FOOD"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."FOOD" ADD PRIMARY KEY ("FOOD_ID");

-- ----------------------------
-- Indexes structure for table FOODORDER
-- ----------------------------

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."FOODORDER"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."delete_unnecessary_food" AFTER UPDATE ON "DIPTO_SUJA"."FOODORDER" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE
declare
idd number;
BEGIN
  if :new.is_submitted=1 then idd:=:new.order_id;
  end if;
  delete from order_info where order_id=idd and is_checked=0;
END;


-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."FOODORDER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."FOODORDER" ADD CHECK ("CUSTOMER_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."FOODORDER" ADD CHECK ("ORDER_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."FOODORDER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."FOODORDER" ADD PRIMARY KEY ("ORDER_ID");

-- ----------------------------
-- Indexes structure for table MENU
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."MENU"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."MENU" ADD CHECK ("MENU_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."MENU" ADD CHECK ("FOOD_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."MENU" ADD CHECK ("BRANCH_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."MENU"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."MENU" ADD PRIMARY KEY ("MENU_ID");

-- ----------------------------
-- Indexes structure for table MYAPP_HELO
-- ----------------------------

-- ----------------------------
-- Triggers structure for table "DIPTO_SUJA"."MYAPP_HELO"
-- ----------------------------
CREATE OR REPLACE TRIGGER "DIPTO_SUJA"."MYAPP_HELO_TR" BEFORE INSERT ON "DIPTO_SUJA"."MYAPP_HELO" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW ENABLE WHEN (new."ID" IS NULL)
BEGIN
        SELECT "MYAPP_HELO_SQ".nextval
        INTO :new."ID" FROM dual;
    END;

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."MYAPP_HELO"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."MYAPP_HELO" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."MYAPP_HELO"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."MYAPP_HELO" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table ORDER_INFO
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."ORDER_INFO"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."ORDER_INFO" ADD CHECK ("ORDER_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."ORDER_INFO" ADD CHECK ("MENU_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."ORDER_INFO" ADD CHECK ("AMOUNT" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."ORDER_INFO" ADD CHECK ("ORDERINFO_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."ORDER_INFO"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."ORDER_INFO" ADD PRIMARY KEY ("ORDERINFO_ID");

-- ----------------------------
-- Indexes structure for table RATING
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."RATING"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."RATING" ADD CHECK ("CUSTOMER_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."RATING" ADD CHECK ("MENU_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."RATING" ADD CHECK ("RATING_VALUE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."RATING"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."RATING" ADD PRIMARY KEY ("CUSTOMER_ID", "MENU_ID");

-- ----------------------------
-- Indexes structure for table RESTAURANT
-- ----------------------------

-- ----------------------------
-- Checks structure for table "DIPTO_SUJA"."RESTAURANT"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."RESTAURANT" ADD CHECK ("RESTAURANT_ID" IS NOT NULL);
ALTER TABLE "DIPTO_SUJA"."RESTAURANT" ADD CHECK ("RESTAURANT_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "DIPTO_SUJA"."RESTAURANT"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."RESTAURANT" ADD PRIMARY KEY ("RESTAURANT_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ADD FOREIGN KEY ("GROUP_ID") REFERENCES "DIPTO_SUJA"."AUTH_GROUP" ("ID") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "DIPTO_SUJA"."AUTH_GROUP_PERMISSIONS" ADD FOREIGN KEY ("PERMISSION_ID") REFERENCES "DIPTO_SUJA"."AUTH_PERMISSION" ("ID") DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."AUTH_PERMISSION"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_PERMISSION" ADD FOREIGN KEY ("CONTENT_TYPE_ID") REFERENCES "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" ("ID") DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."AUTH_USER_GROUPS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" ADD FOREIGN KEY ("GROUP_ID") REFERENCES "DIPTO_SUJA"."AUTH_GROUP" ("ID") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_GROUPS" ADD FOREIGN KEY ("USER_ID") REFERENCES "DIPTO_SUJA"."AUTH_USER" ("ID") DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ADD FOREIGN KEY ("USER_ID") REFERENCES "DIPTO_SUJA"."AUTH_USER" ("ID") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "DIPTO_SUJA"."AUTH_USER_USER_PERMISSIONS" ADD FOREIGN KEY ("PERMISSION_ID") REFERENCES "DIPTO_SUJA"."AUTH_PERMISSION" ("ID") DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."BILL"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."BILL" ADD FOREIGN KEY ("CUSTOMER_ID") REFERENCES "DIPTO_SUJA"."CUSTOMER" ("CUSTOMER_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."BRANCH"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."BRANCH" ADD FOREIGN KEY ("RESTAURANT_ID") REFERENCES "DIPTO_SUJA"."RESTAURANT" ("RESTAURANT_ID");
ALTER TABLE "DIPTO_SUJA"."BRANCH" ADD FOREIGN KEY ("AREA_ID") REFERENCES "DIPTO_SUJA"."AREA" ("AREA_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."CONTACT_BRANCH"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."CONTACT_BRANCH" ADD FOREIGN KEY ("BRANCH_ID") REFERENCES "DIPTO_SUJA"."BRANCH" ("BRANCH_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."DEPARTMENTS"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DEPARTMENTS" ADD FOREIGN KEY ("MANAGER_ID") REFERENCES "DIPTO_SUJA"."EMPLOYEES" ("EMPLOYEE_ID") DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."DJANGO_ADMIN_LOG"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD FOREIGN KEY ("CONTENT_TYPE_ID") REFERENCES "DIPTO_SUJA"."DJANGO_CONTENT_TYPE" ("ID") DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "DIPTO_SUJA"."DJANGO_ADMIN_LOG" ADD FOREIGN KEY ("USER_ID") REFERENCES "DIPTO_SUJA"."AUTH_USER" ("ID") DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."EMP_CONTACT"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMP_CONTACT" ADD FOREIGN KEY ("EMP_ID") REFERENCES "DIPTO_SUJA"."EMPLOYEE" ("EMP_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."EMPLOYEE"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."EMPLOYEE" ADD FOREIGN KEY ("AREA_ID") REFERENCES "DIPTO_SUJA"."AREA" ("AREA_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."FOODORDER"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."FOODORDER" ADD FOREIGN KEY ("CUSTOMER_ID") REFERENCES "DIPTO_SUJA"."CUSTOMER" ("CUSTOMER_ID");
ALTER TABLE "DIPTO_SUJA"."FOODORDER" ADD FOREIGN KEY ("EMP_ID") REFERENCES "DIPTO_SUJA"."EMPLOYEE" ("EMP_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."MENU"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."MENU" ADD FOREIGN KEY ("BRANCH_ID") REFERENCES "DIPTO_SUJA"."BRANCH" ("BRANCH_ID");
ALTER TABLE "DIPTO_SUJA"."MENU" ADD FOREIGN KEY ("FOOD_ID") REFERENCES "DIPTO_SUJA"."FOOD" ("FOOD_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."ORDER_INFO"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."ORDER_INFO" ADD FOREIGN KEY ("ORDER_ID") REFERENCES "DIPTO_SUJA"."FOODORDER" ("ORDER_ID");
ALTER TABLE "DIPTO_SUJA"."ORDER_INFO" ADD FOREIGN KEY ("MENU_ID") REFERENCES "DIPTO_SUJA"."MENU" ("MENU_ID");

-- ----------------------------
-- Foreign Key structure for table "DIPTO_SUJA"."RATING"
-- ----------------------------
ALTER TABLE "DIPTO_SUJA"."RATING" ADD FOREIGN KEY ("CUSTOMER_ID") REFERENCES "DIPTO_SUJA"."CUSTOMER" ("CUSTOMER_ID");
ALTER TABLE "DIPTO_SUJA"."RATING" ADD FOREIGN KEY ("MENU_ID") REFERENCES "DIPTO_SUJA"."MENU" ("MENU_ID");
