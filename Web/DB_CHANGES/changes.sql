ALTER TABLE `law_firms` ADD `subscription_id` INT NULL DEFAULT NULL AFTER `user_id`;
ALTER TABLE `lawyers` ADD `subscription_id` INT NULL DEFAULT NULL AFTER `user_id`;


UPDATE `states` SET `is_active`=0 WHERE `id` IN (1398,1402,1403,1404,1405,1410,1428,1432,1438,1439,1448)

Subscriptions and modules Tables -> new
permissions tables -> delete





Add all languages , lawyer_languages, law_firm_languages ,tags, lawyer_tag, law_firm_tag
ALTER TABLE `lawyers` ADD `longitude` VARCHAR(255) NULL DEFAULT NULL AFTER `zip_code`, ADD `latitude` VARCHAR(255) NULL DEFAULT NULL AFTER `longitude`, ADD `prefix` VARCHAR(255) NULL DEFAULT NULL AFTER `latitude`, ADD `suffix` VARCHAR(255) NULL DEFAULT NULL AFTER `prefix`, ADD `home_phone` VARCHAR(255) NULL DEFAULT NULL AFTER `suffix`, ADD `cell_phone` VARCHAR(255) NULL DEFAULT NULL AFTER `home_phone`, ADD `job_title` TEXT NULL DEFAULT NULL AFTER `cell_phone`, ADD `company` VARCHAR(255) NULL DEFAULT NULL AFTER `job_title`, ADD `website` VARCHAR(255) NULL DEFAULT NULL AFTER `company`, ADD `email` VARCHAR(255) NULL DEFAULT NULL AFTER `website`, ADD `billing_address_line_1` TEXT NULL DEFAULT NULL AFTER `email`, ADD `billing_address_line_2` TEXT NULL DEFAULT NULL AFTER `billing_address_line_1`, ADD `billing_country_id` INT NULL DEFAULT NULL AFTER `billing_address_line_2`, ADD `billing_state_id` INT NULL DEFAULT NULL AFTER `billing_country_id`, ADD `billing_city_id` INT NULL DEFAULT NULL AFTER `billing_state_id`, ADD `billing_zip_code` INT NULL DEFAULT NULL AFTER `billing_city_id`, ADD `shipping_address_line_1` TEXT NULL DEFAULT NULL AFTER `billing_zip_code`, ADD `shipping_address_line_2` VARCHAR(255) NULL DEFAULT NULL AFTER `shipping_address_line_1`, ADD `shipping_country_id` INT NULL DEFAULT NULL AFTER `shipping_address_line_2`, ADD `shipping_state_id` INT NULL DEFAULT NULL AFTER `shipping_country_id`, ADD `shipping_city_id` INT NULL DEFAULT NULL AFTER `shipping_state_id`, ADD `shipping_zip_code` INT NULL DEFAULT NULL AFTER `shipping_city_id`, ADD `work_address_line_1` TEXT NULL DEFAULT NULL AFTER `shipping_zip_code`, ADD `work_address_line_2` TEXT NULL DEFAULT NULL AFTER `work_address_line_1`, ADD `work_country_id` INT NULL DEFAULT NULL AFTER `work_address_line_2`, ADD `work_state_id` INT NULL DEFAULT NULL AFTER `work_country_id`, ADD `work_city_id` INT NULL DEFAULT NULL AFTER `work_state_id`, ADD `work_zip_code` INT NULL DEFAULT NULL AFTER `work_city_id`, ADD `is_verified` TINYINT NOT NULL DEFAULT '0' AFTER `work_zip_code`, ADD `is_certified` TINYINT NOT NULL DEFAULT '0' AFTER `is_verified`, ADD `is_energy_exchange` TINYINT NOT NULL DEFAULT '0' AFTER `is_certified`, ADD `is_co_creation` TINYINT NOT NULL DEFAULT '0' AFTER `is_energy_exchange`, ADD `is_special` TINYINT NOT NULL DEFAULT '0' AFTER `is_co_creation`;
ALTER TABLE `law_firms` ADD `longitude` VARCHAR(255) NULL DEFAULT NULL AFTER `address_line_2`, ADD `latitude` VARCHAR(255) NULL DEFAULT NULL AFTER `longitude`;
ALTER TABLE `law_firms` ADD `prefix` VARCHAR(255) NULL DEFAULT NULL AFTER `latitude`, ADD `suffix` VARCHAR(255) NULL DEFAULT NULL AFTER `prefix`, ADD `home_phone` VARCHAR(255) NULL DEFAULT NULL AFTER `suffix`, ADD `cell_phone` VARCHAR(255) NULL DEFAULT NULL AFTER `home_phone`, ADD `job_title` TEXT NULL DEFAULT NULL AFTER `cell_phone`, ADD `company` VARCHAR(255) NULL DEFAULT NULL AFTER `job_title`, ADD `website` VARCHAR(255) NULL DEFAULT NULL AFTER `company`, ADD `email` VARCHAR(255) NULL DEFAULT NULL AFTER `website`, ADD `billing_address_line_1` TEXT NULL DEFAULT NULL AFTER `email`, ADD `billing_address_line_2` TEXT NULL DEFAULT NULL AFTER `billing_address_line_1`, ADD `billing_country_id` INT NULL DEFAULT NULL AFTER `billing_address_line_2`, ADD `billing_state_id` INT NULL DEFAULT NULL AFTER `billing_country_id`, ADD `billing_city_id` INT NULL DEFAULT NULL AFTER `billing_state_id`, ADD `billing_zip_code` INT NULL DEFAULT NULL AFTER `billing_city_id`, ADD `shipping_address_line_1` TEXT NULL DEFAULT NULL AFTER `billing_zip_code`, ADD `shipping_address_line_2` TEXT NULL DEFAULT NULL AFTER `shipping_address_line_1`, ADD `shipping_country_id` INT NULL DEFAULT NULL AFTER `shipping_address_line_2`, ADD `shipping_state_id` INT NULL DEFAULT NULL AFTER `shipping_country_id`, ADD `shipping_city_id` INT NULL DEFAULT NULL AFTER `shipping_state_id`, ADD `shipping_zip_code` INT NULL DEFAULT NULL AFTER `shipping_city_id`, ADD `work_address_line_1` TEXT NULL DEFAULT NULL AFTER `shipping_zip_code`, ADD `work_address_line_2` TEXT NULL DEFAULT NULL AFTER `work_address_line_1`, ADD `work_country_id` INT NULL DEFAULT NULL AFTER `work_address_line_2`, ADD `work_state_id` INT NULL DEFAULT NULL AFTER `work_country_id`, ADD `work_city_id` INT NULL DEFAULT NULL AFTER `work_state_id`, ADD `work_zip_code` INT NULL DEFAULT NULL AFTER `work_city_id`;



