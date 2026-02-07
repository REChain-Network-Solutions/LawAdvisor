ALTER TABLE `commissions` ADD `service_type_id` INT NULL DEFAULT NULL AFTER `appointment_type_id`;
ALTER TABLE `languages` ADD `country_code` VARCHAR(255) NULL DEFAULT NULL AFTER `code`;
UPDATE `languages` SET `country_code` = 'US', `deleted_at` = NULL WHERE `languages`.`id` = 4; UPDATE `languages` SET `country_code` = 'IN', `deleted_at` = NULL WHERE `languages`.`id` = 16; UPDATE `languages` SET `country_code` = 'AE', `deleted_at` = NULL WHERE `languages`.`id` = 17;

-- add table post_comments,post_likes
ALTER TABLE `posts` CHANGE `description` `description` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci NULL DEFAULT NULL;
ALTER TABLE `posts` ADD `is_shared` TINYINT NOT NULL DEFAULT '0' AFTER `is_featured`, ADD `share_with` INT NULL DEFAULT NULL AFTER `is_shared`;
ALTER TABLE `posts` ADD `video` LONGTEXT NULL DEFAULT NULL AFTER `image`;
ALTER TABLE `posts` ADD `shared_description` LONGTEXT NULL DEFAULT NULL AFTER `share_with`;
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `is_multilang`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'is_community_form_show', 'Show Community Form', '1', '0', '0', 'boolean_selection', '', '2024-05-14 17:49:16', '2023-02-16 02:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `is_multilang`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'is_ai_chatbot_enable', 'Is AI chatBot Enable', '1', '0', '0', 'boolean_selection', '', '2024-09-05 10:15:08', '2023-02-16 02:08:43');
UPDATE `general_settings` SET `display_name` = 'Show Community Forum' WHERE `general_settings`.`id` = 79;
