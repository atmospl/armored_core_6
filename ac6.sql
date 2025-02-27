-- -------------------------------------------------------------
-- TablePlus 6.2.1(578)
--
-- https://tableplus.com/
--
-- Database: ac6
-- Generation Time: 2025-02-04 19:51:32.1570
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."ac6_arms";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_arms" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "load" float8 NOT NULL,
    "ap" int4 NOT NULL,
    "bullet_defence" int4 NOT NULL,
    "en_defence" int4 NOT NULL,
    "explosion_defence" int4 NOT NULL,
    "arm_load_capacity" float8 NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_booster";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_booster" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "load" float8 NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_core";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_core" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "load" float8 NOT NULL,
    "ap" int4 NOT NULL,
    "bullet_defence" int4 NOT NULL,
    "en_defence" int4 NOT NULL,
    "explosion_defence" int4 NOT NULL,
    "stability" int4 NOT NULL,
    "output_correction" float8 NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_customconfiguration";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_customconfiguration" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "arm_id" int8 NOT NULL,
    "booster_id" int8 NOT NULL,
    "core_id" int8 NOT NULL,
    "fcs_id" int8 NOT NULL,
    "generator_id" int8 NOT NULL,
    "head_id" int8 NOT NULL,
    "leg_id" int8 NOT NULL,
    "unit_left_arm_id" int8,
    "unit_left_shoulder_id" int8,
    "unit_right_arm_id" int8,
    "unit_right_shoulder_id" int8,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_fcs";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_fcs" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "load" float8 NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_generator";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_generator" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "supply" float8 NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_head";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_head" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "load" float8 NOT NULL,
    "ap" int4 NOT NULL,
    "bullet_defence" int4 NOT NULL,
    "en_defence" int4 NOT NULL,
    "explosion_defence" int4 NOT NULL,
    "stability" int4 NOT NULL,
    "recovery_performance" int4 NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_legs";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_legs" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "load" float8 NOT NULL,
    "ap" int4 NOT NULL,
    "bullet_defence" int4 NOT NULL,
    "en_defence" int4 NOT NULL,
    "explosion_defence" int4 NOT NULL,
    "stability" int4 NOT NULL,
    "leg_load_capacity" float8 NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