ALTER TABLE `users` ADD `profile_completion_percentage` INT NOT NULL DEFAULT '0' AFTER `is_two_factor_enabled`;
ALTER TABLE `law_firms` ADD `profile_completion_percentage` INT NULL DEFAULT NULL AFTER `is_approved`;
ALTER TABLE `lawyers` ADD `profile_completion_percentage` INT NULL DEFAULT NULL AFTER `is_special`;


add table lawyer_educations,lawyer_experience
ALTER TABLE `lawyers` ADD `experience` VARCHAR(255) NULL DEFAULT NULL AFTER `description`;
ALTER TABLE `lawyers` CHANGE `experience` `experience` INT NULL DEFAULT NULL;
ALTER TABLE `lawyers` ADD `speciality` VARCHAR(255) NULL DEFAULT NULL AFTER `experience`;
ALTER TABLE `lawyers` ADD `law_firm_id` INT NULL DEFAULT NULL AFTER `user_id`;
add appointment_ratings table
ALTER TABLE `lawyers` ADD `is_premium` TINYINT NOT NULL DEFAULT '0' AFTER `is_certified`;
UPDATE `general_settings` SET `value` = 'Appointments Booked' WHERE `general_settings`.`id` = 24
add table pages_content


ALTER TABLE `lawyers` ADD `is_online` INT NULL DEFAULT '0' AFTER `cover_image`;
ALTER TABLE `events` ADD `sponser_image` VARCHAR(255) NULL DEFAULT NULL AFTER `image`;
ALTER TABLE `law_firms` ADD `is_online` INT NOT NULL DEFAULT '0' AFTER `is_active`;
ALTER TABLE `customers` ADD `is_online` INT NOT NULL DEFAULT '0' AFTER `is_featured`;
add table event_sponsers
ALTER TABLE `events` DROP `sponser_image`;


