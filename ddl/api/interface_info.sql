-- 接口信息表
create table if not exists api.`interface_info`
(
    `id` bigint(20) not null comment '接口id' primary key,
    `name` varchar(256) not null comment '接口名',
    `url` varchar(512) not null comment '接口路径',
    `method` varchar(256) not null comment '请求方式',
    `requestHeader` varchar(256) null comment '请求头',
    `responseHeader` varchar(256) null comment '响应头',
    `description` varchar(256) null comment '接口描述',
    `status` tinyint default 0 not null comment '接口状态，0-关闭，1-开启',
    `createTime` datetime default CURRENT_TIMESTAMP null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除，0-未删除，1-已删除'
) comment '接口信息表';

insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (5592694563221440037, 'qV3', 'www.denny-quitzon.com', 'Eal6', 'VBo', 'fDi', 'S7U', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1733073893641340709, 'dyWKW', 'www.jermaine-von.org', 'jxd', 'ui', 'Ssai', 'NU', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1550148301921320000, '2sI', 'www.lorie-bogisich.com', 'xPitK', 'tn', 'E1Qs', 'Y0Nlc', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (0690593824710663351, 'nz', 'www.maynard-auer.net', 'O0h0', 'wf', 'dkRBy', 'CIA', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (7395339300450428279, 'omRGk', 'www.korey-thiel.biz', 'Os', 'TWfQx', 'nWTg', 'VRGJH', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1847195392646015821, 'ughz', 'www.celesta-johnson.name', 'sK', '7SI', 'cE1', 'g0hv', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9589895573910678214, 'MvRPs', 'www.grant-kuvalis.name', 'KRi', '73', 'xVref', 'ew', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (3441122048116919826, 'ytnww', 'www.renay-ortiz.net', 'uv', 'JG', 'p8C', 'w74', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (8660730009186077485, 'LyhEb', 'www.gertha-langworth.com', '5mSGF', 'oL', 'DrNxn', '4p', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (7670080132108998289, 'hqsk', 'www.francisco-koch.name', 'TLC', 'nGY', 'XXIAf', 'b5A', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (6374739663141795139, 'yT', 'www.shirlee-wehner.io', 'BWr', 'FR', 'wS', 'cn', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (5430698459804158204, 'zIZ', 'www.elvira-altenwerth.com', 'Rm', 'Yp4pd', 'vsiRk', 'x7', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (8748435232838308971, 'JW6s8', 'www.caridad-leffler.net', 'WviaL', '9GULJ', 'YRMqX', 'I5m', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (6572742629103171817, 'Hnbk', 'www.elbert-ohara.io', 'xom', 'Hg3', 'Nk', 'xGae', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1855905154642424750, 'Ip5Cp', 'www.stephaine-padberg.info', '0l3C', '39tu', 'cHQ8N', '1g', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (3036998281308327912, 'cf4Mr', 'www.lacie-schmidt.biz', 'Vox', 'wHR', 'uSKJ', 'NdMqN', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9357587185156189483, 'QfP8l', 'www.bart-gaylord.info', 'VG', 'xMVqT', 'kD', 'Cu', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (5591889840161034999, 'D0', 'www.vernon-kshlerin.info', 'DnbO', 'jpie', 'Sjuqv', 'zVc', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (6792241129765721937, 'pSS', 'www.lindsey-kutch.io', 'nWAB', 'TOJ', 'MVUUY', 'C9k', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (4686997021709323427, 'vq', 'www.bryce-mann.com', 'YtgW7', 't4YBV', 'ZddJp', 'et', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1991733407961711141, 'Kcv7', 'www.nichole-emmerich.name', '7aL7', 'mhChC', 'oo', 'kX5', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9270701009293053252, 'WLw', 'www.zane-marquardt.net', 'uEQB', 'RH', 'kOjlA', 'rHuQ', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9625143910907119073, 'bwA', 'www.jeff-rolfson.io', 'KH', '0dw0', 'Yj', 'RJn', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (7155239716651035471, 'Oy4Z', 'www.jack-krajcik.biz', 'SE6W9', 'UW', 'ah', 'Z5JrH', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1489862713963906191, 'x9B', 'www.amos-denesik.org', 'x9s', '0i', 'Yzo3p', 'JI', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1353710225629785838, 'GWCv', 'www.mellisa-doyle.info', 'vCa', 'oA6W', 'OEn', 'bQ', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (6428047567589524481, '4rfN', 'www.noah-bauch.info', 'AHRYR', 'PdeLl', 'gzp', 'fK', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (4275444396728404249, '9pC', 'www.alesia-morissette.biz', 'qd', 'XpLxI', '7wtBq', 'zt4y', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1530381634118916965, 'gWtHj', 'www.miles-mitchell.co', 'RIat', '3RI', '7l', 'Kf', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (6457356950461149261, '7jTZl', 'www.raleigh-reichert.org', 'p7N', 'hYAY', 'EhFMh', 'D1', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (7034700967778364512, 'F9Vod', 'www.marna-bauch.info', 'of5r', 'SR', '87yjU', 'Ek', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (6751386823360876000, 'JH', 'www.mercy-hirthe.co', 'VA', 'r7R', '8jJb', '4G', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1832809235050536962, 'oK', 'www.barbera-hill.biz', 'oB', '5GwFD', 'oPhXs', 'Sq9xv', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9699594679750330082, '8b', 'www.georgiana-littel.biz', '9nAT5', 'k8sR', 'nYj3', 'EPMI', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (2787295387830016544, '0T', 'www.stanton-ankunding.name', 'meFpK', 'D9w', '69', '2WeYQ', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (4383854469731905138, 'x0zF3', 'www.everette-bashirian.io', 'VXm4', 'ku0', 'AM', 'oDJD', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (1454514711705199187, '96', 'www.alfredia-mcglynn.com', 'GN', 'bbi', 'DP', 'jO', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (5150447084770708769, 'USRh7', 'www.benedict-reynolds.org', 'H2axo', 'Wcm', 'AH', 'laMEN', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (8320002606477489256, 'v2DR', 'www.joseph-beer.name', '2f', 'sPg', 'zW8', 'qH2k1', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (4653415069915305582, 'YL', 'www.trinidad-barton.io', '4OF', 'FTs', 'l8PkG', '9L', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (3791813137151835687, 'YxOLJ', 'www.lynwood-heathcote.com', 'uk', 'YF', 'iXE', 'dCIf', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (6806176380470266124, '4Mw7', 'www.shaniqua-renner.io', 'xdz', 'LTAdo', 'b7v3', 'q4sN', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (7479959797129792916, 'FHin', 'www.lavern-schmeler.info', '6ByR', 'Iuf', 'FUR', 'SB0E', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9457417966472710350, 'U0', 'www.luis-abbott.name', 'IRrx', 'S6U', 'dprZz', '8N', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (2613580737692739656, 'xkMs', 'www.marleen-mraz.biz', 'as', '2M', 'Pr', 'u3zbg', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9179675284358109040, 'cS', 'www.alayna-stark.io', '9VPXk', '5T6n9', 'mPlN', 'qkN', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (0939235143819013115, 'yHLh', 'www.reena-dubuque.co', 'QxD', '32Ig', 'zrqVJ', 'EMy3C', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (8644417345982326296, 'pG', 'www.daniela-thompson.info', 'Lk', '0hWWI', 'rvt', 'nvw', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9193976014050713751, 'sy', 'www.tony-treutel.co', 'EnLgL', 'I5f', 'zmJy', 'Ek', 1, 0);
insert into api.`interface_info` (`id`, `name`, `url`, `method`, `requestHeader`, `responseHeader`, `description`, `status`, `isDelete`) values (9407948962031186793, '6n', 'www.niki-rolfson.biz', 'cK', 'hb', 'actR', 'Cod', 1, 0);