DROP TABLE IF EXISTS "public"."ac6_units";
-- This script only contains the table creation statements and does not fully represent the table in the database. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."ac6_units" (
    "id" int8 NOT NULL,
    "name" varchar(100) NOT NULL,
    "weight" float8 NOT NULL,
    "load" float8 NOT NULL,
    "is_left_arm" bool NOT NULL,
    "is_right_arm" bool NOT NULL,
    "is_left_shoulder" bool NOT NULL,
    "is_right_shoulder" bool NOT NULL,
    "price" float8 NOT NULL,
    "manufacture" varchar(100) NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."ac6_arms" ("id", "name", "weight", "load", "ap", "bullet_defence", "en_defence", "explosion_defence", "arm_load_capacity", "price", "manufacture") VALUES
(1, 'AA-J-123 BASHO', 10480, 210, 2430, 208, 191, 225, 10520, 81000, 'BAWS'),
(2, 'AA-J-123/RC JAILBREAK', 8480, 210, 1000, 180, 190, 215, 10520, 0, 'BAWS'),
(3, 'AR-011 MELANDER', 13650, 265, 2260, 247, 217, 234, 15100, 95000, 'BALAM'),
(4, 'AR-012 MELANDER C3', 12000, 232, 2010, 239, 212, 233, 12000, 0, 'BALAM'),
(5, 'DF-AR-08 TIAN-QUANG', 20020, 295, 2480, 260, 250, 251, 19500, 200000, 'DAFENG'),
(6, 'DF-AR-09 TIAN-LAO', 26740, 266, 2970, 305, 251, 271, 17200, 310000, 'DAFENG'),
(7, 'VP-46S', 14020, 278, 2240, 231, 252, 218, 14520, 177000, 'ARQUEBUS'),
(8, 'VP-46D', 10990, 248, 1620, 196, 230, 190, 11800, 258000, 'ARQUEBUS'),
(9, 'NACHTREIHER/44E', 11420, 290, 1880, 204, 213, 195, 12730, 138000, 'SCHNEIDER'),
(10, 'LAMMERGEIER/46F', 9700, 328, 1590, 189, 246, 180, 11270, 195000, 'SCHNEIDER'),
(11, 'VE-46A', 22210, 380, 2660, 262, 270, 257, 21300, 286000, 'ARQUEBUS A.D.D.'),
(12, 'AC-2000 TOOL ARM', 11300, 216, 1990, 207, 204, 209, 13300, 0, 'RaD'),
(13, 'AC-3000 WRECKER', 14150, 220, 2030, 232, 170, 237, 15800, 79000, 'RaD'),
(14, 'AS-5000 SALAD', 20940, 218, 2600, 258, 271, 255, 18700, 249000, 'RaD'),
(15, 'EL-TA-10 FIRMEZA', 11220, 270, 1900, 210, 214, 187, 13540, 227000, 'ELCANO'),
(16, 'EL-PA-00 ALBA', 9810, 315, 1750, 205, 205, 205, 11350, 266000, 'ELCANO'),
(17, '04-101 MIND ALPHA', 16960, 358, 2300, 245, 260, 246, 15550, 272000, 'ALLMIND'),
(18, 'IA-C01A: EPHEMERA', 12700, 312, 2380, 219, 263, 256, 12680, 296000, 'INSTITUTE'),
(19, 'IB-CO3A: HAL 826', 14160, 300, 2210, 225, 248, 236, 14000, 322000, 'INSTITUTE');

INSERT INTO "public"."ac6_booster" ("id", "name", "weight", "load", "price", "manufacture") VALUES
(1, 'AB-J-137 KIKAKU', 1820, 266, 53000, 'BAWS'),
(2, 'BST-G1/P10', 1300, 130, 0, 'FURLONG'),
(3, 'BST-G2/P04', 1710, 250, 72000, 'FURLONG'),
(4, 'BST-G2/P06SPD', 1420, 390, 133000, 'FURLONG'),
(5, 'ALULA/21E', 1900, 410, 60000, 'SCHNEIDER'),
(6, 'FLUEGEL/21Z', 1980, 282, 202000, 'SCHNEIDER'),
(7, 'BUERZEL/21D', 2240, 480, 151000, 'SCHNEIDER'),
(8, 'BC-0600 12345', 1360, 180, 84000, 'RaD'),
(9, 'BC-0400 MULE', 970, 200, 88000, 'RaD'),
(10, 'BC-0200 GRIDWALKER', 2010, 244, 169000, 'RaD'),
(11, 'IA-C01B:GILLS', 1590, 400, 296000, 'INSTITUTE'),
(12, 'IA-C03B:NGI 001', 1930, 342, 323000, 'INSTITUTE');

INSERT INTO "public"."ac6_core" ("id", "name", "weight", "load", "ap", "bullet_defence", "en_defence", "explosion_defence", "stability", "output_correction", "price", "manufacture") VALUES
(1, 'AC-J-120 BASHO', 16100, 300, 3840, 435, 398, 460, 502, 85, 166000, 'BAWS'),
(2, 'AC-J-120/RC JAILBREAK', 12350, 300, 2400, 405, 368, 420, 403, 83, 0, 'BAWS'),
(3, 'BD-011 MELANDER', 15200, 304, 3680, 438, 380, 429, 474, 105, 195000, 'BALAM'),
(4, 'BD-012 MELANDER C3', 13700, 322, 3010, 425, 377, 428, 433, 102, 0, 'BALAM'),
(5, 'DF-BD-08 TIAN-QUANG', 20650, 388, 4100, 473, 438, 478, 629, 114, 390000, 'DAFENG'),
(6, 'VP-40S', 15030, 337, 3160, 427, 436, 389, 446, 111, 354000, 'ARQUEBUS'),
(7, 'NACHTREIHER/40E', 9820, 330, 2630, 349, 359, 331, 366, 91, 275000, 'SCHNEIDER'),
(8, 'LAMMERGEIER/40F', 9700, 341, 2470, 330, 390, 337, 354, 117, 395000, 'SCHNEIDER'),
(9, 'VE-40A', 21100, 432, 4320, 447, 495, 458, 521, 122, 570000, 'ARQUEBUS A.D.D.'),
(10, 'CC-2000 ORBITER', 12650, 267, 2780, 393, 366, 374, 407, 103, 0, 'RaD'),
(11, 'CC-3000 WRECKER', 19000, 310, 3940, 468, 434, 461, 532, 96, 158000, 'RaD'),
(12, 'CS-5000 MAIN DISH', 23600, 413, 3890, 476, 489, 469, 641, 97, 519000, 'RaD'),
(13, 'EL-TC-10 FIRMEZA', 10890, 351, 2650, 384, 360, 375, 410, 109, 452000, 'ELCANO'),
(14, 'EL-PC-00 ALBA', 12000, 315, 2850, 370, 370, 370, 368, 101, 531000, 'ELCANO'),
(15, '07-061 MIND ALPHA', 16510, 364, 3520, 440, 455, 445, 455, 112, 553000, 'ALLMIND'),
(16, 'IA-C01C: EPHEMERA', 13200, 412, 2710, 335, 382, 350, 353, 126, 590000, 'INSTITUTE'),
(17, 'IB-C03C: HAL 826', 18526, 366, 3670, 451, 469, 463, 385, 120, 663000, 'INSTITUTE');

INSERT INTO "public"."ac6_customconfiguration" ("id", "name", "arm_id", "booster_id", "core_id", "fcs_id", "generator_id", "head_id", "leg_id", "unit_left_arm_id", "unit_left_shoulder_id", "unit_right_arm_id", "unit_right_shoulder_id") VALUES
(1, 'STEEL HAZE', 9, 5, 7, 2, 3, 9, 7, 8, 14, 30, 202),
(2, 'LOADER 4', 12, 2, 10, 1, 1, 14, 9, 10, NULL, 17, 64),
(3, 'HEAD BRINGER', 4, 3, 4, 6, 5, 5, 4, 20, 210, 15, 64);

INSERT INTO "public"."ac6_fcs" ("id", "name", "weight", "load", "price", "manufacture") VALUES
(1, 'FCS-G1/P01', 80, 198, 0, 'FURLONG'),
(2, 'FCS-G2/P05', 100, 232, 67000, 'FURLONG'),
(3, 'FCS-G2/P10SLT', 120, 209, 96000, 'FURLONG'),
(4, 'FCS-G2/P12SML', 130, 278, 141000, 'FURLONG'),
(5, 'FC-006 ABBOT', 90, 266, 135000, 'BALAM'),
(6, 'FC-008 TALBOT', 140, 312, 155000, 'BALAM'),
(7, 'VE-21A', 85, 320, 228000, 'ARQUEBUS A.D.D.'),
(8, 'VE-21B', 160, 388, 315000, 'ARQUEBUS A.D.D.'),
(9, 'IA-C01F:OCELLUS', 130, 292, 367000, 'INSTITUTE'),
(10, 'IB-C03F:WLT 001', 150, 486, 400000, 'INSTITUTE');

INSERT INTO "public"."ac6_generator" ("id", "name", "weight", "supply", "price", "manufacture") VALUES
(1, 'AG-J-098 JOSO', 3420, 2600, 0, 'BAWS'),
(2, 'AG-E-013 YABA', 5080, 3000, 240000, 'BAWS'),
(3, 'AG-T-005 HOKUSHI', 7080, 3810, 312000, 'BAWS'),
(4, 'DF-GN-02 LING-TAI', 3860, 2340, 90000, 'DAFENG'),
(5, 'DF-GN-06 MING-TANG', 6320, 3310, 170000, 'DAFENG'),
(6, 'DF-GN-08 SAN-TAI', 10060, 3210, 300000, 'DAFENG'),
(7, 'VP-20S', 3800, 3400, 126000, 'ARQUEBUS'),
(8, 'VP-20C', 5320, 3670, 229000, 'ARQUEBUS'),
(9, 'VP-20D', 11030, 4430, 416000, 'ARQUEBUS'),
(10, 'VE-20A', 3590, 3180, 206000, 'ARQUEBUS A.D.D.'),
(11, 'VE-20B', 5860, 2890, 324000, 'ARQUEBUS A.D.D.'),
(12, 'VE-20C', 10130, 4090, 405000, 'ARQUEBUS A.D.D.'),
(13, 'IA-CO1G:AORTA', 4330, 3500, 460000, 'INSTITUTE'),
(14, 'IB-C03G:NGI 000', 8950, 4340, 510000, 'INSTITUTE');

INSERT INTO "public"."ac6_head" ("id", "name", "weight", "load", "ap", "bullet_defence", "en_defence", "explosion_defence", "stability", "recovery_performance", "price", "manufacture") VALUES
(1, 'AH-J-124 BASHO', 4600, 95, 1250, 191, 169, 192, 394, 90, 61000, 'BAWS'),
(2, 'AH-J-124/RC JAILBREAK', 4250, 95, 1000, 181, 159, 182, 302, 60, 0, 'BAWS'),
(3, 'HD-011 MELANDER', 3160, 135, 1010, 173, 168, 170, 430, 124, 75000, 'BALAM'),
(4, 'HD-033M VERRILL', 3830, 240, 1080, 188, 185, 185, 469, 112, 205000, 'BALAM'),
(5, 'HD-012 MELANDER C3', 3300, 165, 1070, 175, 177, 169, 436, 115, 0, 'BALAM'),
(6, 'DF-HD-08 TIAN-QUANG', 1230, 88, 420, 142, 140, 184, 267, 79, 58000, 'DAFENG'),
(7, 'VP-44S', 3080, 148, 850, 170, 172, 168, 432, 136, 124000, 'ARQUEBUS'),
(8, 'VP-44D', 3260, 177, 880, 150, 183, 172, 496, 100, 231000, 'ARQUEBUS'),
(9, 'NACHTREIHER/44E', 2320, 210, 590, 153, 155, 152, 463, 107, 84000, 'SCHNEIDER'),
(10, 'KASUAR/44Z', 2590, 254, 480, 149, 157, 151, 498, 128, 210000, 'SCHNEIDER'),
(11, 'LAMMERGEIER/44F', 1050, 220, 300, 130, 153, 130, 305, 121, 155000, 'SCHNEIDER'),
(12, 'VE-44A', 3640, 182, 1060, 179, 188, 178, 423, 138, 275000, 'ARQUEBUS A.D.D.'),
(13, 'VE-44B', 4320, 265, 1040, 167, 181, 166, 450, 154, 306000, 'ARQUEBUS A.D.D.'),
(14, 'HC-2000 FINDER EYE', 2670, 84, 660, 157, 142, 153, 396, 102, 0, 'RaD'),
(15, 'HC-2000/BC SHADE EYE', 3090, 163, 770, 174, 167, 181, 472, 127, 147000, 'RaD'),
(16, 'HC-3000 WRECKER', 3800, 102, 1130, 200, 170, 187, 378, 93, 59000, 'RaD'),
(17, 'HS-5000 APPETIZER', 3000, 103, 950, 176, 180, 176, 418, 98, 199000, 'RaD'),
(18, 'EL-TH-10 FIRMEZA', 2370, 134, 620, 156, 158, 154, 421, 104, 177000, 'ELCANO'),
(19, 'EL-PH-00 ALBA', 2800, 205, 600, 171, 171, 171, 465, 129, 208000, 'ELCANO'),
(20, '20-081 MIND ALPHA', 3250, 142, 820, 178, 186, 173, 462, 109, 223000, 'ALLMIND'),
(21, '20-082 MIND BETA', 3460, 128, 520, 158, 164, 150, 536, 96, 261000, 'ALLMIND'),
(22, 'IA-C01H: EPHEMERA', 4330, 233, 990, 160, 189, 186, 480, 132, 237000, 'INSTITUTE'),
(23, 'IB-CO3H: HAL 826', 3760, 215, 930, 169, 182, 180, 470, 125, 254000, 'INSTITUTE');

INSERT INTO "public"."ac6_legs" ("id", "name", "weight", "load", "ap", "bullet_defence", "en_defence", "explosion_defence", "stability", "leg_load_capacity", "price", "manufacture") VALUES
(1, 'AL-J-121 BASHO', 19720, 300, 4240, 362, 325, 398, 824, 62600, 141000, 'BAWS'),
(2, 'AL-J-121/RC JAILBREAK', 18560, 300, 2000, 351, 315, 388, 658, 62600, 0, 'BAWS'),
(3, 'LG-011 MELANDER', 17960, 365, 4300, 369, 340, 361, 843, 60520, 175000, 'BALAM'),
(4, 'LG-012 MELANDER C3', 16520, 355, 3980, 363, 339, 357, 835, 55440, 0, 'BALAM'),
(5, 'DF-LG-08 TIAN-QUANG', 26950, 400, 5300, 414, 382, 395, 925, 82600, 350000, 'DAFENG'),
(6, 'VP-422', 17170, 387, 4090, 352, 379, 334, 830, 58620, 313000, 'ARQUEBUS'),
(7, 'NACHTREIHER/42E', 14030, 462, 3360, 295, 330, 298, 662, 48650, 243000, 'SCHNEIDER'),
(8, 'VE-42A', 31580, 465, 5700, 380, 421, 387, 977, 85700, 504000, 'ARQUEBUS A.D.D.'),
(9, '2C-2000 CRAWLER', 16300, 280, 3650, 326, 322, 337, 799, 53700, 0, 'RaD'),
(10, '2C-3000 WRECKER', 23230, 680, 5220, 350, 312, 383, 1003, 68900, 139000, 'RaD'),
(11, '2S-5000 DESSERT', 27180, 420, 5290, 382, 392, 369, 997, 77100, 439000, 'RaD'),
(12, 'EL-TL-10 FIRMEZA', 11200, 378, 3600, 328, 266, 270, 737, 52100, 400000, 'ELCANO'),
(13, 'EL-PL-00 ALBA', 13150, 360, 3850, 316, 316, 316, 809, 50100, 469000, 'ELCANO'),
(14, '06-041 MIND ALPHA', 20810, 412, 4260, 370, 390, 356, 894, 63810, 272000, 'ALLMIND'),
(15, 'IA-CO1L: EPHEMERA', 15200, 398, 3800, 297, 352, 352, 805, 55050, 521000, 'INSTITUTE'),
(16, 'IB-C03L: HAL 826', 20590, 385, 4120, 359, 380, 351, 906, 64900, 563000, 'INSTITUTE'),
(17, 'KASUAR/42Z', 16510, 388, 3580, 293, 328, 290, 686, 49280, 192000, 'SCHNEIDER'),
(18, 'RC-2000 SPRING CHIKEN', 25340, 402, 4410, 406, 354, 380, 801, 70360, 419000, 'RaD'),
(19, '06-042 MIND BETA', 19750, 426, 4020, 340, 360, 364, 788, 61600, 521000, 'ALLMIND'),
(20, 'LG-033M VERRILL', 36200, 675, 5250, 402, 357, 372, 1413, 76200, 465000, 'BALAM'),
(21, 'VP-424', 31600, 760, 4100, 366, 384, 386, 1366, 69800, 313000, 'ARQUEBUS'),
(22, 'LAMMERGEIER/42F', 22430, 790, 3560, 300, 360, 295, 980, 52460, 415000, 'SCHNEIDER'),
(23, 'LG-022T BORNEMISSZA', 49800, 455, 9240, 440, 336, 399, 1500, 100300, 280000, 'BALAM'),
(24, 'VE-42B', 48600, 824, 8600, 379, 460, 406, 924, 91000, 490000, 'ARQUEBUS A.D.D.'),
(25, 'EL-TL-11 FORTALEZA', 24650, 620, 5100, 345, 311, 314, 822, 69300, 385000, 'ELCANO');

INSERT INTO "public"."ac6_units" ("id", "name", "weight", "load", "is_left_arm", "is_right_arm", "is_left_shoulder", "is_right_shoulder", "price", "manufacture") VALUES
(1, 'DF-ET-09 TAI-YANG-SHOU', 3790, 160, 't', 'f', 't', 'f', 215000, 'DAFENG'),
(2, 'PB-033M ASHMEAD', 4180, 225, 't', 'f', 't', 'f', 185000, 'BALAM'),
(3, 'WB-0010 DOUBLE TROUBLE', 5090, 108, 't', 'f', 't', 'f', 69000, 'RaD'),
(4, '44-143 HMMR', 2410, 311, 't', 'f', 't', 'f', 172000, 'ALLMIND'),
(5, 'VP-67EB', 1971, 198, 't', 'f', 't', 'f', 94000, 'ARQUEBUS'),
(6, 'VP-67LD', 1350, 150, 't', 'f', 't', 'f', 135000, 'ARQUEBUS'),
(7, 'Vvc-770LB', 2060, 245, 't', 'f', 't', 'f', 210000, 'VCPL'),
(8, 'Vvc-774LS', 3260, 328, 't', 'f', 't', 'f', 339000, 'VCPL'),
(9, 'VE-67LLA', 4520, 460, 't', 'f', 't', 'f', 270000, 'ARQUEBUS A.D.D.'),
(10, 'HI-32： BU-TT/A', 1800, 213, 't', 'f', 't', 'f', 0, 'TAKIGAWA'),
(11, 'IA-C01W2： MOONLIGHT', 2200, 544, 't', 'f', 't', 'f', 270000, 'INSTITUTE'),
(12, 'IA-C01W7： ML-REDSHIFT', 2200, 544, 't', 'f', 't', 'f', 343000, 'INSTITUTE'),
(13, 'IB-C03W2： WLT 101', 2030, 578, 't', 'f', 't', 'f', 368000, 'INSTITUTE'),
(14, 'MA-J-200 RANSETSU-RF', 4210, 158, 't', 't', 't', 't', 105000, 'BAWS'),
(15, 'LR-036 CURTIS', 4150, 289, 't', 't', 't', 't', 65000, 'BALAM'),
(16, 'LR-037 HARRIS', 4840, 441, 't', 't', 't', 't', 135000, 'BALAM'),
(17, 'RF-024 TURNER', 3560, 102, 't', 't', 't', 't', 55000, 'BALAM'),
(18, 'RF-025 SCUDDER', 3830, 153, 't', 't', 't', 't', 205000, 'BALAM'),
(19, 'MA-J-201 RANSETSU-AR', 3620, 132, 't', 't', 't', 't', 111000, 'BAWS'),
(20, 'MG-014 LUDLOW', 2460, 82, 't', 't', 't', 't', 45000, 'BALAM'),
(21, 'DF-MG-02 CHANG-CHEN', 3280, 143, 't', 't', 't', 't', 120000, 'DAFENG'),
(22, 'WR-0555 ATTACHE', 5110, 303, 't', 't', 't', 't', 169000, 'RaD'),
(23, 'MA-E-210 ETSUJIN', 2810, 98, 't', 't', 't', 't', 74000, 'BAWS'),
(24, 'DF-GA-08 HU-BEN', 5800, 425, 't', 't', 't', 't', 170000, 'DAFENG'),
(25, 'SG-026 HALDEMAN', 3660, 185, 't', 't', 't', 't', 75000, 'BALAM'),
(26, 'SG-027 ZIMMERMAN', 4400, 242, 't', 't', 't', 't', 115000, 'BALAM'),
(27, 'WR-0777 SWEET SIXTEEN', 1640, 268, 't', 't', 't', 't', 49000, 'RaD'),
(28, 'HG-003 COQUILLETT', 1200, 122, 't', 't', 't', 't', 35000, 'BALAM'),
(29, 'HG-004 DUCKETT', 1650, 158, 't', 't', 't', 't', 112000, 'BALAM'),
(30, 'MA-E-211 SAMPU', 960, 62, 't', 't', 't', 't', 73000, 'BAWS'),
(31, 'EL-PW-00 VIENTO', 1180, 215, 't', 't', 't', 't', 148000, 'ELCANO'),
(32, 'VP-66EG', 980, 247, 't', 't', 't', 't', 129000, 'ARQUEBUS'),
(33, 'DF-BA-06 XUAN-GE', 5480, 240, 't', 't', 't', 't', 70000, 'DAFENG'),
(34, 'MAJESTIC', 4660, 178, 't', 't', 't', 't', 121000, 'MELINITE'),
(35, 'LITTLE GEM', 2940, 169, 't', 't', 't', 't', 163000, 'MELINITE'),
(36, '44-141 JVLN ALPHA', 5920, 299, 't', 't', 't', 't', 210000, 'ALLMIND'),
(37, 'DF-GR-07 GOU-CHEN', 4841, 308, 't', 't', 't', 't', 140000, 'DAFENG'),
(38, 'DIZZY', 5590, 364, 't', 't', 't', 't', 260000, 'MELINITE'),
(39, 'IRIDIUM', 2020, 290, 't', 't', 't', 't', 214000, 'MELINITE'),
(40, 'HML-G2/P19MLT-04', 3250, 165, 't', 't', 't', 't', 80000, 'FURLONG'),
(41, 'HML-G3/P08SPL-06', 4630, 180, 't', 't', 't', 't', 127000, 'FURLONG'),
(42, 'WS-5000 APERITIF', 4600, 165, 't', 't', 't', 't', 168000, 'RaD'),
(43, 'PFAU/66D', 3630, 392, 't', 't', 't', 't', 210000, 'SCHNEIDER'),
(44, 'MA-T-222 KYORAI', 2890, 60, 't', 't', 't', 't', 91000, 'BAWS'),
(45, 'MA-T223 KYORIKU', 2600, 52, 't', 't', 't', 't', 103000, 'BAWS'),
(46, 'WB-0000 BAD COOK', 6210, 403, 't', 't', 't', 't', 48000, 'RaD'),
(47, 'WS-1200 THERAPIST', 3180, 82, 't', 't', 't', 't', 136000, 'RaD'),
(48, 'VP-66LR', 3560, 480, 't', 't', 't', 't', 98000, 'ARQUEBUS'),
(49, 'VE-66LRA', 4940, 532, 't', 't', 't', 't', 180000, 'ARQUEBUS A.D.D.'),
(50, 'VE-66LRB', 7760, 604, 't', 't', 't', 't', 235000, 'ARQUEBUS A.D.D.'),
(51, 'WUERGER/66E', 2880, 440, 't', 't', 't', 't', 147000, 'SCHNEIDER'),
(52, 'VP-66LS', 3540, 510, 't', 't', 't', 't', 105000, 'ARQUEBUS'),
(53, 'VP-66LH', 2800, 395, 't', 't', 't', 't', 92000, 'ARQUEBUS'),
(54, 'Vvc-760PR', 3330, 490, 't', 't', 't', 't', 202000, 'VCPL'),
(55, 'IA-C01W1： NEBULA', 3890, 609, 't', 't', 't', 't', 185000, 'INSTITUTE'),
(56, '44-142 KRSV', 10120, 707, 't', 't', 't', 't', 377000, 'ALLMIND'),
(57, 'HI-16： GU-Q1', 2110, 368, 't', 't', 't', 't', 90000, 'TAKIGAWA'),
(58, 'HI-18： GU-A2', 2650, 446, 't', 't', 't', 't', 159000, 'TAKIGAWA'),
(59, 'IA-C01W6： NB-REDSHIFT', 4040, 667, 't', 't', 't', 't', 312000, 'INSTITUTE'),
(60, 'IB-C03W1： WLT 011', 9030, 850, 't', 't', 't', 't', 335000, 'INSTITUTE'),
(61, 'SB-033M MORLEY', 6580, 465, 'f', 'f', 't', 't', 255000, 'BALAM'),
(62, 'EARSHOT', 7230, 386, 'f', 'f', 't', 't', 303000, 'MELINITE'),
(63, 'SONGBIRDS', 5500, 285, 'f', 'f', 't', 't', 182000, 'MELINITE'),
(64, 'BML-G1/P20MLT-04', 2120, 154, 'f', 'f', 't', 't', 74000, 'FURLONG'),
(65, 'BML-G2/P03MLT-06', 3610, 241, 'f', 'f', 't', 't', 111000, 'FURLONG'),
(66, 'BML-G2/P05MLT-10', 5220, 320, 'f', 'f', 't', 't', 165000, 'FURLONG'),
(67, 'BML-G2/P19SPL-12', 3580, 325, 'f', 'f', 't', 't', 123000, 'FURLONG'),
(68, 'BML-G2/P16SPL-08', 2800, 228, 'f', 'f', 't', 't', 85000, 'FURLONG'),
(69, 'BML-G2/P17SPL-16', 5010, 510, 'f', 'f', 't', 't', 160000, 'FURLONG'),
(70, 'BML-G1/P31DUO-02', 1900, 182, 'f', 'f', 't', 't', 144000, 'FURLONG'),
(71, 'BML-G1/P32DUO-03', 3450, 262, 'f', 'f', 't', 't', 180000, 'FURLONG'),
(72, 'BML-G2/P08DUO-03', 4020, 332, 'f', 'f', 't', 't', 228000, 'FURLONG'),
(73, 'BML-G1/P01VTC-04', 2240, 258, 'f', 'f', 't', 't', 85000, 'FURLONG'),
(74, 'BML-G1/P03VTC-08', 3920, 380, 'f', 'f', 't', 't', 112000, 'FURLONG'),
(75, 'BML-G1/P07VTC-12', 5010, 525, 'f', 'f', 't', 't', 188000, 'FURLONG'),
(76, 'BML-G3/P04ACT-01', 2270, 213, 'f', 'f', 't', 't', 98000, 'FURLONG'),
(77, 'BML-G3/P05ACT-02', 4320, 424, 'f', 'f', 't', 't', 145000, 'FURLONG'),
(78, 'BML-G1/P29CNT', 6370, 150, 'f', 'f', 't', 't', 250000, 'FURLONG'),
(79, 'WR-0999 DELIVERY BOY', 6890, 499, 'f', 'f', 't', 't', 298000, 'RaD'),
(80, '45-091 JVLN BETA', 4250, 425, 'f', 'f', 't', 't', 210000, 'ALLMIND'),
(81, 'WS-5001 SOUP', 5620, 680, 'f', 'f', 't', 't', 326000, 'RaD'),
(82, 'VE-60SNA', 6150, 825, 'f', 'f', 't', 't', 283000, 'ARQUEBUS A.D.D.'),
(83, 'EL-PW-01 TRUENO', 3100, 420, 'f', 'f', 't', 't', 271000, 'ELCANO'),
(84, 'BO-044 HUXLEY', 2230, 435, 'f', 'f', 't', 't', 305000, 'BALAM'),
(85, 'DF-GA-09 SHAO-WEI', 3960, 404, 'f', 'f', 't', 't', 220000, 'DAFENG'),
(86, 'VP-60LCS', 5190, 683, 'f', 'f', 't', 't', 147000, 'ARQUEBUS'),
(87, 'VE-60LCA', 14820, 1200, 'f', 'f', 't', 't', 333000, 'ARQUEBUS A.D.D.'),
(88, 'VE-60LCB', 9270, 803, 'f', 'f', 't', 't', 318000, 'ARQUEBUS A.D.D.'),
(89, 'VP-60LCD', 7620, 784, 'f', 'f', 't', 't', 215000, 'ARQUEBUS'),
(90, 'FASAN/60E', 6270, 882, 'f', 'f', 't', 't', 217000, 'SCHNEIDER'),
(91, 'KRANICH/60Z', 2100, 652, 'f', 'f', 't', 't', 177000, 'SCHNEIDER'),
(92, 'EULE/60D', 2760, 382, 'f', 'f', 't', 't', 243000, 'SCHNEIDER'),
(93, 'VP-60LT', 2800, 560, 'f', 'f', 't', 't', 194000, 'ARQUEBUS'),
(94, 'IA-C01W3: AURORA', 3330, 390, 'f', 'f', 't', 't', 340000, 'INSTITUTE'),
(95, 'Vvc-703PM', 2310, 210, 'f', 'f', 't', 't', 202000, 'VCPL'),
(96, 'Vvc-706PM', 3650, 276, 'f', 'f', 't', 't', 310000, 'VCPL'),
(97, 'Vvc-70VPM', 3760, 268, 'f', 'f', 't', 't', 96000, 'VCPL'),
(98, 'Vvc-700LD', 3800, 570, 'f', 'f', 't', 't', 247000, 'VCPL'),
(99, '45-091 ORBT', 2010, 446, 'f', 'f', 't', 't', 280000, 'ALLMIND'),
(100, 'IB-C03W3: NGI 006', 4200, 783, 'f', 'f', 't', 't', 380000, 'INSTITUTE'),
(101, 'VP-61PS', 2700, 310, 'f', 'f', 't', 'f', 123000, 'ARQUEBUS'),
(102, 'SI-24: SU-Q5', 2010, 220, 'f', 'f', 't', 'f', 43000, 'TAKIGAWA'),
(103, 'SI-27: SU-R8', 3150, 323, 'f', 'f', 't', 'f', 100000, 'TAKIGAWA'),
(104, 'VP-61PB', 1920, 285, 'f', 'f', 't', 'f', 76000, 'ARQUEBUS'),
(105, 'SI-29: SU-TT/C', 3380, 385, 'f', 'f', 't', 'f', 62000, 'TAKIGAWA'),
(106, 'VE-61PSA', 4100, 480, 'f', 'f', 't', 'f', 197000, 'ARQUEBUS A.D.D.'),
(107, 'IB-C03W4: NGI 028', 2170, 800, 'f', 'f', 't', 'f', 255000, 'INSTITUTE'),
(108, 'DF-ET-09 TAI-YANG-SHOU', 3790, 160, 't', 'f', 't', 'f', 215000, 'DAFENG'),
(109, 'PB-033M ASHMEAD', 4180, 225, 't', 'f', 't', 'f', 185000, 'BALAM'),
(110, 'WB-0010 DOUBLE TROUBLE', 5090, 108, 't', 'f', 't', 'f', 69000, 'RaD'),
(111, '44-143 HMMR', 2410, 311, 't', 'f', 't', 'f', 172000, 'ALLMIND'),
(112, 'VP-67EB', 1971, 198, 't', 'f', 't', 'f', 94000, 'ARQUEBUS'),
(113, 'VP-67LD', 1350, 150, 't', 'f', 't', 'f', 135000, 'ARQUEBUS'),
(114, 'Vvc-770LB', 2060, 245, 't', 'f', 't', 'f', 210000, 'VCPL'),
(115, 'Vvc-774LS', 3260, 328, 't', 'f', 't', 'f', 339000, 'VCPL'),
(116, 'VE-67LLA', 4520, 460, 't', 'f', 't', 'f', 270000, 'ARQUEBUS A.D.D.'),
(117, 'HI-32： BU-TT/A', 1800, 213, 't', 'f', 't', 'f', 0, 'TAKIGAWA'),
(118, 'IA-C01W2： MOONLIGHT', 2200, 544, 't', 'f', 't', 'f', 270000, 'INSTITUTE'),
(119, 'IA-C01W7： ML-REDSHIFT', 2200, 544, 't', 'f', 't', 'f', 343000, 'INSTITUTE'),
(120, 'IB-C03W2： WLT 101', 2030, 578, 't', 'f', 't', 'f', 368000, 'INSTITUTE'),
(121, 'MA-J-200 RANSETSU-RF', 4210, 158, 't', 't', 't', 't', 105000, 'BAWS'),
(122, 'LR-036 CURTIS', 4150, 289, 't', 't', 't', 't', 65000, 'BALAM'),
(123, 'LR-037 HARRIS', 4840, 441, 't', 't', 't', 't', 135000, 'BALAM'),
(124, 'RF-024 TURNER', 3560, 102, 't', 't', 't', 't', 55000, 'BALAM'),
(125, 'RF-025 SCUDDER', 3830, 153, 't', 't', 't', 't', 205000, 'BALAM'),
(126, 'MA-J-201 RANSETSU-AR', 3620, 132, 't', 't', 't', 't', 111000, 'BAWS'),
(127, 'MG-014 LUDLOW', 2460, 82, 't', 't', 't', 't', 45000, 'BALAM'),
(128, 'DF-MG-02 CHANG-CHEN', 3280, 143, 't', 't', 't', 't', 120000, 'DAFENG'),
(129, 'WR-0555 ATTACHE', 5110, 303, 't', 't', 't', 't', 169000, 'RaD'),
(130, 'MA-E-210 ETSUJIN', 2810, 98, 't', 't', 't', 't', 74000, 'BAWS'),
(131, 'DF-GA-08 HU-BEN', 5800, 425, 't', 't', 't', 't', 170000, 'DAFENG'),
(132, 'SG-026 HALDEMAN', 3660, 185, 't', 't', 't', 't', 75000, 'BALAM'),
(133, 'SG-027 ZIMMERMAN', 4400, 242, 't', 't', 't', 't', 115000, 'BALAM'),
(134, 'WR-0777 SWEET SIXTEEN', 1640, 268, 't', 't', 't', 't', 49000, 'RaD'),
(135, 'HG-003 COQUILLETT', 1200, 122, 't', 't', 't', 't', 35000, 'BALAM'),
(136, 'HG-004 DUCKETT', 1650, 158, 't', 't', 't', 't', 112000, 'BALAM'),
(137, 'MA-E-211 SAMPU', 960, 62, 't', 't', 't', 't', 73000, 'BAWS'),
(138, 'EL-PW-00 VIENTO', 1180, 215, 't', 't', 't', 't', 148000, 'ELCANO'),
(139, 'VP-66EG', 980, 247, 't', 't', 't', 't', 129000, 'ARQUEBUS'),
(140, 'DF-BA-06 XUAN-GE', 5480, 240, 't', 't', 't', 't', 70000, 'DAFENG'),
(141, 'MAJESTIC', 4660, 178, 't', 't', 't', 't', 121000, 'MELINITE'),
(142, 'LITTLE GEM', 2940, 169, 't', 't', 't', 't', 163000, 'MELINITE'),
(143, '44-141 JVLN ALPHA', 5920, 299, 't', 't', 't', 't', 210000, 'ALLMIND'),
(144, 'DF-GR-07 GOU-CHEN', 4841, 308, 't', 't', 't', 't', 140000, 'DAFENG'),
(145, 'DIZZY', 5590, 364, 't', 't', 't', 't', 260000, 'MELINITE'),
(146, 'IRIDIUM', 2020, 290, 't', 't', 't', 't', 214000, 'MELINITE'),
(147, 'HML-G2/P19MLT-04', 3250, 165, 't', 't', 't', 't', 80000, 'FURLONG'),
(148, 'HML-G3/P08SPL-06', 4630, 180, 't', 't', 't', 't', 127000, 'FURLONG'),
(149, 'WS-5000 APERITIF', 4600, 165, 't', 't', 't', 't', 168000, 'RaD'),
(150, 'PFAU/66D', 3630, 392, 't', 't', 't', 't', 210000, 'SCHNEIDER'),
(151, 'MA-T-222 KYORAI', 2890, 60, 't', 't', 't', 't', 91000, 'BAWS'),
(152, 'MA-T223 KYORIKU', 2600, 52, 't', 't', 't', 't', 103000, 'BAWS'),
(153, 'WB-0000 BAD COOK', 6210, 403, 't', 't', 't', 't', 48000, 'RaD'),
(154, 'WS-1200 THERAPIST', 3180, 82, 't', 't', 't', 't', 136000, 'RaD'),
(155, 'VP-66LR', 3560, 480, 't', 't', 't', 't', 98000, 'ARQUEBUS'),
(156, 'VE-66LRA', 4940, 532, 't', 't', 't', 't', 180000, 'ARQUEBUS A.D.D.'),
(157, 'VE-66LRB', 7760, 604, 't', 't', 't', 't', 235000, 'ARQUEBUS A.D.D.'),
(158, 'WUERGER/66E', 2880, 440, 't', 't', 't', 't', 147000, 'SCHNEIDER'),
(159, 'VP-66LS', 3540, 510, 't', 't', 't', 't', 105000, 'ARQUEBUS'),
(160, 'VP-66LH', 2800, 395, 't', 't', 't', 't', 92000, 'ARQUEBUS'),
(161, 'Vvc-760PR', 3330, 490, 't', 't', 't', 't', 202000, 'VCPL'),
(162, 'IA-C01W1： NEBULA', 3890, 609, 't', 't', 't', 't', 185000, 'INSTITUTE'),
(163, '44-142 KRSV', 10120, 707, 't', 't', 't', 't', 377000, 'ALLMIND'),
(164, 'HI-16： GU-Q1', 2110, 368, 't', 't', 't', 't', 90000, 'TAKIGAWA'),
(165, 'HI-18： GU-A2', 2650, 446, 't', 't', 't', 't', 159000, 'TAKIGAWA'),
(166, 'IA-C01W6： NB-REDSHIFT', 4040, 667, 't', 't', 't', 't', 312000, 'INSTITUTE'),
(167, 'IB-C03W1： WLT 011', 9030, 850, 't', 't', 't', 't', 335000, 'INSTITUTE'),
(168, 'SB-033M MORLEY', 6580, 465, 'f', 'f', 't', 't', 255000, 'BALAM'),
(169, 'EARSHOT', 7230, 386, 'f', 'f', 't', 't', 303000, 'MELINITE'),
(170, 'SONGBIRDS', 5500, 285, 'f', 'f', 't', 't', 182000, 'MELINITE'),
(171, 'BML-G1/P20MLT-04', 2120, 154, 'f', 'f', 't', 't', 74000, 'FURLONG'),
(172, 'BML-G2/P03MLT-06', 3610, 241, 'f', 'f', 't', 't', 111000, 'FURLONG'),
(173, 'BML-G2/P05MLT-10', 5220, 320, 'f', 'f', 't', 't', 165000, 'FURLONG'),
(174, 'BML-G2/P19SPL-12', 3580, 325, 'f', 'f', 't', 't', 123000, 'FURLONG'),
(175, 'BML-G2/P16SPL-08', 2800, 228, 'f', 'f', 't', 't', 85000, 'FURLONG'),
(176, 'BML-G2/P17SPL-16', 5010, 510, 'f', 'f', 't', 't', 160000, 'FURLONG'),
(177, 'BML-G1/P31DUO-02', 1900, 182, 'f', 'f', 't', 't', 144000, 'FURLONG'),
(178, 'BML-G1/P32DUO-03', 3450, 262, 'f', 'f', 't', 't', 180000, 'FURLONG'),
(179, 'BML-G2/P08DUO-03', 4020, 332, 'f', 'f', 't', 't', 228000, 'FURLONG'),
(180, 'BML-G1/P01VTC-04', 2240, 258, 'f', 'f', 't', 't', 85000, 'FURLONG'),
(181, 'BML-G1/P03VTC-08', 3920, 380, 'f', 'f', 't', 't', 112000, 'FURLONG'),
(182, 'BML-G1/P07VTC-12', 5010, 525, 'f', 'f', 't', 't', 188000, 'FURLONG'),
(183, 'BML-G3/P04ACT-01', 2270, 213, 'f', 'f', 't', 't', 98000, 'FURLONG'),
(184, 'BML-G3/P05ACT-02', 4320, 424, 'f', 'f', 't', 't', 145000, 'FURLONG'),
(185, 'BML-G1/P29CNT', 6370, 150, 'f', 'f', 't', 't', 250000, 'FURLONG'),
(186, 'WR-0999 DELIVERY BOY', 6890, 499, 'f', 'f', 't', 't', 298000, 'RaD'),
(187, '45-091 JVLN BETA', 4250, 425, 'f', 'f', 't', 't', 210000, 'ALLMIND'),
(188, 'WS-5001 SOUP', 5620, 680, 'f', 'f', 't', 't', 326000, 'RaD'),
(189, 'VE-60SNA', 6150, 825, 'f', 'f', 't', 't', 283000, 'ARQUEBUS A.D.D.'),
(190, 'EL-PW-01 TRUENO', 3100, 420, 'f', 'f', 't', 't', 271000, 'ELCANO'),
(191, 'BO-044 HUXLEY', 2230, 435, 'f', 'f', 't', 't', 305000, 'BALAM'),
(192, 'DF-GA-09 SHAO-WEI', 3960, 404, 'f', 'f', 't', 't', 220000, 'DAFENG'),
(193, 'VP-60LCS', 5190, 683, 'f', 'f', 't', 't', 147000, 'ARQUEBUS'),
(194, 'VE-60LCA', 14820, 1200, 'f', 'f', 't', 't', 333000, 'ARQUEBUS A.D.D.'),
(195, 'VE-60LCB', 9270, 803, 'f', 'f', 't', 't', 318000, 'ARQUEBUS A.D.D.'),
(196, 'VP-60LCD', 7620, 784, 'f', 'f', 't', 't', 215000, 'ARQUEBUS'),
(197, 'FASAN/60E', 6270, 882, 'f', 'f', 't', 't', 217000, 'SCHNEIDER'),
(198, 'KRANICH/60Z', 2100, 652, 'f', 'f', 't', 't', 177000, 'SCHNEIDER'),
(199, 'EULE/60D', 2760, 382, 'f', 'f', 't', 't', 243000, 'SCHNEIDER'),
(200, 'VP-60LT', 2800, 560, 'f', 'f', 't', 't', 194000, 'ARQUEBUS'),
(201, 'IA-C01W3: AURORA', 3330, 390, 'f', 'f', 't', 't', 340000, 'INSTITUTE'),
(202, 'Vvc-703PM', 2310, 210, 'f', 'f', 't', 't', 202000, 'VCPL'),
(203, 'Vvc-706PM', 3650, 276, 'f', 'f', 't', 't', 310000, 'VCPL'),
(204, 'Vvc-70VPM', 3760, 268, 'f', 'f', 't', 't', 96000, 'VCPL'),
(205, 'Vvc-700LD', 3800, 570, 'f', 'f', 't', 't', 247000, 'VCPL'),
(206, '45-091 ORBT', 2010, 446, 'f', 'f', 't', 't', 280000, 'ALLMIND'),
(207, 'IB-C03W3: NGI 006', 4200, 783, 'f', 'f', 't', 't', 380000, 'INSTITUTE'),
(208, 'VP-61PS', 2700, 310, 'f', 'f', 't', 'f', 123000, 'ARQUEBUS'),
(209, 'SI-24: SU-Q5', 2010, 220, 'f', 'f', 't', 'f', 43000, 'TAKIGAWA'),
(210, 'SI-27: SU-R8', 3150, 323, 'f', 'f', 't', 'f', 100000, 'TAKIGAWA'),
(211, 'VP-61PB', 1920, 285, 'f', 'f', 't', 'f', 76000, 'ARQUEBUS'),
(212, 'SI-29: SU-TT/C', 3380, 385, 'f', 'f', 't', 'f', 62000, 'TAKIGAWA'),
(213, 'VE-61PSA', 4100, 480, 'f', 'f', 't', 'f', 197000, 'ARQUEBUS A.D.D.'),
(214, 'IB-C03W4: NGI 028', 2170, 800, 'f', 'f', 't', 'f', 255000, 'INSTITUTE');

ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("unit_left_arm_id") REFERENCES "public"."ac6_units"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("head_id") REFERENCES "public"."ac6_head"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("fcs_id") REFERENCES "public"."ac6_fcs"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("generator_id") REFERENCES "public"."ac6_generator"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("core_id") REFERENCES "public"."ac6_core"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("leg_id") REFERENCES "public"."ac6_legs"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("unit_right_shoulder_id") REFERENCES "public"."ac6_units"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("unit_right_arm_id") REFERENCES "public"."ac6_units"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("arm_id") REFERENCES "public"."ac6_arms"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("booster_id") REFERENCES "public"."ac6_booster"("id");
ALTER TABLE "public"."ac6_customconfiguration" ADD FOREIGN KEY ("unit_left_shoulder_id") REFERENCES "public"."ac6_units"("id");


-- Indices
CREATE UNIQUE INDEX ac6_configuration_pkey ON public.ac6_customconfiguration USING btree (id);
CREATE INDEX ac6_configuration_arms_id_3b190a39 ON public.ac6_customconfiguration USING btree (arm_id);
CREATE INDEX ac6_configuration_booster_id_26903821 ON public.ac6_customconfiguration USING btree (booster_id);
CREATE INDEX ac6_configuration_core_id_293648e5 ON public.ac6_customconfiguration USING btree (core_id);
CREATE INDEX ac6_configuration_fcs_id_129e53f2 ON public.ac6_customconfiguration USING btree (fcs_id);
CREATE INDEX ac6_configuration_generator_id_bdf84c46 ON public.ac6_customconfiguration USING btree (generator_id);
CREATE INDEX ac6_configuration_head_id_df56e20e ON public.ac6_customconfiguration USING btree (head_id);
CREATE INDEX ac6_configuration_legs_id_efa7f8f3 ON public.ac6_customconfiguration USING btree (leg_id);
CREATE INDEX ac6_configuration_unit_left_arm_id_aaa5e397 ON public.ac6_customconfiguration USING btree (unit_left_arm_id);
CREATE INDEX ac6_configuration_unit_left_shoulder_id_91337095 ON public.ac6_customconfiguration USING btree (unit_left_shoulder_id);
CREATE INDEX ac6_configuration_unit_right_arm_id_5bd24961 ON public.ac6_customconfiguration USING btree (unit_right_arm_id);
CREATE INDEX ac6_configuration_unit_right_shoulder_id_7fd5a72f ON public.ac6_customconfiguration USING btree (unit_right_shoulder_id);