ALTER TABLE `lawyers` ADD `stripe_id` VARCHAR(255) NULL DEFAULT NULL AFTER `is_online`;
ALTER TABLE `law_firms` ADD `stripe_id` VARCHAR(255) NULL DEFAULT NULL AFTER `cover_image`;
ALTER TABLE `law_firms` ADD `pm_type` VARCHAR(255) NULL DEFAULT NULL AFTER `stripe_id`, ADD `pm_last_four` VARCHAR(4) NULL DEFAULT NULL AFTER `pm_type`;
ALTER TABLE `lawyers` ADD `pm_type` VARCHAR(255) NULL DEFAULT NULL AFTER `stripe_id`, ADD `pm_last_four` VARCHAR(4) NULL DEFAULT NULL AFTER `pm_type`;

update pricing_plan_modules table


INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'agora_app_id', 'AGORA APP ID', 'ee3d69d271fb409e93347069503f4803', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');

INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'agora_app_certificate', 'AGORA APP CERTIFICATE', '3f8f4c99dc2748db88a286fbbfc6b1c7', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'pusher_beams_instance_id', 'PUSHER BEAMS INSTANCE ID', '41feeeff-28a1-4aca-8e1f-367d292906ec', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'pusher_beams_secret_key', 'PUSHER BEAMS SECRET KEY', '0F3C4B8299756A807C1A9D293B5E18CAEE0D5EBB0F258E091AED8BBBAF8D64DF', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'pusher_app_id', 'PUSHER APP ID', '1665700', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'pusher_app_key', 'PUSHER APP KEY', '9d8e7b5c8ce69b2c07af', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'pusher_app_secret', 'PUSHER APP SECRET', '3249dca6b5e76fc1a98d', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'pusher_app_cluster', 'PUSHER APP CLUSTER', 'ap2', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'stripe_key', 'STRIPE KEY', 'pk_test_51MjnELHTAHWwyrB6HqKFzapBSOjSEAF9dKUz7JAI9vPTQHtsGsFJrhm151hdiVQWyvsvtq1CpkSMEmAUjC0pgbEl00P1BNfXvD', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'stripe_secret', 'STRIPE SECRET', 'sk_test_51MjnELHTAHWwyrB6o5FbJewlU1QQeOvwfJoCBfnlf20KzNGa7JVyxIWhYIb84Ohl8kUxvGDuzOkCSo3rFj9Ne85l00FvdXN2ti', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'google_client_id', 'GOOGLE CLIENT ID', '1006558285844-81r1j9n23vovqg9uebrae8tcg79v7t4b.apps.googleusercontent.com', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'google_client_secret', 'GOOGLE CLIENT SECRET', 'Uru8dkoJjf3ey401DG8gLaq5', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'facebook_client_id', 'FACEBOOK CLIENT ID', '887082349379468', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'facebook_client_secret', 'FACEBOOK CLIENT SECRET', '163a1cc69bd8a9706700e816544b1429', '1', 'text', 'configurations', '2023-02-15 22:08:43', '2023-02-15 21:08:43');


