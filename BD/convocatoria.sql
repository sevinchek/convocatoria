-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 10, 2018 at 05:16 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `convocatoria`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add profesiones', 7, 'add_profesiones'),
(20, 'Can change profesiones', 7, 'change_profesiones'),
(21, 'Can delete profesiones', 7, 'delete_profesiones'),
(22, 'Can add persona', 8, 'add_persona'),
(23, 'Can change persona', 8, 'change_persona'),
(24, 'Can delete persona', 8, 'delete_persona'),
(25, 'Can add cargo', 9, 'add_cargo'),
(26, 'Can change cargo', 9, 'change_cargo'),
(27, 'Can delete cargo', 9, 'delete_cargo'),
(28, 'Can add obj contrat', 10, 'add_objcontrat'),
(29, 'Can change obj contrat', 10, 'change_objcontrat'),
(30, 'Can delete obj contrat', 10, 'delete_objcontrat'),
(31, 'Can add cliente', 11, 'add_cliente'),
(32, 'Can change cliente', 11, 'change_cliente'),
(33, 'Can delete cliente', 11, 'delete_cliente'),
(34, 'Can add pers profesion', 12, 'add_persprofesion'),
(35, 'Can change pers profesion', 12, 'change_persprofesion'),
(36, 'Can delete pers profesion', 12, 'delete_persprofesion'),
(37, 'Can add convocatoria', 13, 'add_convocatoria'),
(38, 'Can change convocatoria', 13, 'change_convocatoria'),
(39, 'Can delete convocatoria', 13, 'delete_convocatoria'),
(40, 'Can add resul conv', 14, 'add_resulconv'),
(41, 'Can change resul conv', 14, 'change_resulconv'),
(42, 'Can delete resul conv', 14, 'delete_resulconv'),
(43, 'Can add conv pers', 15, 'add_convpers'),
(44, 'Can change conv pers', 15, 'change_convpers'),
(45, 'Can delete conv pers', 15, 'delete_convpers');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'GestionConvocatoria', 'cargo'),
(11, 'GestionConvocatoria', 'cliente'),
(13, 'GestionConvocatoria', 'convocatoria'),
(15, 'GestionConvocatoria', 'convpers'),
(10, 'GestionConvocatoria', 'objcontrat'),
(8, 'GestionConvocatoria', 'persona'),
(12, 'GestionConvocatoria', 'persprofesion'),
(7, 'GestionConvocatoria', 'profesiones'),
(14, 'GestionConvocatoria', 'resulconv'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'GestionConvocatoria', '0001_initial', '2018-06-10 09:03:17.243795'),
(2, 'contenttypes', '0001_initial', '2018-06-10 09:03:18.002489'),
(3, 'auth', '0001_initial', '2018-06-10 09:03:26.134071'),
(4, 'admin', '0001_initial', '2018-06-10 09:03:28.017551'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-06-10 09:03:29.294810'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-06-10 09:03:30.155413'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-06-10 09:03:30.960510'),
(8, 'auth', '0004_alter_user_username_opts', '2018-06-10 09:03:31.050907'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-06-10 09:03:31.656032'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-06-10 09:03:31.700473'),
(11, 'sessions', '0001_initial', '2018-06-10 09:03:32.527598');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_cargo`
--

CREATE TABLE `GestionConvocatoria_cargo` (
  `CodCargo` int(11) NOT NULL,
  `DesCargo` varchar(60) NOT NULL,
  `FlgMiEmpresa` varchar(1) NOT NULL,
  `Vigencia` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_cliente`
--

CREATE TABLE `GestionConvocatoria_cliente` (
  `CodPers` int(11) NOT NULL,
  `CodSector` int(11) NOT NULL,
  `NroRuc` varchar(20) NOT NULL,
  `GerGral` int(11) NOT NULL,
  `Vigente` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_convocatoria`
--

CREATE TABLE `GestionConvocatoria_convocatoria` (
  `NroConv` int(11) NOT NULL,
  `FecPubli` date NOT NULL,
  `FecBuenaPro` date NOT NULL,
  `Nomenclatura` varchar(100) NOT NULL,
  `FecReinicio` date NOT NULL,
  `DescObjeto` varchar(1000) NOT NULL,
  `CodSNIP` varchar(10) NOT NULL,
  `ValRefer` decimal(9,2) NOT NULL,
  `RutaDoc` varchar(300) NOT NULL,
  `CodObjC` int(11) NOT NULL,
  `CodPers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_convpers`
--

CREATE TABLE `GestionConvocatoria_convpers` (
  `NroConv` int(11) NOT NULL,
  `Experiencia` varchar(500) NOT NULL,
  `ExpNroMeses` int(11) NOT NULL,
  `ExpNroDias` int(11) NOT NULL,
  `FlgCIPVigen` int(11) NOT NULL,
  `CodCargo` int(11) NOT NULL,
  `CodPers` int(11) NOT NULL,
  `CorrProf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_objcontrat`
--

CREATE TABLE `GestionConvocatoria_objcontrat` (
  `CodObjC` int(11) NOT NULL,
  `DescObjeto` varchar(40) NOT NULL,
  `Vigente` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_persona`
--

CREATE TABLE `GestionConvocatoria_persona` (
  `CodPers` int(11) NOT NULL,
  `TipPersona` varchar(1) NOT NULL,
  `DesPersona` varchar(100) NOT NULL,
  `DesCorta` varchar(30) NOT NULL,
  `FlgCli` varchar(1) NOT NULL,
  `FlgEmplInt` varchar(1) NOT NULL,
  `FlgEExt` varchar(1) NOT NULL,
  `Direcc` varchar(100) NOT NULL,
  `CodDpto` varchar(2) NOT NULL,
  `CodProv` varchar(2) NOT NULL,
  `CodDist` varchar(2) NOT NULL,
  `Hobby` varchar(2000) NOT NULL,
  `Foto` varchar(100) NOT NULL,
  `FecNac` date NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `DescLicCond` varchar(20) NOT NULL,
  `FecVigLC` date NOT NULL,
  `Observac` varchar(300) NOT NULL,
  `RutaDoc` varchar(300) NOT NULL,
  `Vigente` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_persprofesion`
--

CREATE TABLE `GestionConvocatoria_persprofesion` (
  `CorrProf` int(11) NOT NULL,
  `CodCentEst` int(11) NOT NULL,
  `NroCIP` varchar(10) NOT NULL,
  `FecCIPVig` date NOT NULL,
  `Vigente` varchar(1) NOT NULL,
  `CodPers` int(11) NOT NULL,
  `CodProf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_profesiones`
--

CREATE TABLE `GestionConvocatoria_profesiones` (
  `CodProf` int(11) NOT NULL,
  `Grado` varchar(100) NOT NULL,
  `DesProf` varchar(30) NOT NULL,
  `Vigente` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `GestionConvocatoria_resulconv`
--

CREATE TABLE `GestionConvocatoria_resulconv` (
  `CorrConv` int(11) NOT NULL,
  `Empresa` varchar(200) NOT NULL,
  `FlgGana` varchar(1) NOT NULL,
  `EvalTec` decimal(5,2) NOT NULL,
  `EvalEcon` decimal(5,2) NOT NULL,
  `Observac` varchar(2000) NOT NULL,
  `NroConv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `auth_group__permission_id_242b0a3358dedc74_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_16ddc0e5bd11b493_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `auth_user_u_permission_id_31f8bc14bd87945c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_content_type_id_2ece1a2a0c01fc4_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_24f5c3ea4c034cfd_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_67a80eb32459de4d_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `GestionConvocatoria_cargo`
--
ALTER TABLE `GestionConvocatoria_cargo`
  ADD PRIMARY KEY (`CodCargo`);

--
-- Indexes for table `GestionConvocatoria_cliente`
--
ALTER TABLE `GestionConvocatoria_cliente`
  ADD PRIMARY KEY (`CodPers`);

--
-- Indexes for table `GestionConvocatoria_convocatoria`
--
ALTER TABLE `GestionConvocatoria_convocatoria`
  ADD PRIMARY KEY (`NroConv`),
  ADD KEY `GestionConvocatoria_convocatoria_507267bf` (`CodObjC`),
  ADD KEY `GestionConvocatoria_convocatoria_694b9660` (`CodPers`);

--
-- Indexes for table `GestionConvocatoria_convpers`
--
ALTER TABLE `GestionConvocatoria_convpers`
  ADD PRIMARY KEY (`NroConv`),
  ADD KEY `CodCargo_1e2cc5c96e0cbd34_fk_GestionConvocatoria_cargo_CodCargo` (`CodCargo`),
  ADD KEY `CodPers_7485ed258c410aba_fk_GestionConvocatoria_persona_CodPers` (`CodPers`),
  ADD KEY `GestionConvocatoria_convpers_fe08526b` (`CorrProf`);

--
-- Indexes for table `GestionConvocatoria_objcontrat`
--
ALTER TABLE `GestionConvocatoria_objcontrat`
  ADD PRIMARY KEY (`CodObjC`);

--
-- Indexes for table `GestionConvocatoria_persona`
--
ALTER TABLE `GestionConvocatoria_persona`
  ADD PRIMARY KEY (`CodPers`);

--
-- Indexes for table `GestionConvocatoria_persprofesion`
--
ALTER TABLE `GestionConvocatoria_persprofesion`
  ADD PRIMARY KEY (`CorrProf`),
  ADD KEY `GestionConvocatoria_persprofesion_694b9660` (`CodPers`),
  ADD KEY `GestionConvocatoria_persprofesion_f8695386` (`CodProf`);

--
-- Indexes for table `GestionConvocatoria_profesiones`
--
ALTER TABLE `GestionConvocatoria_profesiones`
  ADD PRIMARY KEY (`CodProf`);

--
-- Indexes for table `GestionConvocatoria_resulconv`
--
ALTER TABLE `GestionConvocatoria_resulconv`
  ADD PRIMARY KEY (`CorrConv`),
  ADD UNIQUE KEY `NroConv` (`NroConv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group__permission_id_242b0a3358dedc74_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permission_group_id_58e88b92bd2b91a3_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_3b6b072a4e595cf1_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_16ddc0e5bd11b493_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_ab28f8ddb8f2d9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_u_permission_id_31f8bc14bd87945c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissio_user_id_38c96f67a4d0e39_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_24f5c3ea4c034cfd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_content_type_id_2ece1a2a0c01fc4_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `GestionConvocatoria_cliente`
--
ALTER TABLE `GestionConvocatoria_cliente`
  ADD CONSTRAINT `G_CodPers_fa36263f10d19bf_fk_GestionConvocatoria_persona_CodPers` FOREIGN KEY (`CodPers`) REFERENCES `GestionConvocatoria_persona` (`CodPers`);

--
-- Constraints for table `GestionConvocatoria_convocatoria`
--
ALTER TABLE `GestionConvocatoria_convocatoria`
  ADD CONSTRAINT `CodPers_2cdfec7fc5a7ce2c_fk_GestionConvocatoria_cliente_CodPers` FOREIGN KEY (`CodPers`) REFERENCES `GestionConvocatoria_cliente` (`CodPers`),
  ADD CONSTRAINT `aa5bfb9454551bb810981157616e2f67` FOREIGN KEY (`CodObjC`) REFERENCES `GestionConvocatoria_objcontrat` (`CodObjC`);

--
-- Constraints for table `GestionConvocatoria_convpers`
--
ALTER TABLE `GestionConvocatoria_convpers`
  ADD CONSTRAINT `CodCargo_1e2cc5c96e0cbd34_fk_GestionConvocatoria_cargo_CodCargo` FOREIGN KEY (`CodCargo`) REFERENCES `GestionConvocatoria_cargo` (`CodCargo`),
  ADD CONSTRAINT `CodPers_7485ed258c410aba_fk_GestionConvocatoria_persona_CodPers` FOREIGN KEY (`CodPers`) REFERENCES `GestionConvocatoria_persona` (`CodPers`),
  ADD CONSTRAINT `D57eeaf2d86f217819ee64d8ac08f89c` FOREIGN KEY (`NroConv`) REFERENCES `GestionConvocatoria_convocatoria` (`NroConv`),
  ADD CONSTRAINT `e7874bc120c3b760d5289258ccb9e3df` FOREIGN KEY (`CorrProf`) REFERENCES `GestionConvocatoria_persprofesion` (`CorrProf`);

--
-- Constraints for table `GestionConvocatoria_persprofesion`
--
ALTER TABLE `GestionConvocatoria_persprofesion`
  ADD CONSTRAINT `CodPers_32631d5e418f7b94_fk_GestionConvocatoria_persona_CodPers` FOREIGN KEY (`CodPers`) REFERENCES `GestionConvocatoria_persona` (`CodPers`),
  ADD CONSTRAINT `D332ce4593e45fd035eda8d3837bd29f` FOREIGN KEY (`CodProf`) REFERENCES `GestionConvocatoria_profesiones` (`CodProf`);

--
-- Constraints for table `GestionConvocatoria_resulconv`
--
ALTER TABLE `GestionConvocatoria_resulconv`
  ADD CONSTRAINT `D5abf1c30577b00406c83a5c1eabab10` FOREIGN KEY (`NroConv`) REFERENCES `GestionConvocatoria_convocatoria` (`NroConv`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
