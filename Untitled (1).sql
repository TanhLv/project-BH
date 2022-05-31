CREATE TABLE `role` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100)
);

CREATE TABLE `account` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(150),
  `password` varchar(32),
  `fullname` varchar(100),
  `phoneNo` varchar(100),
  `address` varchar(255),
  `role_id` int,
  `created_at` datetime,
  `update_at` datetime
);

CREATE TABLE `feedback` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `fullname` varchar(255),
  `email` varchar(150),
  `phoneNo` varchar(100),
  `subject_name` varchar(255),
  `note` varchar(255),
  `created_at` datetime,
  `status` varchar(255)
);


CREATE TABLE `product` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(100),
  `thumbnail` varchar(100),
  `description` longtext,
  `price` float
);

CREATE TABLE `content_title` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `content` longtext,
  `product_id` int
);

CREATE TABLE `benefits` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `product_id` int,
  `lose_the_ability_to_work` varchar(150),
  `death_by_accident` varchar(150),
  `Death_due_to_special_accident` varchar(150),
  `Death_from_cancer` varchar(150),
  `Temporary_disability_benefits` longtext,
  `Serious_illness_with_mild_form` varchar(150),
  `Serious_illness` varchar(150),
  `Benefits_to_pay_medical_expenses` longtext
);

ALTER TABLE `account` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `content_title` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

alter table product add FOREIGN key (category_id) REFERENCES category (id);

ALTER TABLE `benefits` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