New Table contacts table
New Table event_categories table
New Table podcast_categories table
ALTER TABLE `events` ADD `event_category_id` INT NULL DEFAULT NULL AFTER `law_firm_id`;
ALTER TABLE `podcasts` ADD `podcast_category_id` INT NULL DEFAULT NULL AFTER `law_firm_id`;
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'contact_us_email', 'Contact Us Receiving Email', 'support@trigonotech.com', '0', 'email', NULL, '2023-06-03 12:34:14', '2023-06-03 10:34:14');
ALTER TABLE `company_pages` ADD `is_default` INT NULL DEFAULT NULL AFTER `is_active`;
ALTER TABLE `booked_appointments` ADD `started_at` TIMESTAMP NULL DEFAULT NULL AFTER `appointment_status_code`, ADD `ended_at` TIMESTAMP NULL DEFAULT NULL AFTER `started_at`;

New Table broadcast_categories table
ALTER TABLE `company_pages` ADD `heading` LONGTEXT NULL DEFAULT NULL AFTER `name`;
ALTER TABLE `broadcasts` ADD `broadcast_category_id` INT NULL DEFAULT NULL AFTER `law_firm_id`;
DELETE FROM `general_settings` WHERE `general_settings`.`id` = 33;
INSERT INTO `pages_contents` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `section`, `page_title`, `created_at`, `updated_at`) VALUES (NULL, 'contact_page_description', 'Contact Page Description', '{\"en\":\"<h1>Faq Page Title <\\/h1>\\r\\n                            <h3>Welcome<\\/h3>\\r\\n                            <p>Faq Page Descrition \\r\\n                            <\\/p>\",\"es\":\"<p>ok sdfsdfsf<\\/p>\",\"fr\":\"<p>ok<\\/p>\",\"pt\":\"<p>ok<\\/p>\",\"it\":\"<p>ok<\\/p>\",\"de\":\"<p>ok<\\/p>\",\"ru\":\"<p>ok<\\/p>\",\"zh\":\"<p>ok<\\/p>\",\"ar\":\"<p>ok<\\/p>\"}', '1', 'textarea', 'contact_page', 'Contact Page', '2023-09-26 18:18:52', '2023-09-26 13:18:52');
ALTER TABLE `booked_appointments` ADD `is_started` INT NULL DEFAULT '0' AFTER `appointment_status_code`, ADD `started_at` TIMESTAMP NULL DEFAULT NULL AFTER `is_started`;
ALTER TABLE `booked_appointments` ADD `ended_at` TIMESTAMP NULL DEFAULT NULL AFTER `started_at`;
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'currency_symbol', 'Currency Symbol', '$', '0', 'text', NULL, '2023-10-04 16:13:01', '2023-10-04 16:13:01');


