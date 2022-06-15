INSERT INTO `status` (`status_id`, `status_name`,`status_description`)  
VALUES ('1', 'Sent','User sent petition to smo.');
INSERT INTO `status` (`status_id`, `status_name`,`status_description`)  
VALUES ('2', 'Approve','Smo approve petition from user.');
INSERT INTO `status` (`status_id`, `status_name`,`status_description`)  
VALUES ('3', 'In Progress','Smo are deciding whether to Done or Reject ');
INSERT INTO `status` (`status_id`, `status_name`,`status_description`)  
VALUES ('4', 'Done','Petition progress success');
INSERT INTO `status` (`status_id`, `status_name`,`status_description`)  
VALUES ('5', 'Reject','There is something wrong that makes petition is Reject or petition no pass by smo.');


INSERT INTO `pet_types` (`pet_type_id`, `pet_type_name`)  
VALUES ('1', 'Education');
INSERT INTO `pet_types` (`pet_type_id`, `pet_type_name`)  
VALUES ('2', 'Environment');
INSERT INTO `pet_types` (`pet_type_id`, `pet_type_name`)  
VALUES ('3', 'Damaged items');
INSERT INTO `pet_types` (`pet_type_id`, `pet_type_name`)  
VALUES ('4', 'Lost items');
INSERT INTO `pet_types` (`pet_type_id`, `pet_type_name`)  
VALUES ('5', 'Others');

INSERT INTO `admins` (`admin_id`, `admin_user`, `admin_pass`)  
VALUES ('1', 'admin','123456');

INSERT INTO `roles` (`role_id`, `role_name`)  
VALUES ('1', 'Admin');
INSERT INTO `roles` (`role_id`, `role_name`)  
VALUES ('2', 'Publisher');
INSERT INTO `roles` (`role_id`, `role_name`)  
VALUES ('3', 'Users');