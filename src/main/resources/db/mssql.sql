
CREATE TABLE [dbo].[permission](
    [id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
    [name] [varchar](255) NOT NULL,
    [code] [varchar](50) NOT NULL,
    [type] [varchar](255) NOT NULL,
    [parentid] [numeric](18, 0) NULL,
    [path] [varchar](255) NULL,
    [redirect] [varchar](255) NULL,
    [icon] [varchar](255) NULL,
    [component] [varchar](255) NULL,
    [layout] [varchar](255) NULL,
    [keepalive] [int] NULL,
    [method] [varchar](255) NULL,
    [description] [varchar](255) NULL,
    [show] [int] NOT NULL DEFAULT 1,
    [enable] [int] NOT NULL DEFAULT 1,
    [order] [int] NULL,
    PRIMARY KEY (id)
    )
    GO
CREATE unique INDEX permission_inx ON permission (code) ;
-- ----------------------------
-- Records of permission
-- ----------------------------
set  IDENTITY_INSERT permission on
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (1, '资源管理', 'Resource_Mgt', 'MENU', 2, '/pms/resource', NULL, 'i-fe:list',
        '/src/views/pms/resource/index.vue', NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (2, '系统管理', 'SysMgt', 'MENU', NULL, NULL, NULL, 'i-fe:grid', NULL, NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (3, '角色管理', 'RoleMgt', 'MENU', 2, '/pms/role', NULL, 'i-fe:user-check', '/src/views/pms/role/index.vue',
        NULL, NULL, NULL, NULL, 1, 1, 2);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (4, '用户管理', 'UserMgt', 'MENU', 2, '/pms/user', NULL, 'i-fe:user', '/src/views/pms/user/index.vue', NULL, 1,
        NULL, NULL, 1, 1, 3);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (5, '分配用户', 'RoleUser', 'MENU', 3, '/pms/role/user/:roleId', NULL, 'i-fe:user-plus',
        '/src/views/pms/role/role-user.vue', NULL, NULL, NULL, NULL, 0, 1, 1);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (6, '业务示例', 'Demo', 'MENU', NULL, NULL, NULL, 'i-fe:grid', NULL, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (7, '图片上传', 'ImgUpload', 'MENU', 6, '/demo/upload', NULL, 'i-fe:image', '/src/views/demo/upload/index.vue',
        NULL, 1, NULL, NULL, 1, 1, 2);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (8, '个人资料', 'UserProfile', 'MENU', NULL, '/profile', NULL, 'i-fe:user', '/src/views/profile/index.vue', NULL,
        NULL, NULL, NULL, 0, 1, 99);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (9, '基础功能', 'Base', 'MENU', NULL, '/base', NULL, 'i-fe:grid', NULL, NULL, NULL, NULL, NULL, 1, 1, 0);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (10, '基础组件', 'BaseComponents', 'MENU', 9, '/base/components', NULL, 'i-me:awesome',
        '/src/views/base/index.vue', NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (11, 'Unocss', 'Unocss', 'MENU', 9, '/base/unocss', NULL, 'i-me:awesome', '/src/views/base/unocss.vue', NULL,
        NULL, NULL, NULL, 1, 1, 2);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (12, 'KeepAlive', 'KeepAlive', 'MENU', 9, '/base/keep-alive', NULL, 'i-me:awesome',
        '/src/views/base/keep-alive.vue', NULL, 1, NULL, NULL, 1, 1, 3);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (13, '创建新用户', 'AddUser', 'BUTTON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (14, '图标 Icon', 'Icon', 'MENU', 9, '/base/icon', NULL, 'i-fe:feather', '/src/views/base/unocss-icon.vue',
        NULL, NULL, NULL, NULL, 1, 1, 0);
INSERT INTO permission (id, name, code, type, parentId, path, redirect , icon ,component , layout ,keepAlive , method , description ,show, enable , "order"   )
VALUES (15, 'MeModal', 'TestModal', 'MENU', 9, '/testModal', NULL, 'i-me:dialog', '/src/views/base/test-modal.vue',
        NULL, NULL, NULL, NULL, 1, 1, 5);
set  IDENTITY_INSERT permission off

-- ----------------------------
-- Table structure for profile
-- ----------------------------
CREATE TABLE profile
(
    id       [numeric](18, 0) IDENTITY(1,1) NOT NULL,
    gender   int     NULL     DEFAULT NULL,
    avatar   varchar(255) NOT NULL DEFAULT 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif?imageView2/1/w/80/h/80',
    address  varchar(255) NULL     DEFAULT NULL,
    email    varchar(255) NULL     DEFAULT NULL,
    userId   int      NOT NULL UNIQUE,
    nickName varchar(10)  NULL     DEFAULT NULL,
    PRIMARY KEY (id)
);

-- ----------------------------
-- Records of profile
-- ----------------------------
set  IDENTITY_INSERT profile ON
GO
INSERT INTO profile (id, gender, avatar, address, email, userId, nickName)
VALUES (1, NULL, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif?imageView2/1/w/80/h/80', NULL,
        NULL, 1, 'Admin');
set  IDENTITY_INSERT profile OFF
GO
-- ----------------------------
-- Table structure for role
-- ----------------------------

CREATE TABLE role
(
    id     [numeric](18, 0) IDENTITY(1,1) NOT NULL,
    code   varchar(50) NOT NULL,
    name   varchar(50) NOT NULL,
    enable int  NOT NULL DEFAULT 1,
    PRIMARY KEY (id)
);
CREATE unique INDEX role_inx ON role (code, name) ;
-- ----------------------------
-- Records of role
-- ----------------------------
set  IDENTITY_INSERT role ON
INSERT INTO role (id, code, name, enable)
VALUES (1, 'SUPER_ADMIN', '超级管理员', 1);
INSERT INTO role (id, code, name, enable)
VALUES (2, 'ROLE_QA', '质检员', 1);
set  IDENTITY_INSERT role off


-- ----------------------------
-- Table structure for role_permissions_permission
-- ----------------------------
CREATE TABLE role_permissions_permission
(
    roleId       int NOT NULL,
    permissionId int NOT NULL,
    PRIMARY KEY (roleId, permissionId)
);

-- ----------------------------
-- Records of role_permissions_permission
-- ----------------------------
INSERT INTO role_permissions_permission
VALUES (2, 1);
INSERT INTO role_permissions_permission
VALUES (2, 2);
INSERT INTO role_permissions_permission
VALUES (2, 3);
INSERT INTO role_permissions_permission
VALUES (2, 4);
INSERT INTO role_permissions_permission
VALUES (2, 5);
INSERT INTO role_permissions_permission
VALUES (2, 9);
INSERT INTO role_permissions_permission
VALUES (2, 10);
INSERT INTO role_permissions_permission
VALUES (2, 11);
INSERT INTO role_permissions_permission
VALUES (2, 12);
INSERT INTO role_permissions_permission
VALUES (2, 14);
INSERT INTO role_permissions_permission
VALUES (2, 15);

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE "user"
(
    id           [numeric](18, 0) IDENTITY(1,1) NOT NULL,
    username   varchar(50)  NOT NULL unique,
    password   varchar(255) NOT NULL,
    enable     int   NOT NULL DEFAULT 1,
    createTime datetime   NOT NULL DEFAULT getdate(),
    updateTime datetime   NOT NULL DEFAULT getdate(),
    PRIMARY KEY (id)
);

-- ----------------------------
-- Records of user
-- ----------------------------
set  IDENTITY_INSERT "user" ON
INSERT INTO "user" (id, username, password, enable, createTime, updateTime)
VALUES (1, 'admin', '$2a$10$FsAafxTTVVGXfIkJqvaiV.1vPfq4V9HW298McPldJgO829PR52a56', 1, '2023-11-18 16:18:59',
        '2023-11-18 16:18:59');
set  IDENTITY_INSERT "user" OFF
-- ----------------------------
-- Table structure for user_roles_role
-- ----------------------------
CREATE TABLE user_roles_role
(
    userId int NOT NULL,
    roleId int  NOT NULL,
    PRIMARY KEY (userId, roleId)
);

-- ----------------------------
-- Records of user_roles_role
-- ----------------------------
INSERT INTO user_roles_role
VALUES (1, 1);
INSERT INTO user_roles_role
VALUES (1, 2);