INSERT INTO `pricing_plan_modules` (`id`, `display_name`, `module_code`, `type`, `sort_order`, `created_at`, `updated_at`) VALUES (NULL, 'Certifications', 'law_firm-certifications', 'law_firm', '9', '2023-02-18 21:32:21', '2023-02-13 20:11:58');
INSERT INTO `pricing_plan_modules` (`id`, `display_name`, `module_code`, `type`, `sort_order`, `created_at`, `updated_at`) VALUES (NULL, 'Broadcasts', 'law_firm-broadcasts', 'law_firm', '9', '2023-02-18 21:32:21', '2023-02-13 20:11:58');
ALTER TABLE `podcasts` CHANGE `image` `image` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE `broadcasts` CHANGE `image` `image` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
INSERT INTO `pages_contents` (`id`, `name`, `display_name`, `value`, `is_specific`, `type`, `section`, `page_title`, `created_at`, `updated_at`) VALUES (NULL, 'footer_section_description', 'Footer Section Description', '{"en":"AWAKEN AND UNLOCK THE POWER WITHIN YOU TO HEAL! Connect with Our Community of Knowledgeable, Global Healers so that you can harness the True Expression of The Divine Soul that is your human experience, all in a Safe and Sacred Container.","es":"<p>ok sdfsdfsf<\/p>","fr":"<p>ok<\/p>","pt":"<p>ok<\/p>","it":"<p>ok<\/p>","de":"<p>ok<\/p>","ru":"<p>ok<\/p>","zh":"<p>ok<\/p>","ar":"<p>ok<\/p>"}', '1', 'textarea', 'footer_section', 'Footer Section', '2023-08-29 15:10:48', '2023-08-29 10:10:48');
DELETE FROM general_settings WHERE `general_settings`.`id` = 8?
ALTER TABLE `booked_appointments` CHANGE `question` `question` LONGTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL;
ALTER TABLE currency_codes CONVERT TO CHARACTER SET utf8;
INSERT INTO `currency_codes`(`code`, `symbol`) VALUES ('INR','₹')
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `is_multilang`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'commission_type', 'Select Commission Type', 'subscription', '0', '0', 'select_option', NULL, '2024-01-11 22:22:19', '2024-01-02 13:30:38');
ALTER TABLE `appointment_schedules` ADD `commission_amont` INT NULL DEFAULT NULL AFTER `fee`;
ALTER TABLE `users` ADD `role_id` INT NULL DEFAULT NULL AFTER `password`;
INSERT INTO `pricing_plan_modules` (`id`, `display_name`, `module_code`, `type`, `sort_order`, `created_at`, `updated_at`) VALUES (NULL, 'List Education', 'lawyer-education', 'lawyer', '7', '2023-03-14 18:52:59', '2023-02-13 20:11:58');
INSERT INTO `pricing_plan_modules` (`id`, `display_name`, `module_code`, `type`, `sort_order`, `created_at`, `updated_at`) VALUES (NULL, 'Lawyer Experience', 'lawyer-experience', 'lawyer', '9', '2023-02-18 16:32:21', '2023-02-13 20:11:58');



ALTER TABLE `messages` ADD `booked_service_id` INT NULL DEFAULT NULL AFTER `appointment_id`;
INSERT INTO `pricing_plan_modules` (`id`, `display_name`, `module_code`, `type`, `sort_order`, `created_at`, `updated_at`) VALUES (NULL, 'Lawyer Services', 'lawyer-services', 'lawyer', '9', '2023-02-18 21:32:21', '2023-02-13 20:11:58');
INSERT INTO `pricing_plan_modules` (`id`, `display_name`, `module_code`, `type`, `sort_order`, `created_at`, `updated_at`) VALUES (NULL, 'LawFirm Services', 'law_firm-services', 'law_firm', '9', '2023-02-18 21:32:21', '2023-02-13 20:11:58');
INSERT INTO `role_permissions` (`id`, `display_name`, `permission_code`, `display_group`, `created_at`, `updated_at`) VALUES (NULL, 'Delete Bank Account', 'bank_accounts.delete', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Show Bank Account', 'bank_accounts.show', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Edit Bank Account', 'bank_accounts.edit', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Add Bank Account', 'bank_accounts.add', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Bank Accounts Index', 'bank_accounts.index', 'Bank Account', '2024-02-22 18:47:17', NULL);
INSERT INTO `role_permissions` (`id`, `display_name`, `permission_code`, `display_group`, `created_at`, `updated_at`) VALUES (NULL, 'Export Bank Account', 'bank_accounts.export', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Import Bank Account', 'bank_accounts.import', 'Bank Account', '2024-02-22 18:47:17', NULL);
INSERT INTO `role_permissions` (`id`, `display_name`, `permission_code`, `display_group`, `created_at`, `updated_at`) VALUES (NULL, 'Bank Transactions Index', 'bank_transactions.index', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Add Bank Transaction', 'bank_transactions.add', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Edit Bank Transactions', 'bank_transactions.edit', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Show Bank Transactions', 'bank_transactions.show', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Delete BankTransaction', 'bank_transactions.delete', 'Bank Account', '2024-02-22 18:47:17', NULL), (NULL, 'Export Bank Transactions', 'bank_transactions.export', 'Bank Account', '2024-05-14 17:26:07', NULL), (NULL, 'Import Bank Transaction', 'bank_transactions.import', 'Bank Account', '2024-05-14 17:26:07', NULL);

INSERT INTO `gateways` (`id`, `name`, `code`, `currency`, `symbol`, `parameters`, `extra_parameters`, `convention_rate`, `currencies`, `min_amount`, `max_amount`, `percentage_charge`, `fixed_charge`, `status`, `note`, `image`, `sort_by`, `created_at`, `updated_at`, `deleted_at`) VALUES ('37', 'Bank Transfer', 'banktransfer', 'USD', 'USD', '{}', NULL, '1.00000000', '{\"0\":{\"NGN\":\"NGN\",\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"ZAR\":\"ZAR\",\"JPY\":\"JPY\",\"INR\":\"INR\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PLN\":\"PLN\"}}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '1.00000000', '10000.00000000', '0.0000', '0.50000000', '1', '', '/files/payment_gateways/1715846548bank-transfer.png', '22', '2020-09-10 14:05:02', '2024-05-16 08:02:28', NULL);
INSERT INTO `role_permissions` (`id`, `display_name`, `permission_code`, `display_group`, `created_at`, `updated_at`) VALUES (NULL, 'Notification Setting Index', 'notification_setting.index', 'Setting', '2024-02-22 18:47:17', NULL);
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `is_multilang`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'application_current_version', 'Application Current Version', '1.0.2', '0', '0', 'text', NULL, '2024-05-14 16:59:45', '2024-05-14 11:59:45');
INSERT INTO `general_settings` (`id`, `name`, `display_name`, `value`, `is_specific`, `is_multilang`, `type`, `page`, `created_at`, `updated_at`) VALUES (NULL, 'mail_driver', 'Mail Driver', 'smtp', '0', '0', 'text', NULL, '2024-05-14 16:59:45', '2024-05-14 11:59:45'), (NULL, 'mail_host', 'Mail Host', 'sandbox.smtp.mailtrap.io', '0', '0', 'text', NULL, '2024-05-14 16:59:45', '2024-05-14 11:59:45'), (NULL, 'mail_port', 'Mail Port', '587', '0', '0', 'text', NULL, '2024-05-14 16:59:45', '2024-05-14 11:59:45'),  (NULL, 'mail_username', 'Mail Username', '5e61912602edf9', '0', '0', 'text', NULL, '2024-05-14 16:59:45', '2024-05-14 11:59:45'), (NULL, 'mail_password', 'Mail Password', '275f0deee12cf5', '0', '0', 'text', NULL, '2024-05-14 16:59:45', '2024-05-14 11:59:45'), (NULL, 'mail_encryption', 'Mail Encryption', 'null', '0', '0', 'text', NULL, '2024-05-14 16:59:45', '2024-05-14 11:59:45');
INSERT INTO `notification_settings` (`id`, `display_name`, `setting_name`, `is_email_send`, `is_push_notification_send`, `is_in_app_notification_send`, `notification_category`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES (NULL, 'Quick Service Registered', 'book_quick_service', '0', '0', '0', 'Quick Services', '1', '2024-04-29 14:03:30', '2024-05-02 10:59:39', NULL);
UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 66; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 67; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 68; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 69; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 70; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 71;
UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 62; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 63; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 64; UPDATE `general_settings` SET `is_specific` = '1', `page` = 'configurations' WHERE `general_settings`.`id` = 65;
UPDATE `general_settings` SET `is_specific` = '1' WHERE `general_settings`.`id` = 61;
ALTER TABLE `funds` ADD `deleted_at` TIMESTAMP NULL DEFAULT NULL AFTER `updated_at`;

--------------------To Execute -------------------

ALTER TABLE `booked_appointments` ADD `phone` VARCHAR(255) NULL DEFAULT NULL AFTER `question`;
ALTER TABLE `commissions` ADD `service_type_id` INT NULL DEFAULT NULL AFTER `appointment_type_id`;
