
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of memory is

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OR3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component AO222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; Z : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI32D0BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AO31D1BWP7T
    port(A1, A2, A3, B : in std_logic; Z : out std_logic);
  end component;

  component OR4D1BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component OAI33D1BWP7T
    port(A1, A2, A3, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component CKND4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AOI211XD0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component OAI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component IOA21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AO33D0BWP7T
    port(A1, A2, A3, B1, B2, B3 : in std_logic; Z : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AOI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OA22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component OR3D4BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFXD1BWP7T
    port(CP, DA, DB, SA : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD0BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal sqi_address_mid : std_logic_vector(14 downto 0);
  signal counter : std_logic_vector(7 downto 0);
  signal calc_buf_mid : std_logic_vector(23 downto 0);
  signal framebuffer_buf_mid : std_logic_vector(157 downto 0);
  signal row_buf : std_logic_vector(5 downto 0);
  signal state : std_logic_vector(3 downto 0);
  signal UNCONNECTED, n_1, n_2, n_4, n_5 : std_logic;
  signal n_6, n_7, n_8, n_9, n_10 : std_logic;
  signal n_11, n_13, n_14, n_15, n_16 : std_logic;
  signal n_17, n_18, n_19, n_20, n_21 : std_logic;
  signal n_22, n_23, n_24, n_25, n_26 : std_logic;
  signal n_27, n_28, n_29, n_30, n_31 : std_logic;
  signal n_32, n_33, n_34, n_35, n_36 : std_logic;
  signal n_37, n_38, n_39, n_40, n_41 : std_logic;
  signal n_42, n_43, n_44, n_45, n_46 : std_logic;
  signal n_47, n_48, n_49, n_50, n_51 : std_logic;
  signal n_52, n_53, n_54, n_55, n_56 : std_logic;
  signal n_58, n_59, n_60, n_61, n_62 : std_logic;
  signal n_63, n_64, n_65, n_66, n_67 : std_logic;
  signal n_68, n_69, n_70, n_71, n_72 : std_logic;
  signal n_73, n_74, n_75, n_76, n_77 : std_logic;
  signal n_78, n_80, n_81, n_82, n_84 : std_logic;
  signal n_85, n_86, n_87, n_88, n_89 : std_logic;
  signal n_90, n_91, n_92, n_93, n_94 : std_logic;
  signal n_95, n_96, n_97, n_98, n_99 : std_logic;
  signal n_100, n_101, n_102, n_103, n_104 : std_logic;
  signal n_105, n_106, n_107, n_108, n_109 : std_logic;
  signal n_110, n_111, n_112, n_113, n_114 : std_logic;
  signal n_115, n_116, n_117, n_118, n_119 : std_logic;
  signal n_120, n_121, n_122, n_123, n_124 : std_logic;
  signal n_125, n_126, n_127, n_128, n_129 : std_logic;
  signal n_130, n_131, n_132, n_133, n_134 : std_logic;
  signal n_135, n_136, n_137, n_138, n_139 : std_logic;
  signal n_140, n_141, n_142, n_143, n_144 : std_logic;
  signal n_145, n_146, n_147, n_148, n_149 : std_logic;
  signal n_150, n_151, n_152, n_153, n_155 : std_logic;
  signal n_156, n_157, n_158, n_159, n_160 : std_logic;
  signal n_161, n_162, n_163, n_164, n_165 : std_logic;
  signal n_166, n_167, n_168, n_169, n_170 : std_logic;
  signal n_171, n_172, n_174, n_175, n_176 : std_logic;
  signal n_177, n_178, n_179, n_180, n_181 : std_logic;
  signal n_182, n_183, n_184, n_185, n_186 : std_logic;
  signal n_187, n_188, n_190, n_191, n_192 : std_logic;
  signal n_193, n_194, n_195, n_196, n_197 : std_logic;
  signal n_198, n_199, n_200, n_201, n_202 : std_logic;
  signal n_203, n_204, n_205, n_206, n_207 : std_logic;
  signal n_208, n_209, n_210, n_211, n_212 : std_logic;
  signal n_213, n_214, n_215, n_216, n_217 : std_logic;
  signal n_218, n_220, n_221, n_222, n_223 : std_logic;
  signal n_225, n_226, n_227, n_228, n_229 : std_logic;
  signal n_230, n_231, n_232, n_233, n_234 : std_logic;
  signal n_235, n_236, n_237, n_238, n_239 : std_logic;
  signal n_240, n_242, n_243, n_244, n_245 : std_logic;
  signal n_246, n_247, n_248, n_249, n_250 : std_logic;
  signal n_251, n_252, n_253, n_254, n_255 : std_logic;
  signal n_256, n_257, n_258, n_259, n_260 : std_logic;
  signal n_261, n_262, n_263, n_264, n_265 : std_logic;
  signal n_266, n_267, n_268, n_269, n_270 : std_logic;
  signal n_271, n_272, n_273, n_274, n_275 : std_logic;
  signal n_276, n_277, n_278, n_279, n_280 : std_logic;
  signal n_281, n_282, n_283, n_284, n_285 : std_logic;
  signal n_286, n_287, n_288, n_289, n_290 : std_logic;
  signal n_291, n_292, n_293, n_294, n_295 : std_logic;
  signal n_296, n_297, n_298, n_299, n_300 : std_logic;
  signal n_301, n_302, n_303, n_304, n_305 : std_logic;
  signal n_306, n_307, n_308, n_309, n_310 : std_logic;
  signal n_311, n_312, n_313, n_314, n_316 : std_logic;
  signal n_317, n_318, n_319, n_320, n_321 : std_logic;
  signal n_322, n_323, n_324, n_325, n_326 : std_logic;
  signal n_327, n_328, n_329, n_330, n_331 : std_logic;
  signal n_332, n_333, n_334, n_335, n_336 : std_logic;
  signal n_337, n_338, n_339, n_340, n_341 : std_logic;
  signal n_342, n_343, n_344, n_345, n_346 : std_logic;
  signal n_347, n_348, n_349, n_350, n_351 : std_logic;
  signal n_352, n_353, n_354, n_355, n_356 : std_logic;
  signal n_357, n_358, n_359, n_360, n_361 : std_logic;
  signal n_362, n_363, n_364, n_365, n_366 : std_logic;
  signal n_367, n_368, n_369, n_370, n_371 : std_logic;
  signal n_372, n_373, n_374, n_375, n_376 : std_logic;
  signal n_377, n_378, n_379, n_380, n_381 : std_logic;
  signal n_382, n_383, n_384, n_385, n_386 : std_logic;
  signal n_387, n_388, n_389, n_390, n_391 : std_logic;
  signal n_392, n_393, n_394, n_395, n_396 : std_logic;
  signal n_397, n_398, n_399, n_400, n_401 : std_logic;
  signal n_402, n_403, n_404, n_405, n_406 : std_logic;
  signal n_407, n_408, n_409, n_410, n_411 : std_logic;
  signal n_412, n_413, n_414, n_415, n_416 : std_logic;
  signal n_417, n_418, n_419, n_420, n_421 : std_logic;
  signal n_422, n_423, n_424, n_425, n_426 : std_logic;
  signal n_427, n_428, n_429, n_430, n_431 : std_logic;
  signal n_432, n_433, n_434, n_435, n_436 : std_logic;
  signal n_437, n_438, n_439, n_440, n_441 : std_logic;
  signal n_442, n_443, n_444, n_445, n_446 : std_logic;
  signal n_447, n_448, n_449, n_450, n_451 : std_logic;
  signal n_452, n_453, n_454, n_455, n_456 : std_logic;
  signal n_457, n_458, n_459, n_460, n_461 : std_logic;
  signal n_462, n_463, n_464, n_465, n_466 : std_logic;
  signal n_467, n_468, n_469, n_470, n_471 : std_logic;
  signal n_472, n_473, n_474, n_475, n_476 : std_logic;
  signal n_477, n_478, n_479, n_480, n_481 : std_logic;
  signal n_482, n_483, n_484, n_485, n_486 : std_logic;
  signal n_487, n_488, n_489, n_490, n_491 : std_logic;
  signal n_492, n_493, n_494, n_495, n_496 : std_logic;
  signal n_497, n_498, n_499, n_500, n_501 : std_logic;
  signal n_502, n_503, n_504, n_505, n_506 : std_logic;
  signal n_507, n_508, n_509, n_510, n_511 : std_logic;
  signal n_512, n_513, n_514, n_515, n_516 : std_logic;
  signal n_517, n_518, n_519, n_520, n_521 : std_logic;
  signal n_522, n_523, n_524, n_525, n_526 : std_logic;
  signal n_527, n_528, n_529, n_530, n_531 : std_logic;
  signal n_537, n_538, n_539, n_540, n_541 : std_logic;
  signal n_543, n_544, n_545, n_547, n_548 : std_logic;
  signal n_549, n_550, n_551, n_552, n_553 : std_logic;
  signal n_554, n_555, n_556, n_557, n_558 : std_logic;
  signal n_559, n_560, n_561, n_562, n_563 : std_logic;
  signal n_564, n_565, n_566, n_567, n_568 : std_logic;
  signal n_569, n_570, n_571, n_572, n_573 : std_logic;
  signal n_574, n_575, n_576, n_577, n_578 : std_logic;
  signal n_579, n_580, n_581, n_582, n_583 : std_logic;
  signal n_585, n_618, n_624, n_630, n_636 : std_logic;
  signal n_642, n_648, n_654, n_660, n_666 : std_logic;
  signal n_672, n_678, n_684, n_690, n_696 : std_logic;
  signal n_702, n_708, n_714, n_720, n_726 : std_logic;
  signal n_732, n_738, n_744, n_750, n_756 : std_logic;
  signal n_762, n_768, n_774, n_780, n_786 : std_logic;
  signal n_792, n_798, n_804, n_810, n_816 : std_logic;
  signal n_822, n_828, n_834, n_840, n_846 : std_logic;
  signal n_852, n_858, n_864, n_870, n_876 : std_logic;
  signal n_882, n_888, n_894, n_900, n_906 : std_logic;
  signal n_912, n_918, n_924, n_930, n_936 : std_logic;
  signal n_942, n_948, n_954, n_960, n_966 : std_logic;
  signal n_972, n_978, n_984, n_990, n_996 : std_logic;
  signal n_1002, n_1008, n_1014, n_1020, n_1026 : std_logic;
  signal n_1032, n_1038, n_1044, n_1050, n_1056 : std_logic;
  signal n_1062, n_1068, n_1074, n_1080, n_1086 : std_logic;
  signal n_1092, n_1098, n_1104, n_1110, n_1116 : std_logic;
  signal n_1122, n_1128, n_1134, n_1140, n_1146 : std_logic;
  signal n_1152, n_1158, n_1164, n_1170, n_1176 : std_logic;
  signal n_1182, n_1188, n_1194, n_1200, n_1206 : std_logic;
  signal n_1212, n_1218, n_1224, n_1230, n_1236 : std_logic;
  signal n_1242, n_1248, n_1254, n_1260, n_1266 : std_logic;
  signal n_1272, n_1278, n_1284, n_1290, n_1296 : std_logic;
  signal n_1302, n_1308, n_1314, n_1320, n_1326 : std_logic;
  signal n_1332, n_1338, n_1344, n_1350, n_1356 : std_logic;
  signal n_1362, n_1368, n_1374, n_1380, n_1386 : std_logic;
  signal n_1392, n_1398, n_1404, n_1410, n_1416 : std_logic;
  signal n_1422, n_1428, n_1434, n_1440, n_1446 : std_logic;
  signal n_1452, n_1458, n_1464, n_1470, n_1476 : std_logic;
  signal n_1482, n_1488, n_1494, n_1500, n_1506 : std_logic;
  signal n_1512, n_1518, n_1524, n_1530, n_1536 : std_logic;
  signal n_1542, n_1548, n_1554, n_1560, n_1566 : std_logic;
  signal n_1572, n_1578, n_1584, n_1590, n_1596 : std_logic;
  signal n_1602, n_1608, n_1614, n_1620, n_1626 : std_logic;
  signal n_1632, n_1638, n_1644, n_1650, n_1656 : std_logic;
  signal n_1662, n_1668, n_1674, n_1680, n_1686 : std_logic;
  signal n_1692, n_1698, n_1704, n_1710, n_1716 : std_logic;
  signal n_1722, n_1728, n_1734, n_1740, n_1746 : std_logic;
  signal n_1752, n_1758, n_1764, n_1770, n_1774 : std_logic;
  signal n_1775, n_1776 : std_logic;

begin

  framebuffer_buf(116) <= framebuffer_buf(117);
  sqi_address_mid_reg_9 : DFQD1BWP7T port map(CP => clk, D => n_583, Q => sqi_address_mid(9));
  sqi_address_mid_reg_10 : DFQD1BWP7T port map(CP => clk, D => n_582, Q => sqi_address_mid(10));
  g19747 : ND3D0BWP7T port map(A1 => n_581, A2 => n_175, A3 => n_579, ZN => n_583);
  g19749 : OR3D1BWP7T port map(A1 => n_240, A2 => n_182, A3 => n_577, Z => n_582);
  g19752 : AOI31D0BWP7T port map(A1 => n_237, A2 => n_327, A3 => counter(1), B => n_572, ZN => n_581);
  g19753 : ND4D0BWP7T port map(A1 => n_558, A2 => n_166, A3 => n_579, A4 => n_136, ZN => n_580);
  g19778 : ND3D0BWP7T port map(A1 => n_553, A2 => n_560, A3 => n_199, ZN => n_578);
  g19764 : OAI211D0BWP7T port map(A1 => n_212, A2 => n_169, B => n_562, C => n_143, ZN => n_577);
  g19781 : OAI31D0BWP7T port map(A1 => n_539, A2 => n_152, A3 => n_574, B => n_563, ZN => n_576);
  g19779 : OAI31D0BWP7T port map(A1 => n_544, A2 => n_58, A3 => n_574, B => n_557, ZN => n_575);
  g19763 : IND3D1BWP7T port map(A1 => n_139, B1 => n_569, B2 => n_550, ZN => n_573);
  g19765 : OAI211D1BWP7T port map(A1 => counter(1), A2 => n_568, B => n_556, C => n_392, ZN => n_572);
  g19780 : OAI31D0BWP7T port map(A1 => n_231, A2 => n_209, A3 => n_210, B => n_554, ZN => n_571);
  g19761 : ND3D0BWP7T port map(A1 => n_555, A2 => n_569, A3 => n_568, ZN => n_570);
  g19762 : ND3D0BWP7T port map(A1 => n_551, A2 => n_483, A3 => n_144, ZN => n_567);
  counter_reg_7 : DFQD1BWP7T port map(CP => clk, D => n_548, Q => counter(7));
  g19785 : AO222D0BWP7T port map(A1 => n_564, A2 => sqi_address_mid(2), B1 => n_232, B2 => y(2), C1 => n_118, C2 => n_122, Z => n_566);
  g19782 : AO221D0BWP7T port map(A1 => n_230, A2 => y(0), B1 => n_564, B2 => sqi_address_mid(0), C => n_211, Z => n_565);
  g19802 : AOI22D0BWP7T port map(A1 => n_543, A2 => y(4), B1 => n_564, B2 => sqi_address_mid(4), ZN => n_563);
  g19789 : AOI222D0BWP7T port map(A1 => n_564, A2 => sqi_address_mid(10), B1 => n_140, B2 => n_233, C1 => n_163, C2 => n_155, ZN => n_562);
  g19776 : AO221D0BWP7T port map(A1 => n_564, A2 => sqi_address_mid(6), B1 => n_373, B2 => n_21, C => n_545, Z => n_561);
  g19868 : AOI222D0BWP7T port map(A1 => n_117, A2 => n_552, B1 => n_415, B2 => y(7), C1 => n_235, C2 => n_87, ZN => n_560);
  g19775 : AO221D0BWP7T port map(A1 => n_1775, A2 => y(3), B1 => n_564, B2 => sqi_address_mid(3), C => n_153, Z => n_559);
  g19777 : AOI221D0BWP7T port map(A1 => n_564, A2 => sqi_address_mid(11), B1 => n_174, B2 => n_32, C => n_324, ZN => n_558);
  g19800 : AOI22D0BWP7T port map(A1 => n_541, A2 => y(5), B1 => n_564, B2 => sqi_address_mid(5), ZN => n_557);
  g19790 : MAOI22D0BWP7T port map(A1 => n_564, A2 => sqi_address_mid(9), B1 => n_322, B2 => n_34, ZN => n_556);
  g19787 : AOI32D1BWP7T port map(A1 => n_549, A2 => n_180, A3 => counter(1), B1 => n_435, B2 => sqi_address_mid(13), ZN => n_555);
  g19801 : AOI22D0BWP7T port map(A1 => n_229, A2 => y(1), B1 => n_564, B2 => sqi_address_mid(1), ZN => n_554);
  g19791 : AOI32D1BWP7T port map(A1 => n_176, A2 => n_552, A3 => counter(1), B1 => n_564, B2 => sqi_address_mid(7), ZN => n_553);
  g19798 : AOI22D0BWP7T port map(A1 => n_564, A2 => sqi_address_mid(8), B1 => n_181, B2 => n_33, ZN => n_551);
  g19799 : AOI32D1BWP7T port map(A1 => n_549, A2 => n_160, A3 => n_141, B1 => n_564, B2 => sqi_address_mid(12), ZN => n_550);
  g19874 : OAI31D0BWP7T port map(A1 => counter(7), A2 => n_2, A3 => n_330, B => n_538, ZN => n_548);
  g19930 : OAI211D1BWP7T port map(A1 => n_201, A2 => n_365, B => n_311, C => n_46, ZN => n_547);
  g19793 : ND2D4BWP7T port map(A1 => n_360, A2 => n_69, ZN => sqi_data_out(3));
  g19934 : OAI32D0BWP7T port map(A1 => n_544, A2 => n_60, A3 => n_574, B1 => n_414, B2 => n_413, ZN => n_545);
  g20115 : AO21D0BWP7T port map(A1 => n_540, A2 => y(3), B => n_1775, Z => n_543);
  g20119 : AO21D0BWP7T port map(A1 => n_540, A2 => n_539, B => n_1775, Z => n_541);
  g19929 : OAI21D0BWP7T port map(A1 => n_537, A2 => n_80, B => counter(7), ZN => n_538);
  g19786 : ND2D4BWP7T port map(A1 => n_372, A2 => n_104, ZN => sqi_data_out(1));
  g19794 : ND2D4BWP7T port map(A1 => n_361, A2 => n_105, ZN => sqi_data_out(2));
  g19792 : ND2D4BWP7T port map(A1 => n_359, A2 => n_102, ZN => sqi_data_out(4));
  g19811 : ND2D4BWP7T port map(A1 => n_381, A2 => n_98, ZN => sqi_data_out(5));
  g19784 : ND2D4BWP7T port map(A1 => n_358, A2 => n_110, ZN => sqi_data_out(6));
  g19872 : AO21D0BWP7T port map(A1 => n_434, A2 => sqi_address(14), B => n_213, Z => n_531);
  g19808 : MOAI22D0BWP7T port map(A1 => n_486, A2 => n_523, B1 => n_506, B2 => calc_buf_mid(3), ZN => n_530);
  g20032 : MOAI22D0BWP7T port map(A1 => n_504, A2 => n_492, B1 => n_503, B2 => framebuffer_buf_mid(79), ZN => n_529);
  g20105 : MOAI22D0BWP7T port map(A1 => n_419, A2 => n_526, B1 => n_418, B2 => framebuffer_buf_mid(154), ZN => n_528);
  g20033 : MOAI22D0BWP7T port map(A1 => n_524, A2 => n_526, B1 => n_522, B2 => framebuffer_buf_mid(148), ZN => n_527);
  g20034 : MOAI22D0BWP7T port map(A1 => n_524, A2 => n_523, B1 => n_522, B2 => framebuffer_buf_mid(149), ZN => n_525);
  g20035 : MOAI22D0BWP7T port map(A1 => n_524, A2 => n_511, B1 => n_522, B2 => framebuffer_buf_mid(150), ZN => n_521);
  g20104 : MOAI22D0BWP7T port map(A1 => n_512, A2 => n_518, B1 => n_510, B2 => framebuffer_buf_mid(35), ZN => n_520);
  g20036 : MOAI22D0BWP7T port map(A1 => n_524, A2 => n_518, B1 => n_522, B2 => framebuffer_buf_mid(151), ZN => n_519);
  g20037 : MOAI22D0BWP7T port map(A1 => n_515, A2 => n_526, B1 => n_514, B2 => framebuffer_buf_mid(124), ZN => n_517);
  g20038 : MOAI22D0BWP7T port map(A1 => n_515, A2 => n_523, B1 => n_514, B2 => framebuffer_buf_mid(125), ZN => n_516);
  g20103 : MOAI22D0BWP7T port map(A1 => n_512, A2 => n_511, B1 => n_510, B2 => framebuffer_buf_mid(34), ZN => n_513);
  g20039 : MOAI22D0BWP7T port map(A1 => n_515, A2 => n_511, B1 => n_514, B2 => framebuffer_buf_mid(126), ZN => n_509);
  g20040 : MOAI22D0BWP7T port map(A1 => n_515, A2 => n_518, B1 => n_514, B2 => framebuffer_buf_mid(127), ZN => n_508);
  g19803 : AO22D0BWP7T port map(A1 => n_506, A2 => calc_buf_mid(1), B1 => sqi_data_in(1), B2 => n_495, Z => n_507);
  g20041 : MOAI22D0BWP7T port map(A1 => n_504, A2 => n_526, B1 => n_503, B2 => framebuffer_buf_mid(74), ZN => n_505);
  g20102 : MOAI22D0BWP7T port map(A1 => n_512, A2 => n_523, B1 => n_510, B2 => framebuffer_buf_mid(33), ZN => n_502);
  g20042 : MOAI22D0BWP7T port map(A1 => n_504, A2 => n_523, B1 => n_503, B2 => framebuffer_buf_mid(75), ZN => n_501);
  g20101 : MOAI22D0BWP7T port map(A1 => n_512, A2 => n_526, B1 => n_510, B2 => framebuffer_buf_mid(32), ZN => n_500);
  g20043 : MOAI22D0BWP7T port map(A1 => n_504, A2 => n_511, B1 => n_503, B2 => framebuffer_buf_mid(76), ZN => n_499);
  g20044 : MOAI22D0BWP7T port map(A1 => n_504, A2 => n_518, B1 => n_503, B2 => framebuffer_buf_mid(77), ZN => n_498);
  g20045 : MOAI22D0BWP7T port map(A1 => n_493, A2 => n_485, B1 => n_491, B2 => framebuffer_buf_mid(108), ZN => n_497);
  g19804 : AO22D0BWP7T port map(A1 => n_506, A2 => calc_buf_mid(0), B1 => sqi_data_in(0), B2 => n_495, Z => n_496);
  g20046 : MOAI22D0BWP7T port map(A1 => n_493, A2 => n_492, B1 => n_491, B2 => framebuffer_buf_mid(109), ZN => n_494);
  g20047 : MOAI22D0BWP7T port map(A1 => n_493, A2 => n_526, B1 => n_491, B2 => framebuffer_buf_mid(104), ZN => n_490);
  g20048 : MOAI22D0BWP7T port map(A1 => n_493, A2 => n_523, B1 => n_491, B2 => framebuffer_buf_mid(105), ZN => n_489);
  g20049 : MOAI22D0BWP7T port map(A1 => n_493, A2 => n_511, B1 => n_491, B2 => framebuffer_buf_mid(106), ZN => n_488);
  g19805 : MOAI22D0BWP7T port map(A1 => n_486, A2 => n_485, B1 => n_506, B2 => calc_buf_mid(6), ZN => n_487);
  g20050 : MOAI22D0BWP7T port map(A1 => n_493, A2 => n_518, B1 => n_491, B2 => framebuffer_buf_mid(107), ZN => n_484);
  g19788 : AOI32D1BWP7T port map(A1 => n_221, A2 => n_552, A3 => counter(2), B1 => n_177, B2 => n_14, ZN => n_483);
  g20051 : MOAI22D0BWP7T port map(A1 => n_480, A2 => n_485, B1 => n_479, B2 => framebuffer_buf_mid(134), ZN => n_482);
  g20052 : MOAI22D0BWP7T port map(A1 => n_480, A2 => n_492, B1 => n_479, B2 => framebuffer_buf_mid(135), ZN => n_481);
  g20053 : MOAI22D0BWP7T port map(A1 => n_475, A2 => n_485, B1 => n_474, B2 => framebuffer_buf_mid(84), ZN => n_478);
  g19806 : MOAI22D0BWP7T port map(A1 => n_486, A2 => n_492, B1 => n_506, B2 => calc_buf_mid(7), ZN => n_477);
  g20054 : MOAI22D0BWP7T port map(A1 => n_475, A2 => n_492, B1 => n_474, B2 => framebuffer_buf_mid(85), ZN => n_476);
  g20055 : MOAI22D0BWP7T port map(A1 => n_480, A2 => n_526, B1 => n_479, B2 => framebuffer_buf_mid(130), ZN => n_473);
  g20056 : MOAI22D0BWP7T port map(A1 => n_480, A2 => n_523, B1 => n_479, B2 => framebuffer_buf_mid(131), ZN => n_472);
  g20057 : MOAI22D0BWP7T port map(A1 => n_480, A2 => n_511, B1 => n_479, B2 => framebuffer_buf_mid(132), ZN => n_471);
  g19807 : MOAI22D0BWP7T port map(A1 => n_486, A2 => n_526, B1 => n_506, B2 => calc_buf_mid(2), ZN => n_470);
  g20058 : MOAI22D0BWP7T port map(A1 => n_480, A2 => n_518, B1 => n_479, B2 => framebuffer_buf_mid(133), ZN => n_469);
  g20059 : MOAI22D0BWP7T port map(A1 => n_475, A2 => n_526, B1 => n_474, B2 => framebuffer_buf_mid(80), ZN => n_468);
  g20060 : MOAI22D0BWP7T port map(A1 => n_475, A2 => n_523, B1 => n_474, B2 => framebuffer_buf_mid(81), ZN => n_467);
  g20061 : MOAI22D0BWP7T port map(A1 => n_475, A2 => n_511, B1 => n_474, B2 => framebuffer_buf_mid(82), ZN => n_466);
  g19938 : MOAI22D0BWP7T port map(A1 => n_454, A2 => n_492, B1 => n_453, B2 => framebuffer_buf_mid(55), ZN => n_465);
  g20062 : MOAI22D0BWP7T port map(A1 => n_475, A2 => n_518, B1 => n_474, B2 => framebuffer_buf_mid(83), ZN => n_464);
  g20063 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(6), B1 => sqi_data_in(6), B2 => n_460, Z => n_463);
  g20064 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(7), B1 => sqi_data_in(7), B2 => n_460, Z => n_462);
  g19809 : MOAI22D0BWP7T port map(A1 => n_486, A2 => n_511, B1 => n_506, B2 => calc_buf_mid(4), ZN => n_459);
  g20065 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(2), B1 => sqi_data_in(2), B2 => n_460, Z => n_458);
  g20066 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(3), B1 => sqi_data_in(3), B2 => n_460, Z => n_457);
  g20067 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(4), B1 => sqi_data_in(4), B2 => n_460, Z => n_456);
  g19926 : MOAI22D0BWP7T port map(A1 => n_454, A2 => n_485, B1 => n_453, B2 => framebuffer_buf_mid(54), ZN => n_455);
  g20068 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(5), B1 => sqi_data_in(5), B2 => n_460, Z => n_452);
  g20092 : MOAI22D0BWP7T port map(A1 => n_512, A2 => n_492, B1 => n_510, B2 => framebuffer_buf_mid(37), ZN => n_451);
  g20069 : MOAI22D0BWP7T port map(A1 => n_447, A2 => n_485, B1 => n_446, B2 => framebuffer_buf_mid(30), ZN => n_450);
  g19810 : MOAI22D0BWP7T port map(A1 => n_486, A2 => n_518, B1 => n_506, B2 => calc_buf_mid(5), ZN => n_449);
  g20070 : MOAI22D0BWP7T port map(A1 => n_447, A2 => n_492, B1 => n_446, B2 => framebuffer_buf_mid(31), ZN => n_448);
  g20071 : MOAI22D0BWP7T port map(A1 => n_443, A2 => n_485, B1 => n_442, B2 => framebuffer_buf_mid(60), ZN => n_445);
  g20072 : MOAI22D0BWP7T port map(A1 => n_443, A2 => n_492, B1 => n_442, B2 => framebuffer_buf_mid(61), ZN => n_444);
  g20091 : MOAI22D0BWP7T port map(A1 => n_512, A2 => n_485, B1 => n_510, B2 => framebuffer_buf_mid(36), ZN => n_441);
  g20073 : MOAI22D0BWP7T port map(A1 => n_447, A2 => n_526, B1 => n_446, B2 => framebuffer_buf_mid(26), ZN => n_440);
  g20074 : MOAI22D0BWP7T port map(A1 => n_447, A2 => n_523, B1 => n_446, B2 => framebuffer_buf_mid(27), ZN => n_439);
  g20075 : MOAI22D0BWP7T port map(A1 => n_447, A2 => n_511, B1 => n_446, B2 => framebuffer_buf_mid(28), ZN => n_438);
  g20076 : MOAI22D0BWP7T port map(A1 => n_447, A2 => n_518, B1 => n_446, B2 => framebuffer_buf_mid(29), ZN => n_437);
  g20077 : MOAI22D0BWP7T port map(A1 => n_443, A2 => n_526, B1 => n_442, B2 => framebuffer_buf_mid(56), ZN => n_436);
  g19932 : AO31D1BWP7T port map(A1 => n_394, A2 => n_113, A3 => counter(3), B => n_434, Z => n_435);
  g20078 : MOAI22D0BWP7T port map(A1 => n_443, A2 => n_523, B1 => n_442, B2 => framebuffer_buf_mid(57), ZN => n_433);
  g20079 : MOAI22D0BWP7T port map(A1 => n_443, A2 => n_511, B1 => n_442, B2 => framebuffer_buf_mid(58), ZN => n_432);
  g20080 : MOAI22D0BWP7T port map(A1 => n_443, A2 => n_518, B1 => n_442, B2 => framebuffer_buf_mid(59), ZN => n_431);
  g20081 : MOAI22D0BWP7T port map(A1 => n_428, A2 => n_485, B1 => n_427, B2 => framebuffer_buf_mid(12), ZN => n_430);
  g20082 : MOAI22D0BWP7T port map(A1 => n_428, A2 => n_492, B1 => n_427, B2 => framebuffer_buf_mid(13), ZN => n_429);
  g20083 : MOAI22D0BWP7T port map(A1 => n_428, A2 => n_526, B1 => n_427, B2 => framebuffer_buf_mid(8), ZN => n_426);
  g20084 : MOAI22D0BWP7T port map(A1 => n_428, A2 => n_523, B1 => n_427, B2 => framebuffer_buf_mid(9), ZN => n_425);
  g20085 : MOAI22D0BWP7T port map(A1 => n_428, A2 => n_511, B1 => n_427, B2 => framebuffer_buf_mid(10), ZN => n_424);
  g20086 : MOAI22D0BWP7T port map(A1 => n_428, A2 => n_518, B1 => n_427, B2 => framebuffer_buf_mid(11), ZN => n_423);
  g19936 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(0), B1 => sqi_data_in(0), B2 => n_460, Z => n_422);
  g19937 : AO22D0BWP7T port map(A1 => n_461, A2 => framebuffer_buf_mid(1), B1 => sqi_data_in(1), B2 => n_460, Z => n_421);
  g20107 : MOAI22D0BWP7T port map(A1 => n_419, A2 => n_511, B1 => n_418, B2 => framebuffer_buf_mid(156), ZN => n_420);
  g20108 : MOAI22D0BWP7T port map(A1 => n_419, A2 => n_518, B1 => n_418, B2 => framebuffer_buf_mid(157), ZN => n_417);
  g20109 : MOAI22D0BWP7T port map(A1 => n_454, A2 => n_526, B1 => n_453, B2 => framebuffer_buf_mid(50), ZN => n_416);
  g20116 : OAI21D0BWP7T port map(A1 => n_179, A2 => n_414, B => n_413, ZN => n_415);
  g20031 : MOAI22D0BWP7T port map(A1 => n_504, A2 => n_485, B1 => n_503, B2 => framebuffer_buf_mid(78), ZN => n_412);
  g20022 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_492, B1 => n_403, B2 => framebuffer_buf_mid(103), ZN => n_411);
  g20018 : MOAI22D0BWP7T port map(A1 => n_454, A2 => n_523, B1 => n_453, B2 => framebuffer_buf_mid(51), ZN => n_410);
  g19870 : OR4D1BWP7T port map(A1 => reset, A2 => n_195, A3 => n_75, A4 => n_251, Z => n_409);
  g20019 : MOAI22D0BWP7T port map(A1 => n_454, A2 => n_511, B1 => n_453, B2 => framebuffer_buf_mid(52), ZN => n_408);
  g20020 : MOAI22D0BWP7T port map(A1 => n_454, A2 => n_518, B1 => n_453, B2 => framebuffer_buf_mid(53), ZN => n_407);
  g20106 : MOAI22D0BWP7T port map(A1 => n_419, A2 => n_523, B1 => n_418, B2 => framebuffer_buf_mid(155), ZN => n_406);
  g20021 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_485, B1 => n_403, B2 => framebuffer_buf_mid(102), ZN => n_405);
  g20030 : MOAI22D0BWP7T port map(A1 => n_515, A2 => n_492, B1 => n_514, B2 => framebuffer_buf_mid(129), ZN => n_402);
  g20023 : MOAI22D0BWP7T port map(A1 => n_524, A2 => n_485, B1 => n_522, B2 => framebuffer_buf_mid(152), ZN => n_401);
  g20024 : MOAI22D0BWP7T port map(A1 => n_524, A2 => n_492, B1 => n_522, B2 => framebuffer_buf_mid(153), ZN => n_400);
  g20025 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_526, B1 => n_403, B2 => framebuffer_buf_mid(98), ZN => n_399);
  g20026 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_523, B1 => n_403, B2 => framebuffer_buf_mid(99), ZN => n_398);
  g20027 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_511, B1 => n_403, B2 => framebuffer_buf_mid(100), ZN => n_397);
  g20028 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_518, B1 => n_403, B2 => framebuffer_buf_mid(101), ZN => n_396);
  g20029 : MOAI22D0BWP7T port map(A1 => n_515, A2 => n_485, B1 => n_514, B2 => framebuffer_buf_mid(128), ZN => n_395);
  g20014 : AO21D0BWP7T port map(A1 => n_90, A2 => n_394, B => n_434, Z => n_564);
  g20087 : MOAI22D0BWP7T port map(A1 => n_390, A2 => n_485, B1 => n_389, B2 => calc_buf_mid(14), ZN => n_393);
  g19871 : AOI31D0BWP7T port map(A1 => n_198, A2 => counter(3), A3 => y(6), B => n_238, ZN => n_392);
  g20096 : MOAI22D0BWP7T port map(A1 => n_390, A2 => n_518, B1 => n_389, B2 => calc_buf_mid(13), ZN => n_391);
  g19925 : AO22D0BWP7T port map(A1 => n_389, A2 => calc_buf_mid(8), B1 => sqi_data_in(0), B2 => n_382, Z => n_388);
  g19927 : AO22D0BWP7T port map(A1 => n_385, A2 => calc_buf_mid(17), B1 => sqi_data_in(1), B2 => n_384, Z => n_387);
  g19928 : AO22D0BWP7T port map(A1 => n_385, A2 => calc_buf_mid(16), B1 => sqi_data_in(0), B2 => n_384, Z => n_386);
  g19933 : AO22D0BWP7T port map(A1 => n_389, A2 => calc_buf_mid(9), B1 => sqi_data_in(1), B2 => n_382, Z => n_383);
  g19878 : AOI22D0BWP7T port map(A1 => n_371, A2 => calc_buf_in(4), B1 => n_370, B2 => row_buf(5), ZN => n_381);
  g20088 : MOAI22D0BWP7T port map(A1 => n_390, A2 => n_492, B1 => n_389, B2 => calc_buf_mid(15), ZN => n_380);
  g20089 : MOAI22D0BWP7T port map(A1 => n_377, A2 => n_485, B1 => n_385, B2 => calc_buf_mid(22), ZN => n_379);
  g20090 : MOAI22D0BWP7T port map(A1 => n_377, A2 => n_492, B1 => n_385, B2 => calc_buf_mid(23), ZN => n_378);
  g20093 : MOAI22D0BWP7T port map(A1 => n_390, A2 => n_526, B1 => n_389, B2 => calc_buf_mid(10), ZN => n_376);
  g20094 : MOAI22D0BWP7T port map(A1 => n_390, A2 => n_523, B1 => n_389, B2 => calc_buf_mid(11), ZN => n_375);
  g20095 : MOAI22D0BWP7T port map(A1 => n_390, A2 => n_511, B1 => n_389, B2 => calc_buf_mid(12), ZN => n_374);
  g19869 : AOI22D0BWP7T port map(A1 => n_371, A2 => calc_buf_in(0), B1 => n_370, B2 => row_buf(1), ZN => n_372);
  g20098 : MOAI22D0BWP7T port map(A1 => n_377, A2 => n_523, B1 => n_385, B2 => calc_buf_mid(19), ZN => n_369);
  g20099 : MOAI22D0BWP7T port map(A1 => n_377, A2 => n_511, B1 => n_385, B2 => calc_buf_mid(20), ZN => n_368);
  g20100 : MOAI22D0BWP7T port map(A1 => n_377, A2 => n_518, B1 => n_385, B2 => calc_buf_mid(21), ZN => n_367);
  g20117 : OAI221D0BWP7T port map(A1 => n_365, A2 => n_65, B1 => reset, B2 => n_183, C => n_226, ZN => n_366);
  g20118 : MOAI22D0BWP7T port map(A1 => n_301, A2 => n_217, B1 => n_203, B2 => counter(2), ZN => n_364);
  g20124 : OAI22D0BWP7T port map(A1 => n_206, A2 => n_323, B1 => n_227, B2 => n_149, ZN => n_363);
  g20097 : MOAI22D0BWP7T port map(A1 => n_377, A2 => n_526, B1 => n_385, B2 => calc_buf_mid(18), ZN => n_362);
  g19877 : AOI22D0BWP7T port map(A1 => n_371, A2 => calc_buf_in(1), B1 => n_370, B2 => row_buf(2), ZN => n_361);
  g19876 : AOI22D0BWP7T port map(A1 => n_371, A2 => calc_buf_in(2), B1 => n_109, B2 => edit_buf_in(3), ZN => n_360);
  g19875 : AOI22D0BWP7T port map(A1 => n_371, A2 => calc_buf_in(3), B1 => n_370, B2 => row_buf(4), ZN => n_359);
  g19873 : AOI22D0BWP7T port map(A1 => n_371, A2 => calc_buf_in(5), B1 => n_370, B2 => calc_buf_in(0), ZN => n_358);
  g20197 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_523, B1 => n_316, B2 => framebuffer_buf_mid(143), ZN => n_357);
  g20179 : MOAI22D0BWP7T port map(A1 => n_354, A2 => n_485, B1 => n_353, B2 => framebuffer_buf_mid(66), ZN => n_356);
  g20180 : MOAI22D0BWP7T port map(A1 => n_354, A2 => n_492, B1 => n_353, B2 => framebuffer_buf_mid(67), ZN => n_355);
  g20181 : MOAI22D0BWP7T port map(A1 => n_350, A2 => n_485, B1 => n_349, B2 => framebuffer_buf_mid(48), ZN => n_352);
  g20182 : MOAI22D0BWP7T port map(A1 => n_350, A2 => n_492, B1 => n_349, B2 => framebuffer_buf_mid(49), ZN => n_351);
  g20183 : MOAI22D0BWP7T port map(A1 => n_354, A2 => n_526, B1 => n_353, B2 => framebuffer_buf_mid(62), ZN => n_348);
  g20184 : MOAI22D0BWP7T port map(A1 => n_354, A2 => n_523, B1 => n_353, B2 => framebuffer_buf_mid(63), ZN => n_347);
  g20185 : MOAI22D0BWP7T port map(A1 => n_354, A2 => n_511, B1 => n_353, B2 => framebuffer_buf_mid(64), ZN => n_346);
  g20186 : MOAI22D0BWP7T port map(A1 => n_354, A2 => n_518, B1 => n_353, B2 => framebuffer_buf_mid(65), ZN => n_345);
  g20187 : MOAI22D0BWP7T port map(A1 => n_350, A2 => n_526, B1 => n_349, B2 => framebuffer_buf_mid(44), ZN => n_344);
  g20188 : MOAI22D0BWP7T port map(A1 => n_350, A2 => n_523, B1 => n_349, B2 => framebuffer_buf_mid(45), ZN => n_343);
  g20189 : MOAI22D0BWP7T port map(A1 => n_350, A2 => n_511, B1 => n_349, B2 => framebuffer_buf_mid(46), ZN => n_342);
  g20190 : MOAI22D0BWP7T port map(A1 => n_350, A2 => n_518, B1 => n_349, B2 => framebuffer_buf_mid(47), ZN => n_341);
  g20191 : MOAI22D0BWP7T port map(A1 => n_338, A2 => n_485, B1 => n_337, B2 => framebuffer_buf_mid(72), ZN => n_340);
  g20192 : MOAI22D0BWP7T port map(A1 => n_338, A2 => n_492, B1 => n_337, B2 => framebuffer_buf_mid(73), ZN => n_339);
  g20193 : MOAI22D0BWP7T port map(A1 => n_338, A2 => n_526, B1 => n_337, B2 => framebuffer_buf_mid(68), ZN => n_336);
  g20194 : MOAI22D0BWP7T port map(A1 => n_338, A2 => n_523, B1 => n_337, B2 => framebuffer_buf_mid(69), ZN => n_335);
  g20195 : MOAI22D0BWP7T port map(A1 => n_338, A2 => n_511, B1 => n_337, B2 => framebuffer_buf_mid(70), ZN => n_334);
  g20196 : MOAI22D0BWP7T port map(A1 => n_338, A2 => n_518, B1 => n_337, B2 => framebuffer_buf_mid(71), ZN => n_333);
  g20157 : MOAI22D0BWP7T port map(A1 => n_313, A2 => n_526, B1 => n_312, B2 => framebuffer_buf_mid(92), ZN => n_332);
  g20178 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_518, B1 => n_277, B2 => framebuffer_buf_mid(23), ZN => n_331);
  g20215 : INVD0BWP7T port map(I => n_329, ZN => n_330);
  g20220 : AO22D0BWP7T port map(A1 => n_204, A2 => counter(3), B1 => n_327, B2 => n_190, Z => n_328);
  g20131 : MOAI22D0BWP7T port map(A1 => n_320, A2 => n_485, B1 => n_319, B2 => framebuffer_buf_mid(140), ZN => n_326);
  g20130 : MOAI22D0BWP7T port map(A1 => n_307, A2 => n_518, B1 => n_306, B2 => framebuffer_buf_mid(113), ZN => n_325);
  g19935 : OAI33D1BWP7T port map(A1 => counter(3), A2 => n_323, A3 => n_239, B1 => n_197, B2 => n_37, B3 => n_322, ZN => n_324);
  g20110 : MOAI22D0BWP7T port map(A1 => n_320, A2 => n_492, B1 => n_319, B2 => framebuffer_buf_mid(141), ZN => n_321);
  g20111 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_526, B1 => n_316, B2 => framebuffer_buf_mid(142), ZN => n_318);
  g20113 : CKND4BWP7T port map(I => n_585, ZN => sqi_rw);
  g20114 : MOAI22D0BWP7T port map(A1 => n_313, A2 => n_492, B1 => n_312, B2 => framebuffer_buf_mid(97), ZN => n_314);
  g20120 : AOI22D0BWP7T port map(A1 => n_194, A2 => n_225, B1 => n_20, B2 => n_93, ZN => n_311);
  g20156 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_518, B1 => n_316, B2 => framebuffer_buf_mid(145), ZN => n_310);
  g20121 : MOAI22D0BWP7T port map(A1 => n_313, A2 => n_485, B1 => n_312, B2 => framebuffer_buf_mid(96), ZN => n_309);
  g20125 : MOAI22D0BWP7T port map(A1 => n_307, A2 => n_485, B1 => n_306, B2 => framebuffer_buf_mid(114), ZN => n_308);
  g20126 : MOAI22D0BWP7T port map(A1 => n_307, A2 => n_492, B1 => n_306, B2 => framebuffer_buf_mid(115), ZN => n_305);
  g20127 : MOAI22D0BWP7T port map(A1 => n_307, A2 => n_526, B1 => n_306, B2 => framebuffer_buf_mid(110), ZN => n_304);
  g20128 : MOAI22D0BWP7T port map(A1 => n_307, A2 => n_523, B1 => n_306, B2 => framebuffer_buf_mid(111), ZN => n_303);
  g20129 : MOAI22D0BWP7T port map(A1 => n_307, A2 => n_511, B1 => n_306, B2 => framebuffer_buf_mid(112), ZN => n_302);
  g20230 : AOI211XD0BWP7T port map(A1 => n_540, A2 => n_544, B => n_223, C => n_222, ZN => n_413);
  g20229 : OAI21D0BWP7T port map(A1 => n_205, A2 => counter(5), B => n_301, ZN => n_537);
  g20158 : MOAI22D0BWP7T port map(A1 => n_313, A2 => n_523, B1 => n_312, B2 => framebuffer_buf_mid(93), ZN => n_300);
  g20133 : MOAI22D0BWP7T port map(A1 => n_297, A2 => n_485, B1 => n_296, B2 => framebuffer_buf_mid(90), ZN => n_299);
  g20134 : MOAI22D0BWP7T port map(A1 => n_297, A2 => n_492, B1 => n_296, B2 => framebuffer_buf_mid(91), ZN => n_298);
  g20135 : MOAI22D0BWP7T port map(A1 => n_320, A2 => n_526, B1 => n_319, B2 => framebuffer_buf_mid(136), ZN => n_295);
  g20136 : MOAI22D0BWP7T port map(A1 => n_320, A2 => n_523, B1 => n_319, B2 => framebuffer_buf_mid(137), ZN => n_294);
  g20137 : MOAI22D0BWP7T port map(A1 => n_320, A2 => n_511, B1 => n_319, B2 => framebuffer_buf_mid(138), ZN => n_293);
  g20138 : MOAI22D0BWP7T port map(A1 => n_320, A2 => n_518, B1 => n_319, B2 => framebuffer_buf_mid(139), ZN => n_292);
  g20139 : MOAI22D0BWP7T port map(A1 => n_289, A2 => n_485, B1 => n_288, B2 => framebuffer_buf_mid(122), ZN => n_291);
  g20140 : MOAI22D0BWP7T port map(A1 => n_289, A2 => n_492, B1 => n_288, B2 => framebuffer_buf_mid(123), ZN => n_290);
  g20141 : MOAI22D0BWP7T port map(A1 => n_297, A2 => n_526, B1 => n_296, B2 => framebuffer_buf_mid(86), ZN => n_287);
  g20142 : MOAI22D0BWP7T port map(A1 => n_297, A2 => n_523, B1 => n_296, B2 => framebuffer_buf_mid(87), ZN => n_286);
  g20143 : MOAI22D0BWP7T port map(A1 => n_297, A2 => n_511, B1 => n_296, B2 => framebuffer_buf_mid(88), ZN => n_285);
  g20144 : MOAI22D0BWP7T port map(A1 => n_297, A2 => n_518, B1 => n_296, B2 => framebuffer_buf_mid(89), ZN => n_284);
  g20145 : MOAI22D0BWP7T port map(A1 => n_289, A2 => n_526, B1 => n_288, B2 => framebuffer_buf_mid(118), ZN => n_283);
  g20146 : MOAI22D0BWP7T port map(A1 => n_289, A2 => n_523, B1 => n_288, B2 => framebuffer_buf_mid(119), ZN => n_282);
  g20147 : MOAI22D0BWP7T port map(A1 => n_289, A2 => n_511, B1 => n_288, B2 => framebuffer_buf_mid(120), ZN => n_281);
  g20148 : MOAI22D0BWP7T port map(A1 => n_289, A2 => n_518, B1 => n_288, B2 => framebuffer_buf_mid(121), ZN => n_280);
  g20177 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_511, B1 => n_277, B2 => framebuffer_buf_mid(22), ZN => n_279);
  g20149 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_485, B1 => n_316, B2 => framebuffer_buf_mid(146), ZN => n_276);
  g20155 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_511, B1 => n_316, B2 => framebuffer_buf_mid(144), ZN => n_275);
  g20132 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_492, B1 => n_316, B2 => framebuffer_buf_mid(147), ZN => n_274);
  g20159 : MOAI22D0BWP7T port map(A1 => n_313, A2 => n_511, B1 => n_312, B2 => framebuffer_buf_mid(94), ZN => n_273);
  g20160 : MOAI22D0BWP7T port map(A1 => n_313, A2 => n_518, B1 => n_312, B2 => framebuffer_buf_mid(95), ZN => n_272);
  g20161 : MOAI22D0BWP7T port map(A1 => n_269, A2 => n_485, B1 => n_268, B2 => framebuffer_buf_mid(18), ZN => n_271);
  g20162 : MOAI22D0BWP7T port map(A1 => n_269, A2 => n_492, B1 => n_268, B2 => framebuffer_buf_mid(19), ZN => n_270);
  g20163 : MOAI22D0BWP7T port map(A1 => n_269, A2 => n_526, B1 => n_268, B2 => framebuffer_buf_mid(14), ZN => n_267);
  g20164 : MOAI22D0BWP7T port map(A1 => n_269, A2 => n_523, B1 => n_268, B2 => framebuffer_buf_mid(15), ZN => n_266);
  g20165 : MOAI22D0BWP7T port map(A1 => n_269, A2 => n_511, B1 => n_268, B2 => framebuffer_buf_mid(16), ZN => n_265);
  g20166 : MOAI22D0BWP7T port map(A1 => n_269, A2 => n_518, B1 => n_268, B2 => framebuffer_buf_mid(17), ZN => n_264);
  g20167 : MOAI22D0BWP7T port map(A1 => n_261, A2 => n_485, B1 => n_260, B2 => framebuffer_buf_mid(42), ZN => n_263);
  g20168 : MOAI22D0BWP7T port map(A1 => n_261, A2 => n_492, B1 => n_260, B2 => framebuffer_buf_mid(43), ZN => n_262);
  g20169 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_485, B1 => n_277, B2 => framebuffer_buf_mid(24), ZN => n_259);
  g20170 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_492, B1 => n_277, B2 => framebuffer_buf_mid(25), ZN => n_258);
  g20171 : MOAI22D0BWP7T port map(A1 => n_261, A2 => n_526, B1 => n_260, B2 => framebuffer_buf_mid(38), ZN => n_257);
  g20172 : MOAI22D0BWP7T port map(A1 => n_261, A2 => n_523, B1 => n_260, B2 => framebuffer_buf_mid(39), ZN => n_256);
  g20173 : MOAI22D0BWP7T port map(A1 => n_261, A2 => n_511, B1 => n_260, B2 => framebuffer_buf_mid(40), ZN => n_255);
  g20174 : MOAI22D0BWP7T port map(A1 => n_261, A2 => n_518, B1 => n_260, B2 => framebuffer_buf_mid(41), ZN => n_254);
  g20175 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_526, B1 => n_277, B2 => framebuffer_buf_mid(20), ZN => n_253);
  g20176 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_523, B1 => n_277, B2 => framebuffer_buf_mid(21), ZN => n_252);
  g20150 : OR2D1BWP7T port map(A1 => n_215, A2 => n_45, Z => n_434);
  g20217 : OAI31D0BWP7T port map(A1 => ce, A2 => n_193, A3 => n_86, B => n_184, ZN => n_251);
  g20199 : ND2D1BWP7T port map(A1 => n_250, A2 => n_244, ZN => n_418);
  g20201 : ND2D1BWP7T port map(A1 => n_250, A2 => n_245, ZN => n_442);
  g20202 : ND2D1BWP7T port map(A1 => n_250, A2 => n_249, ZN => n_491);
  g20203 : ND2D1BWP7T port map(A1 => n_248, A2 => n_249, ZN => n_403);
  g20204 : ND2D1BWP7T port map(A1 => n_248, A2 => n_247, ZN => n_514);
  g20205 : ND2D1BWP7T port map(A1 => n_250, A2 => n_247, ZN => n_479);
  g20206 : ND2D1BWP7T port map(A1 => n_250, A2 => n_243, ZN => n_510);
  g20207 : ND2D1BWP7T port map(A1 => n_248, A2 => n_246, ZN => n_503);
  g20208 : ND2D1BWP7T port map(A1 => n_250, A2 => n_246, ZN => n_474);
  g20209 : ND2D1BWP7T port map(A1 => n_250, A2 => n_242, ZN => n_427);
  g20210 : ND2D1BWP7T port map(A1 => n_248, A2 => n_245, ZN => n_453);
  g20211 : ND2D1BWP7T port map(A1 => n_248, A2 => n_244, ZN => n_522);
  g20200 : ND2D1BWP7T port map(A1 => n_248, A2 => n_243, ZN => n_446);
  g20212 : ND2D1BWP7T port map(A1 => n_248, A2 => n_242, ZN => n_461);
  g20154 : OAI22D0BWP7T port map(A1 => n_239, A2 => n_164, B1 => n_1774, B2 => n_137, ZN => n_240);
  g20017 : MOAI22D0BWP7T port map(A1 => n_220, A2 => counter(3), B1 => n_237, B2 => n_28, ZN => n_238);
  g20122 : AO222D0BWP7T port map(A1 => n_235, A2 => n_167, B1 => n_234, B2 => counter(0), C1 => n_188, C2 => n_233, Z => n_236);
  g20257 : AO21D0BWP7T port map(A1 => n_540, A2 => n_231, B => n_230, Z => n_232);
  g20260 : AO21D0BWP7T port map(A1 => n_540, A2 => y(0), B => n_230, Z => n_229);
  g20265 : OAI22D0BWP7T port map(A1 => n_151, A2 => n_218, B1 => n_227, B2 => counter(2), ZN => n_228);
  g20218 : AOI22D0BWP7T port map(A1 => n_171, A2 => n_225, B1 => n_66, B2 => n_106, ZN => n_226);
  g19931 : ND3D0BWP7T port map(A1 => n_168, A2 => n_220, A3 => n_1774, ZN => n_221);
  sqi_rw_reg : LHD1BWP7T port map(E => n_30, D => n_196, Q => UNCONNECTED, QN => n_585);
  g20228 : NR4D0BWP7T port map(A1 => n_227, A2 => n_552, A3 => n_218, A4 => n_217, ZN => n_329);
  g20238 : ND2D1BWP7T port map(A1 => n_216, A2 => counter(0), ZN => n_419);
  g20242 : ND2D1BWP7T port map(A1 => n_216, A2 => n_233, ZN => n_524);
  g20012 : OAI221D0BWP7T port map(A1 => n_161, A2 => state(1), B1 => n_214, B2 => n_142, C => n_35, ZN => n_506);
  g20226 : OAI222D0BWP7T port map(A1 => n_108, A2 => n_99, B1 => n_62, B2 => n_17, C1 => n_202, C2 => n_214, ZN => n_215);
  g20223 : OAI22D0BWP7T port map(A1 => n_134, A2 => n_552, B1 => n_91, B2 => n_212, ZN => n_213);
  g20222 : AOI211D0BWP7T port map(A1 => n_210, A2 => n_8, B => n_209, C => y(0), ZN => n_211);
  g20232 : OAI21D0BWP7T port map(A1 => n_185, A2 => n_208, B => n_207, ZN => n_385);
  g20231 : OAI21D0BWP7T port map(A1 => n_208, A2 => n_187, B => n_207, ZN => n_389);
  g20233 : IAO21D0BWP7T port map(A1 => n_205, A2 => counter(3), B => n_204, ZN => n_206);
  g20235 : NR3D0BWP7T port map(A1 => n_227, A2 => n_552, A3 => counter(5), ZN => n_203);
  g20271 : AOI21D0BWP7T port map(A1 => n_186, A2 => n_552, B => n_204, ZN => n_301);
  g20151 : OAI32D1BWP7T port map(A1 => edit, A2 => state(2), A3 => n_202, B1 => n_201, B2 => n_145, ZN => n_371);
  g20244 : ND2D1BWP7T port map(A1 => n_200, A2 => counter(0), ZN => n_443);
  g20239 : ND2D1BWP7T port map(A1 => n_200, A2 => n_233, ZN => n_454);
  g20224 : AOI22D0BWP7T port map(A1 => n_237, A2 => n_71, B1 => n_198, B2 => n_197, ZN => n_199);
  g20219 : AO211D0BWP7T port map(A1 => n_101, A2 => state(2), B => n_195, C => n_29, Z => n_196);
  g20236 : OAI221D0BWP7T port map(A1 => n_121, A2 => state(0), B1 => n_96, B2 => n_26, C => n_193, ZN => n_194);
  row_buf_reg_4 : DFQD1BWP7T port map(CP => clk, D => n_126, Q => row_buf(4));
  g20240 : ND2D1BWP7T port map(A1 => n_191, A2 => n_246, ZN => n_296);
  g20241 : ND2D1BWP7T port map(A1 => n_192, A2 => n_242, ZN => n_277);
  g20243 : ND2D1BWP7T port map(A1 => n_192, A2 => n_243, ZN => n_349);
  g20245 : ND2D1BWP7T port map(A1 => n_192, A2 => n_245, ZN => n_337);
  g20246 : ND2D1BWP7T port map(A1 => n_191, A2 => n_242, ZN => n_268);
  g20247 : ND2D1BWP7T port map(A1 => n_191, A2 => n_243, ZN => n_260);
  g20248 : ND2D1BWP7T port map(A1 => n_191, A2 => n_245, ZN => n_353);
  g20249 : ND2D1BWP7T port map(A1 => n_191, A2 => n_247, ZN => n_319);
  g20250 : ND2D1BWP7T port map(A1 => n_191, A2 => n_249, ZN => n_306);
  g20251 : ND2D1BWP7T port map(A1 => n_192, A2 => n_246, ZN => n_312);
  g20252 : ND2D1BWP7T port map(A1 => n_192, A2 => n_249, ZN => n_288);
  g20329 : INVD0BWP7T port map(I => n_227, ZN => n_190);
  g20259 : IOA21D0BWP7T port map(A1 => n_170, A2 => n_183, B => state(2), ZN => n_184);
  g20123 : AO33D0BWP7T port map(A1 => n_198, A2 => n_9, A3 => n_323, B1 => n_181, B2 => n_180, B3 => counter(0), Z => n_182);
  row_buf_reg_2 : DFQD1BWP7T port map(CP => clk, D => n_133, Q => row_buf(2));
  g20277 : CKND1BWP7T port map(I => n_377, ZN => n_384);
  g20278 : CKND1BWP7T port map(I => n_390, ZN => n_382);
  g20280 : NR2D1BWP7T port map(A1 => n_179, A2 => n_89, ZN => n_223);
  row_buf_reg_3 : DFQD1BWP7T port map(CP => clk, D => n_132, Q => row_buf(3));
  g20308 : NR2XD0BWP7T port map(A1 => n_128, A2 => n_552, ZN => n_216);
  row_buf_reg_1 : DFQD1BWP7T port map(CP => clk, D => n_125, Q => row_buf(1));
  row_buf_reg_5 : DFQD1BWP7T port map(CP => clk, D => n_129, Q => row_buf(5));
  row_buf_reg_0 : DFQD1BWP7T port map(CP => clk, D => n_124, Q => row_buf(0));
  g20253 : ND2D1BWP7T port map(A1 => n_192, A2 => n_247, ZN => n_316);
  g20274 : OA21D0BWP7T port map(A1 => n_214, A2 => n_233, B => n_178, Z => n_248);
  g20275 : OA21D0BWP7T port map(A1 => n_214, A2 => counter(0), B => n_178, Z => n_250);
  g20256 : MOAI22D0BWP7T port map(A1 => n_322, A2 => n_135, B1 => n_176, B2 => counter(0), ZN => n_177);
  g20225 : AOI31D0BWP7T port map(A1 => n_174, A2 => n_159, A3 => n_85, B => n_115, ZN => n_175);
  g20359 : ND2D4BWP7T port map(A1 => n_97, A2 => n_81, ZN => sqi_data_out(7));
  g20216 : OAI211D1BWP7T port map(A1 => state(2), A2 => n_56, B => n_94, C => n_107, ZN => n_172);
  g20279 : ND2D0BWP7T port map(A1 => n_170, A2 => n_193, ZN => n_171);
  g20254 : AOI21D0BWP7T port map(A1 => n_237, A2 => n_185, B => n_165, ZN => n_169);
  g20221 : AOI32D1BWP7T port map(A1 => n_162, A2 => n_167, A3 => y(6), B1 => n_237, B2 => n_233, ZN => n_168);
  g20263 : MAOI22D0BWP7T port map(A1 => n_165, A2 => n_180, B1 => n_1774, B2 => n_164, ZN => n_166);
  g20266 : AO21D0BWP7T port map(A1 => n_237, A2 => n_167, B => n_174, Z => n_163);
  g20270 : AOI21D0BWP7T port map(A1 => n_162, A2 => counter(1), B => n_174, ZN => n_239);
  g20237 : INR2XD0BWP7T port map(A1 => n_161, B1 => n_114, ZN => n_207);
  g20227 : AOI32D1BWP7T port map(A1 => n_237, A2 => counter(1), A3 => y(6), B1 => n_162, B2 => n_150, ZN => n_220);
  g20298 : ND2D1BWP7T port map(A1 => n_156, A2 => n_160, ZN => n_512);
  g20291 : ND2D1BWP7T port map(A1 => n_158, A2 => n_159, ZN => n_354);
  g20292 : ND2D1BWP7T port map(A1 => n_158, A2 => n_160, ZN => n_261);
  g20293 : ND2D1BWP7T port map(A1 => n_157, A2 => n_160, ZN => n_350);
  g20294 : ND2D1BWP7T port map(A1 => n_157, A2 => n_159, ZN => n_338);
  g20295 : ND2D1BWP7T port map(A1 => n_156, A2 => n_147, ZN => n_428);
  g20296 : ND2D1BWP7T port map(A1 => n_156, A2 => n_155, ZN => n_493);
  g20297 : ND2D1BWP7T port map(A1 => n_157, A2 => n_155, ZN => n_289);
  g20276 : INVD1BWP7T port map(I => n_495, ZN => n_486);
  g20358 : ND2D4BWP7T port map(A1 => n_103, A2 => n_82, ZN => sqi_data_out(0));
  g20305 : AOI211D1BWP7T port map(A1 => n_152, A2 => n_10, B => n_574, C => y(3), ZN => n_153);
  g20309 : CKAN2D1BWP7T port map(A1 => n_127, A2 => n_180, Z => n_200);
  g20311 : OAI21D0BWP7T port map(A1 => n_205, A2 => counter(2), B => n_151, ZN => n_204);
  g20333 : INVD1BWP7T port map(I => n_179, ZN => n_540);
  g20343 : ND2D1BWP7T port map(A1 => n_188, A2 => n_150, ZN => n_227);
  g20312 : ND2D1BWP7T port map(A1 => n_158, A2 => n_155, ZN => n_307);
  g20313 : IND2D1BWP7T port map(A1 => n_149, B1 => n_148, ZN => n_504);
  g20314 : IND2D1BWP7T port map(A1 => n_149, B1 => n_156, ZN => n_475);
  g20315 : IND2D1BWP7T port map(A1 => n_149, B1 => n_158, ZN => n_297);
  g20316 : ND2D1BWP7T port map(A1 => n_148, A2 => n_155, ZN => n_404);
  g20299 : ND2D1BWP7T port map(A1 => n_157, A2 => n_147, ZN => n_278);
  g20318 : IND2D1BWP7T port map(A1 => n_149, B1 => n_157, ZN => n_313);
  g20319 : ND2D1BWP7T port map(A1 => n_158, A2 => n_147, ZN => n_269);
  g20320 : IND2D1BWP7T port map(A1 => n_212, B1 => n_148, ZN => n_515);
  g20322 : IND2D1BWP7T port map(A1 => n_212, B1 => n_158, ZN => n_320);
  g20323 : IND2D1BWP7T port map(A1 => n_212, B1 => n_156, ZN => n_480);
  g20325 : ND2D1BWP7T port map(A1 => n_148, A2 => n_160, ZN => n_447);
  g20317 : IND2D1BWP7T port map(A1 => n_212, B1 => n_157, ZN => n_317);
  g20302 : ND2D1BWP7T port map(A1 => n_146, A2 => n_187, ZN => n_390);
  g20301 : ND2D1BWP7T port map(A1 => n_146, A2 => n_185, ZN => n_377);
  g20326 : AN2D1BWP7T port map(A1 => n_148, A2 => n_147, Z => n_460);
  g20269 : AOI22D0BWP7T port map(A1 => n_78, A2 => state(1), B1 => n_16, B2 => edit, ZN => n_145);
  g20258 : ND3D0BWP7T port map(A1 => n_237, A2 => n_77, A3 => counter(0), ZN => n_144);
  g20261 : MAOI22D0BWP7T port map(A1 => n_549, A2 => n_70, B1 => n_569, B2 => n_116, ZN => n_143);
  g20262 : NR4D0BWP7T port map(A1 => n_61, A2 => n_141, A3 => n_76, A4 => state(0), ZN => n_142);
  g20264 : OAI21D0BWP7T port map(A1 => n_138, A2 => n_323, B => n_568, ZN => n_140);
  g20267 : OAI22D0BWP7T port map(A1 => n_138, A2 => n_19, B1 => n_84, B2 => n_137, ZN => n_139);
  g20255 : OA22D0BWP7T port map(A1 => n_568, A2 => n_135, B1 => n_167, B2 => n_569, Z => n_136);
  g20307 : AOI21D0BWP7T port map(A1 => n_394, A2 => sqi_address_mid(14), B => n_181, ZN => n_134);
  g20287 : NR2D1BWP7T port map(A1 => n_574, A2 => n_88, ZN => n_235);
  g20272 : ND3D0BWP7T port map(A1 => n_181, A2 => n_233, A3 => counter(3), ZN => n_579);
  g20290 : OR2D1BWP7T port map(A1 => n_373, A2 => n_222, Z => n_230);
  g20300 : NR2XD0BWP7T port map(A1 => n_112, A2 => n_141, ZN => n_495);
  g20354 : MOAI22D0BWP7T port map(A1 => n_131, A2 => n_526, B1 => n_130, B2 => row_buf(2), ZN => n_133);
  g20362 : MOAI22D0BWP7T port map(A1 => n_131, A2 => n_523, B1 => n_130, B2 => row_buf(3), ZN => n_132);
  g20361 : MOAI22D0BWP7T port map(A1 => n_131, A2 => n_518, B1 => n_130, B2 => row_buf(5), ZN => n_129);
  g20327 : INVD0BWP7T port map(I => n_127, ZN => n_128);
  g20360 : MOAI22D0BWP7T port map(A1 => n_131, A2 => n_511, B1 => n_130, B2 => row_buf(4), ZN => n_126);
  g20352 : AO22D0BWP7T port map(A1 => n_130, A2 => row_buf(1), B1 => sqi_data_in(1), B2 => n_123, Z => n_125);
  g20356 : AO22D0BWP7T port map(A1 => n_130, A2 => row_buf(0), B1 => sqi_data_in(0), B2 => n_123, Z => n_124);
  g20365 : AOI21D0BWP7T port map(A1 => n_167, A2 => y(2), B => n_122, ZN => n_210);
  g20310 : AOI21D0BWP7T port map(A1 => n_119, A2 => counter(1), B => n_120, ZN => n_178);
  g20349 : ND2D1BWP7T port map(A1 => n_121, A2 => n_225, ZN => n_179);
  g20321 : IAO21D0BWP7T port map(A1 => n_214, A2 => n_150, B => n_120, ZN => n_192);
  g20324 : AOI21D0BWP7T port map(A1 => n_135, A2 => n_119, B => n_120, ZN => n_191);
  g20331 : INVD0BWP7T port map(I => n_574, ZN => n_118);
  g20281 : AOI31D0BWP7T port map(A1 => n_22, A2 => n_116, A3 => n_141, B => n_322, ZN => n_117);
  g20234 : NR3D0BWP7T port map(A1 => n_322, A2 => n_149, A3 => counter(0), ZN => n_115);
  g20303 : AOI21D0BWP7T port map(A1 => n_92, A2 => n_54, B => n_208, ZN => n_114);
  g20336 : NR2XD0BWP7T port map(A1 => n_111, A2 => n_113, ZN => n_127);
  g20328 : CKND1BWP7T port map(I => n_112, ZN => n_146);
  g20289 : NR2XD0BWP7T port map(A1 => n_322, A2 => n_113, ZN => n_198);
  g20342 : INR2XD0BWP7T port map(A1 => n_187, B1 => n_111, ZN => n_156);
  g20341 : NR2XD0BWP7T port map(A1 => n_111, A2 => n_141, ZN => n_148);
  g20345 : NR2XD0BWP7T port map(A1 => n_111, A2 => n_95, ZN => n_157);
  g20347 : NR2XD0BWP7T port map(A1 => n_111, A2 => n_135, ZN => n_158);
  g20372 : ND2D1BWP7T port map(A1 => n_109, A2 => edit_buf_in(6), ZN => n_110);
  g20357 : AOI21D0BWP7T port map(A1 => n_100, A2 => n_107, B => n_106, ZN => n_108);
  g20382 : ND2D1BWP7T port map(A1 => n_109, A2 => edit_buf_in(2), ZN => n_105);
  g20378 : ND2D1BWP7T port map(A1 => n_109, A2 => edit_buf_in(1), ZN => n_104);
  g20369 : ND2D1BWP7T port map(A1 => n_109, A2 => edit_buf_in(0), ZN => n_103);
  g20370 : ND2D1BWP7T port map(A1 => n_109, A2 => edit_buf_in(4), ZN => n_102);
  g20355 : OAI21D0BWP7T port map(A1 => n_100, A2 => n_99, B => n_202, ZN => n_101);
  g20375 : ND2D1BWP7T port map(A1 => n_109, A2 => edit_buf_in(5), ZN => n_98);
  g20377 : ND2D1BWP7T port map(A1 => n_109, A2 => edit_buf_in(7), ZN => n_97);
  g20364 : AOI211XD0BWP7T port map(A1 => n_55, A2 => n_96, B => n_63, C => n_49, ZN => n_170);
  g20363 : AOI21D0BWP7T port map(A1 => n_186, A2 => n_95, B => n_234, ZN => n_151);
  g20391 : NR2XD0BWP7T port map(A1 => n_73, A2 => n_64, ZN => n_188);
  g20306 : OAI211D1BWP7T port map(A1 => n_93, A2 => n_52, B => n_193, C => state(2), ZN => n_94);
  g20338 : ND2D1BWP7T port map(A1 => n_92, A2 => n_72, ZN => n_112);
  g20334 : CKND1BWP7T port map(I => n_322, ZN => n_162);
  g20337 : NR2XD0BWP7T port map(A1 => n_91, A2 => n_90, ZN => n_373);
  g20332 : CKND1BWP7T port map(I => n_138, ZN => n_181);
  g20346 : IND2D1BWP7T port map(A1 => n_209, B1 => n_89, ZN => n_574);
  g20350 : NR2XD0BWP7T port map(A1 => n_91, A2 => y(7), ZN => n_237);
  g20401 : AOI21D0BWP7T port map(A1 => n_167, A2 => y(5), B => n_59, ZN => n_152);
  g20390 : AO21D0BWP7T port map(A1 => n_167, A2 => n_88, B => n_87, Z => n_122);
  g20379 : NR2D1BWP7T port map(A1 => n_100, A2 => n_86, ZN => n_121);
  g20335 : INR2XD0BWP7T port map(A1 => n_85, B1 => n_91, ZN => n_176);
  g20366 : INR2XD0BWP7T port map(A1 => n_187, B1 => n_91, ZN => n_165);
  g20367 : OAI21D0BWP7T port map(A1 => n_68, A2 => n_214, B => n_208, ZN => n_120);
  g20330 : CKND1BWP7T port map(I => n_84, ZN => n_174);
  g20398 : OR3D4BWP7T port map(A1 => n_40, A2 => n_24, A3 => n_195, Z => sqi_enabled);
  g20374 : ND2D1BWP7T port map(A1 => n_370, A2 => row_buf(0), ZN => n_82);
  g20373 : ND2D1BWP7T port map(A1 => n_370, A2 => calc_buf_in(1), ZN => n_81);
  g20371 : NR2XD0BWP7T port map(A1 => n_205, A2 => counter(6), ZN => n_80);
  g20386 : OR2D4BWP7T port map(A1 => n_51, A2 => n_27, Z => single);
  g20353 : OAI31D0BWP7T port map(A1 => edit, A2 => n_42, A3 => state(3), B => n_74, ZN => n_78);
  g20348 : ND2D1BWP7T port map(A1 => n_549, A2 => n_77, ZN => n_138);
  g20368 : IND2D1BWP7T port map(A1 => n_149, B1 => n_549, ZN => n_568);
  g20340 : ND2D1BWP7T port map(A1 => n_549, A2 => n_155, ZN => n_569);
  g20351 : ND2D1BWP7T port map(A1 => n_549, A2 => y(7), ZN => n_322);
  g20388 : AOI21D0BWP7T port map(A1 => n_39, A2 => n_89, B => n_86, ZN => n_76);
  g20414 : OAI22D0BWP7T port map(A1 => n_67, A2 => state(2), B1 => n_43, B2 => n_74, ZN => n_75);
  g20409 : AOI21D0BWP7T port map(A1 => n_225, A2 => state(0), B => n_72, ZN => n_73);
  g20383 : OAI22D0BWP7T port map(A1 => n_25, A2 => n_11, B1 => n_197, B2 => n_113, ZN => n_71);
  g20385 : OAI32D1BWP7T port map(A1 => n_85, A2 => n_233, A3 => n_38, B1 => n_135, B2 => n_36, ZN => n_70);
  g20376 : ND2D1BWP7T port map(A1 => n_370, A2 => row_buf(3), ZN => n_69);
  g20344 : ND2D1BWP7T port map(A1 => n_549, A2 => n_150, ZN => n_84);
  g20393 : OAI221D0BWP7T port map(A1 => n_53, A2 => n_214, B1 => reset, B2 => n_99, C => n_48, ZN => n_234);
  g20380 : ND2D1BWP7T port map(A1 => n_68, A2 => n_225, ZN => n_111);
  g20403 : IOA21D1BWP7T port map(A1 => n_67, A2 => n_106, B => n_214, ZN => n_130);
  g20405 : INR2D1BWP7T port map(A1 => edit, B1 => n_41, ZN => n_109);
  g20384 : OAI221D0BWP7T port map(A1 => n_65, A2 => mode, B1 => sqi_finished, B2 => n_99, C => n_64, ZN => n_66);
  g20397 : AOI21D0BWP7T port map(A1 => n_18, A2 => n_62, B => state(0), ZN => n_63);
  g20389 : AN3D1BWP7T port map(A1 => n_31, A2 => n_147, A3 => sqi_finished, Z => n_92);
  g20392 : IND3D1BWP7T port map(A1 => n_61, B1 => n_225, B2 => n_50, ZN => n_209);
  g20395 : INVD1BWP7T port map(I => n_205, ZN => n_186);
  g20402 : OR2D1BWP7T port map(A1 => n_61, A2 => n_150, Z => n_100);
  g20413 : AOI22D0BWP7T port map(A1 => n_87, A2 => n_414, B1 => n_7, B2 => y(7), ZN => n_60);
  g20430 : INVD0BWP7T port map(I => n_58, ZN => n_59);
  g20431 : AN2D4BWP7T port map(A1 => n_23, A2 => state(3), Z => ready);
  g20406 : INVD0BWP7T port map(I => n_131, ZN => n_123);
  g20439 : ND2D1BWP7T port map(A1 => n_164, A2 => n_119, ZN => n_243);
  g20381 : INVD1BWP7T port map(I => n_549, ZN => n_91);
  g20407 : AOI32D1BWP7T port map(A1 => n_55, A2 => state(3), A3 => ce, B1 => n_54, B2 => n_53, ZN => n_56);
  g20396 : NR2D0BWP7T port map(A1 => n_44, A2 => n_90, ZN => n_52);
  g20412 : IAO21D0BWP7T port map(A1 => n_47, A2 => n_50, B => state(2), ZN => n_51);
  g20411 : AOI21D0BWP7T port map(A1 => n_147, A2 => n_95, B => n_99, ZN => n_49);
  g20410 : MAOI22D0BWP7T port map(A1 => n_47, A2 => n_106, B1 => n_161, B2 => state(0), ZN => n_48);
  g20408 : ND3D0BWP7T port map(A1 => n_45, A2 => state(1), A3 => sqi_finished, ZN => n_46);
  g20400 : NR2XD0BWP7T port map(A1 => n_44, A2 => n_43, ZN => n_68);
  g20399 : INR2D1BWP7T port map(A1 => n_42, B1 => edit, ZN => n_96);
  g20416 : ND3D0BWP7T port map(A1 => n_195, A2 => n_107, A3 => sqi_finished, ZN => n_131);
  g20404 : OAI21D0BWP7T port map(A1 => n_15, A2 => n_106, B => n_86, ZN => n_205);
  g20394 : NR3D0BWP7T port map(A1 => n_44, A2 => n_161, A3 => state(0), ZN => n_549);
  g20434 : AOI22D0BWP7T port map(A1 => n_93, A2 => n_40, B1 => n_55, B2 => state(2), ZN => n_41);
  g20421 : AOI21D0BWP7T port map(A1 => n_106, A2 => n_4, B => n_45, ZN => n_365);
  g20422 : CKAN2D1BWP7T port map(A1 => n_45, A2 => n_201, Z => n_72);
  g20437 : IAO21D0BWP7T port map(A1 => counter(1), A2 => n_85, B => n_87, ZN => n_58);
  g20418 : INVD0BWP7T port map(I => n_39, ZN => n_88);
  g20415 : MOAI22D0BWP7T port map(A1 => n_13, A2 => n_183, B1 => n_225, B2 => n_55, ZN => n_222);
  g20428 : ND2D1BWP7T port map(A1 => n_149, A2 => n_119, ZN => n_246);
  g20429 : ND2D1BWP7T port map(A1 => n_38, A2 => n_119, ZN => n_245);
  g20425 : ND2D1BWP7T port map(A1 => n_37, A2 => n_119, ZN => n_249);
  g20427 : ND2D1BWP7T port map(A1 => n_212, A2 => n_119, ZN => n_247);
  g20440 : CKND2D1BWP7T port map(A1 => n_119, A2 => n_36, ZN => n_242);
  g20417 : OAI32D1BWP7T port map(A1 => state(2), A2 => state(0), A3 => n_183, B1 => n_74, B2 => n_99, ZN => n_370);
  g20433 : OAI21D0BWP7T port map(A1 => n_64, A2 => state(3), B => n_106, ZN => n_35);
  g20387 : OAI21D0BWP7T port map(A1 => n_33, A2 => counter(1), B => n_32, ZN => n_34);
  g20419 : INVD0BWP7T port map(I => n_44, ZN => n_31);
  g20420 : ND2D0BWP7T port map(A1 => n_29, A2 => state(2), ZN => n_30);
  g20423 : INR2D1BWP7T port map(A1 => n_85, B1 => n_544, ZN => n_39);
  g20424 : ND2D1BWP7T port map(A1 => n_147, A2 => n_62, ZN => n_61);
  g20441 : CKND1BWP7T port map(I => n_38, ZN => n_159);
  g20432 : MOAI22D0BWP7T port map(A1 => n_135, A2 => counter(3), B1 => n_187, B2 => n_32, ZN => n_28);
  g20446 : NR2XD0BWP7T port map(A1 => n_26, A2 => state(3), ZN => n_27);
  g20435 : AOI21D0BWP7T port map(A1 => n_187, A2 => y(6), B => n_185, ZN => n_25);
  g20465 : NR2XD0BWP7T port map(A1 => n_202, A2 => state(3), ZN => n_24);
  g20462 : ND2D1BWP7T port map(A1 => n_26, A2 => n_6, ZN => n_23);
  g20449 : ND2D1BWP7T port map(A1 => n_50, A2 => sqi_finished, ZN => n_67);
  g20460 : INVD0BWP7T port map(I => n_160, ZN => n_164);
  g20444 : ND2D1BWP7T port map(A1 => n_150, A2 => y(6), ZN => n_22);
  g20467 : AO21D0BWP7T port map(A1 => n_233, A2 => y(6), B => n_33, Z => n_21);
  g20438 : OAI21D0BWP7T port map(A1 => n_552, A2 => counter(2), B => n_119, ZN => n_244);
  g20442 : INVD0BWP7T port map(I => n_155, ZN => n_37);
  g20436 : OR4D1BWP7T port map(A1 => x(2), A2 => x(1), A3 => x(3), A4 => n_5, Z => n_42);
  g20443 : INVD0BWP7T port map(I => n_147, ZN => n_36);
  g20453 : ND2D1BWP7T port map(A1 => n_180, A2 => n_218, ZN => n_38);
  g20454 : ND2D1BWP7T port map(A1 => n_327, A2 => counter(4), ZN => n_212);
  g20456 : IND2D1BWP7T port map(A1 => n_137, B1 => counter(3), ZN => n_149);
  g20466 : OAI21D0BWP7T port map(A1 => reset, A2 => sqi_finished, B => n_208, ZN => n_20);
  g20464 : AOI21D0BWP7T port map(A1 => counter(0), A2 => counter(4), B => n_180, ZN => n_19);
  g20458 : INVD0BWP7T port map(I => n_90, ZN => n_18);
  g20459 : INVD0BWP7T port map(I => n_17, ZN => n_394);
  g20470 : NR2XD0BWP7T port map(A1 => n_99, A2 => n_193, ZN => n_195);
  g20471 : NR2XD0BWP7T port map(A1 => n_214, A2 => state(2), ZN => n_45);
  g20474 : IND2D1BWP7T port map(A1 => n_187, B1 => n_135, ZN => n_87);
  g20426 : ND2D1BWP7T port map(A1 => n_62, A2 => n_86, ZN => n_44);
  g20475 : NR2XD0BWP7T port map(A1 => n_137, A2 => counter(3), ZN => n_160);
  g20499 : INVD0BWP7T port map(I => n_183, ZN => n_16);
  g20445 : NR2D0BWP7T port map(A1 => n_43, A2 => reset, ZN => n_15);
  g20461 : AO21D0BWP7T port map(A1 => n_323, A2 => n_218, B => n_32, Z => n_14);
  g20463 : AOI21D0BWP7T port map(A1 => state(0), A2 => n_107, B => n_106, ZN => n_13);
  g20473 : ND2D1BWP7T port map(A1 => n_119, A2 => n_86, ZN => n_17);
  g20448 : NR2XD0BWP7T port map(A1 => n_54, A2 => state(1), ZN => n_47);
  g20450 : NR2D1BWP7T port map(A1 => n_231, A2 => y(2), ZN => n_89);
  g20451 : OR2D1BWP7T port map(A1 => n_539, A2 => y(5), Z => n_544);
  g20452 : ND2D1BWP7T port map(A1 => n_119, A2 => state(2), ZN => n_161);
  g20472 : NR2D1BWP7T port map(A1 => n_77, A2 => n_552, ZN => n_90);
  g20455 : AN2D1BWP7T port map(A1 => n_32, A2 => counter(4), Z => n_155);
  g20468 : OA21D0BWP7T port map(A1 => n_86, A2 => sqi_finished, B => n_43, Z => n_65);
  g20498 : INVD0BWP7T port map(I => n_64, ZN => n_53);
  g20447 : INR2D0BWP7T port map(A1 => n_54, B1 => state(1), ZN => n_29);
  g20500 : CKND1BWP7T port map(I => n_74, ZN => n_40);
  g20477 : INVD0BWP7T port map(I => n_55, ZN => n_26);
  g20503 : INVD0BWP7T port map(I => n_150, ZN => n_95);
  g20504 : CKND1BWP7T port map(I => n_99, ZN => n_50);
  g20502 : INVD1BWP7T port map(I => n_93, ZN => n_202);
  g20505 : INVD1BWP7T port map(I => n_135, ZN => n_185);
  g20457 : CKAN2D1BWP7T port map(A1 => n_32, A2 => n_323, Z => n_147);
  g20479 : INVD0BWP7T port map(I => n_552, ZN => n_11);
  g20482 : CKND2D0BWP7T port map(A1 => n_167, A2 => y(4), ZN => n_10);
  g20497 : INVD0BWP7T port map(I => n_197, ZN => n_9);
  g20484 : CKND2D0BWP7T port map(A1 => n_167, A2 => y(1), ZN => n_8);
  g20476 : INVD0BWP7T port map(I => n_7, ZN => n_116);
  g20507 : NR2XD0BWP7T port map(A1 => n_218, A2 => counter(3), ZN => n_327);
  g20511 : ND2D1BWP7T port map(A1 => n_86, A2 => sqi_finished, ZN => n_64);
  g20469 : NR3D0BWP7T port map(A1 => counter(5), A2 => counter(6), A3 => counter(7), ZN => n_62);
  g20478 : CKND1BWP7T port map(I => n_77, ZN => n_113);
  g20492 : NR2XD0BWP7T port map(A1 => n_86, A2 => n_201, ZN => n_55);
  g20480 : CKND1BWP7T port map(I => n_106, ZN => n_208);
  g20481 : INVD1BWP7T port map(I => n_119, ZN => n_214);
  g20508 : NR2D1BWP7T port map(A1 => n_233, A2 => y(6), ZN => n_33);
  g20510 : CKND2D1BWP7T port map(A1 => n_323, A2 => counter(2), ZN => n_137);
  g20513 : ND2D1BWP7T port map(A1 => n_6, A2 => n_193, ZN => n_74);
  g20517 : NR2XD0BWP7T port map(A1 => n_201, A2 => state(1), ZN => n_93);
  g20512 : ND2D1BWP7T port map(A1 => n_86, A2 => state(3), ZN => n_183);
  g20514 : ND2D1BWP7T port map(A1 => n_167, A2 => n_233, ZN => n_141);
  g20515 : NR2XD0BWP7T port map(A1 => n_1, A2 => counter(4), ZN => n_180);
  g20519 : NR2D1BWP7T port map(A1 => n_167, A2 => n_233, ZN => n_150);
  g20516 : NR2D1BWP7T port map(A1 => n_6, A2 => reset, ZN => n_225);
  g20518 : NR2D1BWP7T port map(A1 => n_233, A2 => counter(1), ZN => n_187);
  g20521 : ND2D1BWP7T port map(A1 => n_233, A2 => counter(1), ZN => n_135);
  g20520 : ND2D1BWP7T port map(A1 => n_201, A2 => state(1), ZN => n_99);
  g20483 : OR2D1BWP7T port map(A1 => x(0), A2 => x(4), Z => n_5);
  g20485 : NR2D0BWP7T port map(A1 => counter(1), A2 => y(6), ZN => n_7);
  g20486 : OR2D1BWP7T port map(A1 => y(3), A2 => y(4), Z => n_539);
  g20487 : OR2D1BWP7T port map(A1 => y(0), A2 => y(1), Z => n_231);
  g20489 : NR2D1BWP7T port map(A1 => state(0), A2 => state(3), ZN => n_54);
  g20488 : ND2D1BWP7T port map(A1 => state(0), A2 => sqi_finished, ZN => n_43);
  g20490 : NR2XD0BWP7T port map(A1 => y(6), A2 => y(7), ZN => n_85);
  g20506 : ND2D0BWP7T port map(A1 => ce, A2 => rw, ZN => n_4);
  g20493 : NR2XD0BWP7T port map(A1 => counter(1), A2 => counter(2), ZN => n_77);
  g20509 : ND2D1BWP7T port map(A1 => counter(0), A2 => y(6), ZN => n_197);
  g20491 : NR2XD0BWP7T port map(A1 => counter(2), A2 => counter(3), ZN => n_32);
  g20495 : NR2D1BWP7T port map(A1 => state(2), A2 => reset, ZN => n_106);
  g20494 : ND2D1BWP7T port map(A1 => counter(3), A2 => counter(4), ZN => n_552);
  g20496 : NR2XD0BWP7T port map(A1 => state(3), A2 => reset, ZN => n_119);
  g20533 : BUFFD4BWP7T port map(I => sqi_address_mid(10), Z => sqi_address(10));
  g20524 : INVD1BWP7T port map(I => reset, ZN => n_107);
  g20541 : INVD1BWP7T port map(I => sqi_data_in(3), ZN => n_523);
  g20532 : BUFFD4BWP7T port map(I => sqi_address_mid(9), Z => sqi_address(9));
  g20525 : INVD0BWP7T port map(I => y(6), ZN => n_414);
  g20530 : INVD1BWP7T port map(I => sqi_data_in(6), ZN => n_485);
  g20531 : INVD1BWP7T port map(I => sqi_data_in(7), ZN => n_492);
  g20542 : INVD1BWP7T port map(I => sqi_data_in(2), ZN => n_526);
  g20540 : INVD1BWP7T port map(I => sqi_data_in(4), ZN => n_511);
  g20539 : INVD1BWP7T port map(I => sqi_data_in(5), ZN => n_518);
  drc_bufs : INVD4BWP7T port map(I => n_618, ZN => sqi_address(14));
  drc_bufs20763 : INVD4BWP7T port map(I => n_624, ZN => sqi_address(12));
  drc_bufs20769 : INVD4BWP7T port map(I => n_630, ZN => sqi_address(7));
  drc_bufs20775 : INVD4BWP7T port map(I => n_636, ZN => sqi_address(13));
  drc_bufs20781 : INVD4BWP7T port map(I => n_642, ZN => sqi_address(0));
  drc_bufs20787 : INVD4BWP7T port map(I => n_648, ZN => sqi_address(3));
  drc_bufs20793 : INVD4BWP7T port map(I => n_654, ZN => framebuffer_buf(69));
  drc_bufs20799 : INVD4BWP7T port map(I => n_660, ZN => calc_buf_out(7));
  drc_bufs20805 : INVD4BWP7T port map(I => n_666, ZN => calc_buf_out(15));
  drc_bufs20811 : INVD4BWP7T port map(I => n_672, ZN => framebuffer_buf(8));
  drc_bufs20817 : INVD4BWP7T port map(I => n_678, ZN => framebuffer_buf(67));
  drc_bufs20823 : INVD4BWP7T port map(I => n_684, ZN => framebuffer_buf(39));
  drc_bufs20829 : INVD4BWP7T port map(I => n_690, ZN => framebuffer_buf(103));
  drc_bufs20835 : INVD4BWP7T port map(I => n_696, ZN => framebuffer_buf(65));
  drc_bufs20841 : INVD4BWP7T port map(I => n_702, ZN => framebuffer_buf(157));
  drc_bufs20847 : INVD4BWP7T port map(I => n_708, ZN => framebuffer_buf(156));
  drc_bufs20853 : INVD4BWP7T port map(I => n_714, ZN => framebuffer_buf(155));
  drc_bufs20859 : INVD4BWP7T port map(I => n_720, ZN => framebuffer_buf(154));
  drc_bufs20865 : INVD4BWP7T port map(I => n_726, ZN => framebuffer_buf(153));
  drc_bufs20871 : INVD4BWP7T port map(I => n_732, ZN => framebuffer_buf(152));
  drc_bufs20877 : INVD4BWP7T port map(I => n_738, ZN => framebuffer_buf(151));
  drc_bufs20883 : INVD4BWP7T port map(I => n_744, ZN => framebuffer_buf(150));
  drc_bufs20889 : INVD4BWP7T port map(I => n_750, ZN => framebuffer_buf(149));
  drc_bufs20895 : INVD4BWP7T port map(I => n_756, ZN => framebuffer_buf(148));
  drc_bufs20901 : INVD4BWP7T port map(I => n_762, ZN => framebuffer_buf(147));
  drc_bufs20907 : INVD4BWP7T port map(I => n_768, ZN => framebuffer_buf(146));
  drc_bufs20913 : INVD4BWP7T port map(I => n_774, ZN => framebuffer_buf(145));
  drc_bufs20919 : INVD4BWP7T port map(I => n_780, ZN => framebuffer_buf(144));
  drc_bufs20925 : INVD4BWP7T port map(I => n_786, ZN => framebuffer_buf(143));
  drc_bufs20931 : INVD4BWP7T port map(I => n_792, ZN => framebuffer_buf(142));
  drc_bufs20937 : INVD4BWP7T port map(I => n_798, ZN => framebuffer_buf(141));
  drc_bufs20943 : INVD4BWP7T port map(I => n_804, ZN => framebuffer_buf(140));
  drc_bufs20949 : INVD4BWP7T port map(I => n_810, ZN => framebuffer_buf(139));
  drc_bufs20955 : INVD4BWP7T port map(I => n_816, ZN => framebuffer_buf(104));
  drc_bufs20961 : INVD4BWP7T port map(I => n_822, ZN => framebuffer_buf(40));
  drc_bufs20967 : INVD4BWP7T port map(I => n_828, ZN => framebuffer_buf(136));
  drc_bufs20973 : INVD4BWP7T port map(I => n_834, ZN => framebuffer_buf(135));
  drc_bufs20979 : INVD4BWP7T port map(I => n_840, ZN => framebuffer_buf(134));
  drc_bufs20985 : INVD4BWP7T port map(I => n_846, ZN => framebuffer_buf(133));
  drc_bufs20991 : INVD4BWP7T port map(I => n_852, ZN => framebuffer_buf(132));
  drc_bufs20997 : INVD4BWP7T port map(I => n_858, ZN => framebuffer_buf(131));
  drc_bufs21003 : INVD4BWP7T port map(I => n_864, ZN => framebuffer_buf(130));
  drc_bufs21009 : INVD4BWP7T port map(I => n_870, ZN => framebuffer_buf(105));
  drc_bufs21015 : INVD4BWP7T port map(I => n_876, ZN => framebuffer_buf(128));
  drc_bufs21021 : INVD4BWP7T port map(I => n_882, ZN => framebuffer_buf(127));
  drc_bufs21027 : INVD4BWP7T port map(I => n_888, ZN => framebuffer_buf(126));
  drc_bufs21033 : INVD4BWP7T port map(I => n_894, ZN => framebuffer_buf(125));
  drc_bufs21039 : INVD4BWP7T port map(I => n_900, ZN => framebuffer_buf(124));
  drc_bufs21045 : INVD4BWP7T port map(I => n_906, ZN => framebuffer_buf(123));
  drc_bufs21051 : INVD4BWP7T port map(I => n_912, ZN => framebuffer_buf(122));
  drc_bufs21057 : INVD4BWP7T port map(I => n_918, ZN => framebuffer_buf(106));
  drc_bufs21063 : INVD4BWP7T port map(I => n_924, ZN => framebuffer_buf(120));
  drc_bufs21069 : INVD4BWP7T port map(I => n_930, ZN => framebuffer_buf(119));
  drc_bufs21075 : INVD4BWP7T port map(I => n_936, ZN => framebuffer_buf(118));
  drc_bufs21081 : INVD4BWP7T port map(I => n_942, ZN => framebuffer_buf(115));
  drc_bufs21087 : INVD4BWP7T port map(I => n_948, ZN => framebuffer_buf(114));
  drc_bufs21093 : INVD4BWP7T port map(I => n_954, ZN => framebuffer_buf(113));
  drc_bufs21099 : INVD4BWP7T port map(I => n_960, ZN => framebuffer_buf(112));
  drc_bufs21105 : INVD4BWP7T port map(I => n_966, ZN => framebuffer_buf(41));
  drc_bufs21111 : INVD4BWP7T port map(I => n_972, ZN => framebuffer_buf(107));
  drc_bufs21117 : INVD4BWP7T port map(I => n_978, ZN => framebuffer_buf(108));
  drc_bufs21123 : INVD4BWP7T port map(I => n_984, ZN => framebuffer_buf(42));
  drc_bufs21129 : INVD4BWP7T port map(I => n_990, ZN => framebuffer_buf(109));
  drc_bufs21135 : INVD4BWP7T port map(I => n_996, ZN => framebuffer_buf(110));
  drc_bufs21141 : INVD4BWP7T port map(I => n_1002, ZN => framebuffer_buf(9));
  drc_bufs21147 : INVD4BWP7T port map(I => n_1008, ZN => framebuffer_buf(43));
  drc_bufs21153 : INVD4BWP7T port map(I => n_1014, ZN => framebuffer_buf(111));
  drc_bufs21159 : INVD4BWP7T port map(I => n_1020, ZN => framebuffer_buf(102));
  drc_bufs21165 : INVD4BWP7T port map(I => n_1026, ZN => framebuffer_buf(101));
  drc_bufs21171 : INVD4BWP7T port map(I => n_1032, ZN => framebuffer_buf(100));
  drc_bufs21177 : INVD4BWP7T port map(I => n_1038, ZN => framebuffer_buf(44));
  drc_bufs21183 : INVD4BWP7T port map(I => n_1044, ZN => framebuffer_buf(98));
  drc_bufs21189 : INVD4BWP7T port map(I => n_1050, ZN => framebuffer_buf(97));
  drc_bufs21195 : INVD4BWP7T port map(I => n_1056, ZN => framebuffer_buf(96));
  drc_bufs21201 : INVD4BWP7T port map(I => n_1062, ZN => framebuffer_buf(10));
  drc_bufs21207 : INVD4BWP7T port map(I => n_1068, ZN => framebuffer_buf(94));
  drc_bufs21213 : INVD4BWP7T port map(I => n_1074, ZN => framebuffer_buf(93));
  drc_bufs21219 : INVD4BWP7T port map(I => n_1080, ZN => framebuffer_buf(92));
  drc_bufs21225 : INVD4BWP7T port map(I => n_1086, ZN => framebuffer_buf(45));
  drc_bufs21231 : INVD4BWP7T port map(I => n_1092, ZN => framebuffer_buf(90));
  drc_bufs21237 : INVD4BWP7T port map(I => n_1098, ZN => framebuffer_buf(89));
  drc_bufs21243 : INVD4BWP7T port map(I => n_1104, ZN => framebuffer_buf(88));
  drc_bufs21249 : INVD4BWP7T port map(I => n_1110, ZN => framebuffer_buf(46));
  drc_bufs21255 : INVD4BWP7T port map(I => n_1116, ZN => framebuffer_buf(86));
  drc_bufs21261 : INVD4BWP7T port map(I => n_1122, ZN => framebuffer_buf(85));
  drc_bufs21267 : INVD4BWP7T port map(I => n_1128, ZN => framebuffer_buf(84));
  drc_bufs21273 : INVD4BWP7T port map(I => n_1134, ZN => calc_buf_out(18));
  drc_bufs21279 : INVD4BWP7T port map(I => n_1140, ZN => framebuffer_buf(82));
  drc_bufs21285 : INVD4BWP7T port map(I => n_1146, ZN => framebuffer_buf(81));
  drc_bufs21291 : INVD4BWP7T port map(I => n_1152, ZN => framebuffer_buf(80));
  drc_bufs21297 : INVD4BWP7T port map(I => n_1158, ZN => framebuffer_buf(11));
  drc_bufs21303 : INVD4BWP7T port map(I => n_1164, ZN => framebuffer_buf(78));
  drc_bufs21309 : INVD4BWP7T port map(I => n_1170, ZN => framebuffer_buf(77));
  drc_bufs21315 : INVD4BWP7T port map(I => n_1176, ZN => framebuffer_buf(76));
  drc_bufs21321 : INVD4BWP7T port map(I => n_1182, ZN => framebuffer_buf(47));
  drc_bufs21327 : INVD4BWP7T port map(I => n_1188, ZN => framebuffer_buf(74));
  drc_bufs21333 : INVD4BWP7T port map(I => n_1194, ZN => framebuffer_buf(73));
  drc_bufs21339 : INVD4BWP7T port map(I => n_1200, ZN => framebuffer_buf(72));
  drc_bufs21345 : INVD4BWP7T port map(I => n_1206, ZN => framebuffer_buf(121));
  drc_bufs21351 : INVD4BWP7T port map(I => n_1212, ZN => calc_buf_out(4));
  drc_bufs21357 : INVD4BWP7T port map(I => n_1218, ZN => framebuffer_buf(22));
  drc_bufs21363 : INVD4BWP7T port map(I => n_1224, ZN => framebuffer_buf(68));
  drc_bufs21369 : INVD4BWP7T port map(I => n_1230, ZN => framebuffer_buf(21));
  drc_bufs21375 : INVD4BWP7T port map(I => n_1236, ZN => framebuffer_buf(66));
  drc_bufs21381 : INVD4BWP7T port map(I => n_1242, ZN => framebuffer_buf(20));
  drc_bufs21387 : INVD4BWP7T port map(I => n_1248, ZN => framebuffer_buf(64));
  drc_bufs21393 : INVD4BWP7T port map(I => n_1254, ZN => framebuffer_buf(63));
  drc_bufs21399 : INVD4BWP7T port map(I => n_1260, ZN => framebuffer_buf(62));
  drc_bufs21405 : INVD4BWP7T port map(I => n_1266, ZN => framebuffer_buf(61));
  drc_bufs21411 : INVD4BWP7T port map(I => n_1272, ZN => framebuffer_buf(60));
  drc_bufs21417 : INVD4BWP7T port map(I => n_1278, ZN => framebuffer_buf(59));
  drc_bufs21423 : INVD4BWP7T port map(I => n_1284, ZN => framebuffer_buf(58));
  drc_bufs21429 : INVD4BWP7T port map(I => n_1290, ZN => framebuffer_buf(57));
  drc_bufs21435 : INVD4BWP7T port map(I => n_1296, ZN => framebuffer_buf(56));
  drc_bufs21441 : INVD4BWP7T port map(I => n_1302, ZN => framebuffer_buf(138));
  drc_bufs21447 : INVD4BWP7T port map(I => n_1308, ZN => framebuffer_buf(54));
  drc_bufs21453 : INVD4BWP7T port map(I => n_1314, ZN => framebuffer_buf(53));
  drc_bufs21459 : INVD4BWP7T port map(I => n_1320, ZN => framebuffer_buf(52));
  drc_bufs21465 : INVD4BWP7T port map(I => n_1326, ZN => framebuffer_buf(129));
  drc_bufs21471 : INVD4BWP7T port map(I => n_1332, ZN => framebuffer_buf(48));
  drc_bufs21477 : INVD4BWP7T port map(I => n_1338, ZN => framebuffer_buf(12));
  drc_bufs21483 : INVD4BWP7T port map(I => n_1344, ZN => framebuffer_buf(49));
  drc_bufs21489 : INVD4BWP7T port map(I => n_1350, ZN => framebuffer_buf(50));
  drc_bufs21495 : INVD4BWP7T port map(I => n_1356, ZN => framebuffer_buf(13));
  drc_bufs21501 : INVD4BWP7T port map(I => n_1362, ZN => framebuffer_buf(51));
  drc_bufs21507 : INVD4BWP7T port map(I => n_1368, ZN => framebuffer_buf(14));
  drc_bufs21513 : INVD4BWP7T port map(I => n_1374, ZN => calc_buf_out(19));
  drc_bufs21519 : INVD4BWP7T port map(I => n_1380, ZN => framebuffer_buf(15));
  drc_bufs21525 : INVD4BWP7T port map(I => n_1386, ZN => framebuffer_buf(55));
  drc_bufs21531 : INVD4BWP7T port map(I => n_1392, ZN => framebuffer_buf(137));
  drc_bufs21537 : INVD4BWP7T port map(I => n_1398, ZN => framebuffer_buf(16));
  drc_bufs21543 : INVD4BWP7T port map(I => n_1404, ZN => framebuffer_buf(38));
  drc_bufs21549 : INVD4BWP7T port map(I => n_1410, ZN => framebuffer_buf(99));
  drc_bufs21555 : INVD4BWP7T port map(I => n_1416, ZN => framebuffer_buf(36));
  drc_bufs21561 : INVD4BWP7T port map(I => n_1422, ZN => framebuffer_buf(95));
  drc_bufs21567 : INVD4BWP7T port map(I => n_1428, ZN => framebuffer_buf(34));
  drc_bufs21573 : INVD4BWP7T port map(I => n_1434, ZN => framebuffer_buf(91));
  drc_bufs21579 : INVD4BWP7T port map(I => n_1440, ZN => framebuffer_buf(32));
  drc_bufs21585 : INVD4BWP7T port map(I => n_1446, ZN => framebuffer_buf(87));
  drc_bufs21591 : INVD4BWP7T port map(I => n_1452, ZN => framebuffer_buf(30));
  drc_bufs21597 : INVD4BWP7T port map(I => n_1458, ZN => framebuffer_buf(83));
  drc_bufs21603 : INVD4BWP7T port map(I => n_1464, ZN => framebuffer_buf(28));
  drc_bufs21609 : INVD4BWP7T port map(I => n_1470, ZN => framebuffer_buf(79));
  drc_bufs21615 : INVD4BWP7T port map(I => n_1476, ZN => framebuffer_buf(26));
  drc_bufs21621 : INVD4BWP7T port map(I => n_1482, ZN => framebuffer_buf(75));
  drc_bufs21627 : INVD4BWP7T port map(I => n_1488, ZN => framebuffer_buf(24));
  drc_bufs21633 : INVD4BWP7T port map(I => n_1494, ZN => framebuffer_buf(23));
  drc_bufs21639 : INVD4BWP7T port map(I => n_1500, ZN => calc_buf_out(3));
  drc_bufs21645 : INVD4BWP7T port map(I => n_1506, ZN => calc_buf_out(22));
  drc_bufs21651 : INVD4BWP7T port map(I => n_1512, ZN => calc_buf_out(21));
  drc_bufs21657 : INVD4BWP7T port map(I => n_1518, ZN => framebuffer_buf(19));
  drc_bufs21663 : INVD4BWP7T port map(I => n_1524, ZN => calc_buf_out(20));
  drc_bufs21669 : INVD4BWP7T port map(I => n_1530, ZN => framebuffer_buf(17));
  drc_bufs21675 : INVD4BWP7T port map(I => n_1536, ZN => framebuffer_buf(18));
  drc_bufs21681 : INVD4BWP7T port map(I => n_1542, ZN => framebuffer_buf(71));
  drc_bufs21687 : INVD4BWP7T port map(I => n_1548, ZN => calc_buf_out(10));
  drc_bufs21693 : INVD4BWP7T port map(I => n_1554, ZN => calc_buf_out(2));
  drc_bufs21699 : INVD4BWP7T port map(I => n_1560, ZN => framebuffer_buf(70));
  drc_bufs21705 : INVD4BWP7T port map(I => n_1566, ZN => calc_buf_out(5));
  drc_bufs21711 : INVD4BWP7T port map(I => n_1572, ZN => calc_buf_out(11));
  drc_bufs21717 : INVD4BWP7T port map(I => n_1578, ZN => calc_buf_out(23));
  drc_bufs21723 : INVD4BWP7T port map(I => n_1584, ZN => framebuffer_buf(25));
  drc_bufs21729 : INVD4BWP7T port map(I => n_1590, ZN => calc_buf_out(12));
  drc_bufs21735 : INVD4BWP7T port map(I => n_1596, ZN => framebuffer_buf(37));
  drc_bufs21741 : INVD4BWP7T port map(I => n_1602, ZN => framebuffer_buf(35));
  drc_bufs21747 : INVD4BWP7T port map(I => n_1608, ZN => framebuffer_buf(33));
  drc_bufs21753 : INVD4BWP7T port map(I => n_1614, ZN => framebuffer_buf(31));
  drc_bufs21759 : INVD4BWP7T port map(I => n_1620, ZN => framebuffer_buf(27));
  drc_bufs21765 : INVD4BWP7T port map(I => n_1626, ZN => framebuffer_buf(29));
  drc_bufs21771 : INVD4BWP7T port map(I => n_1632, ZN => calc_buf_out(6));
  drc_bufs21777 : INVD4BWP7T port map(I => n_1638, ZN => calc_buf_out(13));
  drc_bufs21783 : INVD4BWP7T port map(I => n_1644, ZN => calc_buf_out(14));
  drc_bufs21789 : INVD4BWP7T port map(I => n_1650, ZN => framebuffer_buf(1));
  drc_bufs21795 : INVD4BWP7T port map(I => n_1656, ZN => calc_buf_out(9));
  drc_bufs21801 : INVD4BWP7T port map(I => n_1662, ZN => calc_buf_out(16));
  drc_bufs21807 : INVD4BWP7T port map(I => n_1668, ZN => framebuffer_buf(4));
  drc_bufs21813 : INVD4BWP7T port map(I => n_1674, ZN => framebuffer_buf(2));
  drc_bufs21819 : INVD4BWP7T port map(I => n_1680, ZN => framebuffer_buf(6));
  drc_bufs21825 : INVD4BWP7T port map(I => n_1686, ZN => framebuffer_buf(5));
  drc_bufs21831 : INVD4BWP7T port map(I => n_1692, ZN => calc_buf_out(8));
  drc_bufs21837 : INVD4BWP7T port map(I => n_1698, ZN => sqi_address(6));
  drc_bufs21843 : INVD4BWP7T port map(I => n_1704, ZN => framebuffer_buf(7));
  drc_bufs21849 : INVD4BWP7T port map(I => n_1710, ZN => framebuffer_buf(0));
  drc_bufs21855 : INVD4BWP7T port map(I => n_1716, ZN => calc_buf_out(1));
  drc_bufs21861 : INVD4BWP7T port map(I => n_1722, ZN => framebuffer_buf(3));
  drc_bufs21867 : INVD4BWP7T port map(I => n_1728, ZN => sqi_address(2));
  drc_bufs21873 : INVD4BWP7T port map(I => n_1734, ZN => calc_buf_out(17));
  drc_bufs21879 : INVD4BWP7T port map(I => n_1740, ZN => sqi_address(11));
  drc_bufs21885 : INVD4BWP7T port map(I => n_1746, ZN => calc_buf_out(0));
  drc_bufs21891 : INVD4BWP7T port map(I => n_1752, ZN => sqi_address(4));
  drc_bufs21897 : INVD4BWP7T port map(I => n_1758, ZN => sqi_address(1));
  drc_bufs21903 : INVD4BWP7T port map(I => n_1764, ZN => sqi_address(5));
  drc_bufs21909 : INVD4BWP7T port map(I => n_1770, ZN => sqi_address(8));
  counter_reg_6 : DFXD1BWP7T port map(CP => clk, DA => n_537, DB => n_329, SA => counter(6), Q => counter(6), QN => n_2);
  state_reg_2 : DFD1BWP7T port map(CP => clk, D => n_172, Q => state(2), QN => n_6);
  counter_reg_2 : DFD1BWP7T port map(CP => clk, D => n_228, Q => counter(2), QN => n_218);
  state_reg_0 : DFD1BWP7T port map(CP => clk, D => n_547, Q => state(0), QN => n_201);
  state_reg_3 : DFD1BWP7T port map(CP => clk, D => n_409, Q => state(3), QN => n_193);
  counter_reg_4 : DFD1BWP7T port map(CP => clk, D => n_363, Q => counter(4), QN => n_323);
  counter_reg_0 : DFD1BWP7T port map(CP => clk, D => n_236, Q => counter(0), QN => n_233);
  counter_reg_3 : DFD1BWP7T port map(CP => clk, D => n_328, Q => counter(3), QN => n_1);
  counter_reg_5 : DFD1BWP7T port map(CP => clk, D => n_364, Q => counter(5), QN => n_217);
  state_reg_1 : DFD1BWP7T port map(CP => clk, D => n_366, Q => state(1), QN => n_86);
  counter_reg_1 : DFD1BWP7T port map(CP => clk, D => n_1776, Q => counter(1), QN => n_167);
  sqi_address_mid_reg_14 : DFD0BWP7T port map(CP => clk, D => n_531, Q => sqi_address_mid(14), QN => n_618);
  sqi_address_mid_reg_12 : DFD0BWP7T port map(CP => clk, D => n_573, Q => sqi_address_mid(12), QN => n_624);
  sqi_address_mid_reg_7 : DFD0BWP7T port map(CP => clk, D => n_578, Q => sqi_address_mid(7), QN => n_630);
  sqi_address_mid_reg_13 : DFD0BWP7T port map(CP => clk, D => n_570, Q => sqi_address_mid(13), QN => n_636);
  sqi_address_mid_reg_0 : DFD0BWP7T port map(CP => clk, D => n_565, Q => sqi_address_mid(0), QN => n_642);
  sqi_address_mid_reg_3 : DFD0BWP7T port map(CP => clk, D => n_559, Q => sqi_address_mid(3), QN => n_648);
  framebuffer_buf_mid_reg_69 : DFD0BWP7T port map(CP => clk, D => n_335, Q => framebuffer_buf_mid(69), QN => n_654);
  calc_buf_mid_reg_7 : DFD0BWP7T port map(CP => clk, D => n_477, Q => calc_buf_mid(7), QN => n_660);
  calc_buf_mid_reg_15 : DFD0BWP7T port map(CP => clk, D => n_380, Q => calc_buf_mid(15), QN => n_666);
  framebuffer_buf_mid_reg_8 : DFD0BWP7T port map(CP => clk, D => n_426, Q => framebuffer_buf_mid(8), QN => n_672);
  framebuffer_buf_mid_reg_67 : DFD0BWP7T port map(CP => clk, D => n_355, Q => framebuffer_buf_mid(67), QN => n_678);
  framebuffer_buf_mid_reg_39 : DFD0BWP7T port map(CP => clk, D => n_256, Q => framebuffer_buf_mid(39), QN => n_684);
  framebuffer_buf_mid_reg_103 : DFD0BWP7T port map(CP => clk, D => n_411, Q => framebuffer_buf_mid(103), QN => n_690);
  framebuffer_buf_mid_reg_65 : DFD0BWP7T port map(CP => clk, D => n_345, Q => framebuffer_buf_mid(65), QN => n_696);
  framebuffer_buf_mid_reg_157 : DFD0BWP7T port map(CP => clk, D => n_417, Q => framebuffer_buf_mid(157), QN => n_702);
  framebuffer_buf_mid_reg_156 : DFD0BWP7T port map(CP => clk, D => n_420, Q => framebuffer_buf_mid(156), QN => n_708);
  framebuffer_buf_mid_reg_155 : DFD0BWP7T port map(CP => clk, D => n_406, Q => framebuffer_buf_mid(155), QN => n_714);
  framebuffer_buf_mid_reg_154 : DFD0BWP7T port map(CP => clk, D => n_528, Q => framebuffer_buf_mid(154), QN => n_720);
  framebuffer_buf_mid_reg_153 : DFD0BWP7T port map(CP => clk, D => n_400, Q => framebuffer_buf_mid(153), QN => n_726);
  framebuffer_buf_mid_reg_152 : DFD0BWP7T port map(CP => clk, D => n_401, Q => framebuffer_buf_mid(152), QN => n_732);
  framebuffer_buf_mid_reg_151 : DFD0BWP7T port map(CP => clk, D => n_519, Q => framebuffer_buf_mid(151), QN => n_738);
  framebuffer_buf_mid_reg_150 : DFD0BWP7T port map(CP => clk, D => n_521, Q => framebuffer_buf_mid(150), QN => n_744);
  framebuffer_buf_mid_reg_149 : DFD0BWP7T port map(CP => clk, D => n_525, Q => framebuffer_buf_mid(149), QN => n_750);
  framebuffer_buf_mid_reg_148 : DFD0BWP7T port map(CP => clk, D => n_527, Q => framebuffer_buf_mid(148), QN => n_756);
  framebuffer_buf_mid_reg_147 : DFD0BWP7T port map(CP => clk, D => n_274, Q => framebuffer_buf_mid(147), QN => n_762);
  framebuffer_buf_mid_reg_146 : DFD0BWP7T port map(CP => clk, D => n_276, Q => framebuffer_buf_mid(146), QN => n_768);
  framebuffer_buf_mid_reg_145 : DFD0BWP7T port map(CP => clk, D => n_310, Q => framebuffer_buf_mid(145), QN => n_774);
  framebuffer_buf_mid_reg_144 : DFD0BWP7T port map(CP => clk, D => n_275, Q => framebuffer_buf_mid(144), QN => n_780);
  framebuffer_buf_mid_reg_143 : DFD0BWP7T port map(CP => clk, D => n_357, Q => framebuffer_buf_mid(143), QN => n_786);
  framebuffer_buf_mid_reg_142 : DFD0BWP7T port map(CP => clk, D => n_318, Q => framebuffer_buf_mid(142), QN => n_792);
  framebuffer_buf_mid_reg_141 : DFD0BWP7T port map(CP => clk, D => n_321, Q => framebuffer_buf_mid(141), QN => n_798);
  framebuffer_buf_mid_reg_140 : DFD0BWP7T port map(CP => clk, D => n_326, Q => framebuffer_buf_mid(140), QN => n_804);
  framebuffer_buf_mid_reg_139 : DFD0BWP7T port map(CP => clk, D => n_292, Q => framebuffer_buf_mid(139), QN => n_810);
  framebuffer_buf_mid_reg_104 : DFD0BWP7T port map(CP => clk, D => n_490, Q => framebuffer_buf_mid(104), QN => n_816);
  framebuffer_buf_mid_reg_40 : DFD0BWP7T port map(CP => clk, D => n_255, Q => framebuffer_buf_mid(40), QN => n_822);
  framebuffer_buf_mid_reg_136 : DFD0BWP7T port map(CP => clk, D => n_295, Q => framebuffer_buf_mid(136), QN => n_828);
  framebuffer_buf_mid_reg_135 : DFD0BWP7T port map(CP => clk, D => n_481, Q => framebuffer_buf_mid(135), QN => n_834);
  framebuffer_buf_mid_reg_134 : DFD0BWP7T port map(CP => clk, D => n_482, Q => framebuffer_buf_mid(134), QN => n_840);
  framebuffer_buf_mid_reg_133 : DFD0BWP7T port map(CP => clk, D => n_469, Q => framebuffer_buf_mid(133), QN => n_846);
  framebuffer_buf_mid_reg_132 : DFD0BWP7T port map(CP => clk, D => n_471, Q => framebuffer_buf_mid(132), QN => n_852);
  framebuffer_buf_mid_reg_131 : DFD0BWP7T port map(CP => clk, D => n_472, Q => framebuffer_buf_mid(131), QN => n_858);
  framebuffer_buf_mid_reg_130 : DFD0BWP7T port map(CP => clk, D => n_473, Q => framebuffer_buf_mid(130), QN => n_864);
  framebuffer_buf_mid_reg_105 : DFD0BWP7T port map(CP => clk, D => n_489, Q => framebuffer_buf_mid(105), QN => n_870);
  framebuffer_buf_mid_reg_128 : DFD0BWP7T port map(CP => clk, D => n_395, Q => framebuffer_buf_mid(128), QN => n_876);
  framebuffer_buf_mid_reg_127 : DFD0BWP7T port map(CP => clk, D => n_508, Q => framebuffer_buf_mid(127), QN => n_882);
  framebuffer_buf_mid_reg_126 : DFD0BWP7T port map(CP => clk, D => n_509, Q => framebuffer_buf_mid(126), QN => n_888);
  framebuffer_buf_mid_reg_125 : DFD0BWP7T port map(CP => clk, D => n_516, Q => framebuffer_buf_mid(125), QN => n_894);
  framebuffer_buf_mid_reg_124 : DFD0BWP7T port map(CP => clk, D => n_517, Q => framebuffer_buf_mid(124), QN => n_900);
  framebuffer_buf_mid_reg_123 : DFD0BWP7T port map(CP => clk, D => n_290, Q => framebuffer_buf_mid(123), QN => n_906);
  framebuffer_buf_mid_reg_122 : DFD0BWP7T port map(CP => clk, D => n_291, Q => framebuffer_buf_mid(122), QN => n_912);
  framebuffer_buf_mid_reg_106 : DFD0BWP7T port map(CP => clk, D => n_488, Q => framebuffer_buf_mid(106), QN => n_918);
  framebuffer_buf_mid_reg_120 : DFD0BWP7T port map(CP => clk, D => n_281, Q => framebuffer_buf_mid(120), QN => n_924);
  framebuffer_buf_mid_reg_119 : DFD0BWP7T port map(CP => clk, D => n_282, Q => framebuffer_buf_mid(119), QN => n_930);
  framebuffer_buf_mid_reg_118 : DFD0BWP7T port map(CP => clk, D => n_283, Q => framebuffer_buf_mid(118), QN => n_936);
  framebuffer_buf_mid_reg_115 : DFD0BWP7T port map(CP => clk, D => n_305, Q => framebuffer_buf_mid(115), QN => n_942);
  framebuffer_buf_mid_reg_114 : DFD0BWP7T port map(CP => clk, D => n_308, Q => framebuffer_buf_mid(114), QN => n_948);
  framebuffer_buf_mid_reg_113 : DFD0BWP7T port map(CP => clk, D => n_325, Q => framebuffer_buf_mid(113), QN => n_954);
  framebuffer_buf_mid_reg_112 : DFD0BWP7T port map(CP => clk, D => n_302, Q => framebuffer_buf_mid(112), QN => n_960);
  framebuffer_buf_mid_reg_41 : DFD0BWP7T port map(CP => clk, D => n_254, Q => framebuffer_buf_mid(41), QN => n_966);
  framebuffer_buf_mid_reg_107 : DFD0BWP7T port map(CP => clk, D => n_484, Q => framebuffer_buf_mid(107), QN => n_972);
  framebuffer_buf_mid_reg_108 : DFD0BWP7T port map(CP => clk, D => n_497, Q => framebuffer_buf_mid(108), QN => n_978);
  framebuffer_buf_mid_reg_42 : DFD0BWP7T port map(CP => clk, D => n_263, Q => framebuffer_buf_mid(42), QN => n_984);
  framebuffer_buf_mid_reg_109 : DFD0BWP7T port map(CP => clk, D => n_494, Q => framebuffer_buf_mid(109), QN => n_990);
  framebuffer_buf_mid_reg_110 : DFD0BWP7T port map(CP => clk, D => n_304, Q => framebuffer_buf_mid(110), QN => n_996);
  framebuffer_buf_mid_reg_9 : DFD0BWP7T port map(CP => clk, D => n_425, Q => framebuffer_buf_mid(9), QN => n_1002);
  framebuffer_buf_mid_reg_43 : DFD0BWP7T port map(CP => clk, D => n_262, Q => framebuffer_buf_mid(43), QN => n_1008);
  framebuffer_buf_mid_reg_111 : DFD0BWP7T port map(CP => clk, D => n_303, Q => framebuffer_buf_mid(111), QN => n_1014);
  framebuffer_buf_mid_reg_102 : DFD0BWP7T port map(CP => clk, D => n_405, Q => framebuffer_buf_mid(102), QN => n_1020);
  framebuffer_buf_mid_reg_101 : DFD0BWP7T port map(CP => clk, D => n_396, Q => framebuffer_buf_mid(101), QN => n_1026);
  framebuffer_buf_mid_reg_100 : DFD0BWP7T port map(CP => clk, D => n_397, Q => framebuffer_buf_mid(100), QN => n_1032);
  framebuffer_buf_mid_reg_44 : DFD0BWP7T port map(CP => clk, D => n_344, Q => framebuffer_buf_mid(44), QN => n_1038);
  framebuffer_buf_mid_reg_98 : DFD0BWP7T port map(CP => clk, D => n_399, Q => framebuffer_buf_mid(98), QN => n_1044);
  framebuffer_buf_mid_reg_97 : DFD0BWP7T port map(CP => clk, D => n_314, Q => framebuffer_buf_mid(97), QN => n_1050);
  framebuffer_buf_mid_reg_96 : DFD0BWP7T port map(CP => clk, D => n_309, Q => framebuffer_buf_mid(96), QN => n_1056);
  framebuffer_buf_mid_reg_10 : DFD0BWP7T port map(CP => clk, D => n_424, Q => framebuffer_buf_mid(10), QN => n_1062);
  framebuffer_buf_mid_reg_94 : DFD0BWP7T port map(CP => clk, D => n_273, Q => framebuffer_buf_mid(94), QN => n_1068);
  framebuffer_buf_mid_reg_93 : DFD0BWP7T port map(CP => clk, D => n_300, Q => framebuffer_buf_mid(93), QN => n_1074);
  framebuffer_buf_mid_reg_92 : DFD0BWP7T port map(CP => clk, D => n_332, Q => framebuffer_buf_mid(92), QN => n_1080);
  framebuffer_buf_mid_reg_45 : DFD0BWP7T port map(CP => clk, D => n_343, Q => framebuffer_buf_mid(45), QN => n_1086);
  framebuffer_buf_mid_reg_90 : DFD0BWP7T port map(CP => clk, D => n_299, Q => framebuffer_buf_mid(90), QN => n_1092);
  framebuffer_buf_mid_reg_89 : DFD0BWP7T port map(CP => clk, D => n_284, Q => framebuffer_buf_mid(89), QN => n_1098);
  framebuffer_buf_mid_reg_88 : DFD0BWP7T port map(CP => clk, D => n_285, Q => framebuffer_buf_mid(88), QN => n_1104);
  framebuffer_buf_mid_reg_46 : DFD0BWP7T port map(CP => clk, D => n_342, Q => framebuffer_buf_mid(46), QN => n_1110);
  framebuffer_buf_mid_reg_86 : DFD0BWP7T port map(CP => clk, D => n_287, Q => framebuffer_buf_mid(86), QN => n_1116);
  framebuffer_buf_mid_reg_85 : DFD0BWP7T port map(CP => clk, D => n_476, Q => framebuffer_buf_mid(85), QN => n_1122);
  framebuffer_buf_mid_reg_84 : DFD0BWP7T port map(CP => clk, D => n_478, Q => framebuffer_buf_mid(84), QN => n_1128);
  calc_buf_mid_reg_18 : DFD0BWP7T port map(CP => clk, D => n_362, Q => calc_buf_mid(18), QN => n_1134);
  framebuffer_buf_mid_reg_82 : DFD0BWP7T port map(CP => clk, D => n_466, Q => framebuffer_buf_mid(82), QN => n_1140);
  framebuffer_buf_mid_reg_81 : DFD0BWP7T port map(CP => clk, D => n_467, Q => framebuffer_buf_mid(81), QN => n_1146);
  framebuffer_buf_mid_reg_80 : DFD0BWP7T port map(CP => clk, D => n_468, Q => framebuffer_buf_mid(80), QN => n_1152);
  framebuffer_buf_mid_reg_11 : DFD0BWP7T port map(CP => clk, D => n_423, Q => framebuffer_buf_mid(11), QN => n_1158);
  framebuffer_buf_mid_reg_78 : DFD0BWP7T port map(CP => clk, D => n_412, Q => framebuffer_buf_mid(78), QN => n_1164);
  framebuffer_buf_mid_reg_77 : DFD0BWP7T port map(CP => clk, D => n_498, Q => framebuffer_buf_mid(77), QN => n_1170);
  framebuffer_buf_mid_reg_76 : DFD0BWP7T port map(CP => clk, D => n_499, Q => framebuffer_buf_mid(76), QN => n_1176);
  framebuffer_buf_mid_reg_47 : DFD0BWP7T port map(CP => clk, D => n_341, Q => framebuffer_buf_mid(47), QN => n_1182);
  framebuffer_buf_mid_reg_74 : DFD0BWP7T port map(CP => clk, D => n_505, Q => framebuffer_buf_mid(74), QN => n_1188);
  framebuffer_buf_mid_reg_73 : DFD0BWP7T port map(CP => clk, D => n_339, Q => framebuffer_buf_mid(73), QN => n_1194);
  framebuffer_buf_mid_reg_72 : DFD0BWP7T port map(CP => clk, D => n_340, Q => framebuffer_buf_mid(72), QN => n_1200);
  framebuffer_buf_mid_reg_121 : DFD0BWP7T port map(CP => clk, D => n_280, Q => framebuffer_buf_mid(121), QN => n_1206);
  calc_buf_mid_reg_4 : DFD0BWP7T port map(CP => clk, D => n_459, Q => calc_buf_mid(4), QN => n_1212);
  framebuffer_buf_mid_reg_22 : DFD0BWP7T port map(CP => clk, D => n_279, Q => framebuffer_buf_mid(22), QN => n_1218);
  framebuffer_buf_mid_reg_68 : DFD0BWP7T port map(CP => clk, D => n_336, Q => framebuffer_buf_mid(68), QN => n_1224);
  framebuffer_buf_mid_reg_21 : DFD0BWP7T port map(CP => clk, D => n_252, Q => framebuffer_buf_mid(21), QN => n_1230);
  framebuffer_buf_mid_reg_66 : DFD0BWP7T port map(CP => clk, D => n_356, Q => framebuffer_buf_mid(66), QN => n_1236);
  framebuffer_buf_mid_reg_20 : DFD0BWP7T port map(CP => clk, D => n_253, Q => framebuffer_buf_mid(20), QN => n_1242);
  framebuffer_buf_mid_reg_64 : DFD0BWP7T port map(CP => clk, D => n_346, Q => framebuffer_buf_mid(64), QN => n_1248);
  framebuffer_buf_mid_reg_63 : DFD0BWP7T port map(CP => clk, D => n_347, Q => framebuffer_buf_mid(63), QN => n_1254);
  framebuffer_buf_mid_reg_62 : DFD0BWP7T port map(CP => clk, D => n_348, Q => framebuffer_buf_mid(62), QN => n_1260);
  framebuffer_buf_mid_reg_61 : DFD0BWP7T port map(CP => clk, D => n_444, Q => framebuffer_buf_mid(61), QN => n_1266);
  framebuffer_buf_mid_reg_60 : DFD0BWP7T port map(CP => clk, D => n_445, Q => framebuffer_buf_mid(60), QN => n_1272);
  framebuffer_buf_mid_reg_59 : DFD0BWP7T port map(CP => clk, D => n_431, Q => framebuffer_buf_mid(59), QN => n_1278);
  framebuffer_buf_mid_reg_58 : DFD0BWP7T port map(CP => clk, D => n_432, Q => framebuffer_buf_mid(58), QN => n_1284);
  framebuffer_buf_mid_reg_57 : DFD0BWP7T port map(CP => clk, D => n_433, Q => framebuffer_buf_mid(57), QN => n_1290);
  framebuffer_buf_mid_reg_56 : DFD0BWP7T port map(CP => clk, D => n_436, Q => framebuffer_buf_mid(56), QN => n_1296);
  framebuffer_buf_mid_reg_138 : DFD0BWP7T port map(CP => clk, D => n_293, Q => framebuffer_buf_mid(138), QN => n_1302);
  framebuffer_buf_mid_reg_54 : DFD0BWP7T port map(CP => clk, D => n_455, Q => framebuffer_buf_mid(54), QN => n_1308);
  framebuffer_buf_mid_reg_53 : DFD0BWP7T port map(CP => clk, D => n_407, Q => framebuffer_buf_mid(53), QN => n_1314);
  framebuffer_buf_mid_reg_52 : DFD0BWP7T port map(CP => clk, D => n_408, Q => framebuffer_buf_mid(52), QN => n_1320);
  framebuffer_buf_mid_reg_129 : DFD0BWP7T port map(CP => clk, D => n_402, Q => framebuffer_buf_mid(129), QN => n_1326);
  framebuffer_buf_mid_reg_48 : DFD0BWP7T port map(CP => clk, D => n_352, Q => framebuffer_buf_mid(48), QN => n_1332);
  framebuffer_buf_mid_reg_12 : DFD0BWP7T port map(CP => clk, D => n_430, Q => framebuffer_buf_mid(12), QN => n_1338);
  framebuffer_buf_mid_reg_49 : DFD0BWP7T port map(CP => clk, D => n_351, Q => framebuffer_buf_mid(49), QN => n_1344);
  framebuffer_buf_mid_reg_50 : DFD0BWP7T port map(CP => clk, D => n_416, Q => framebuffer_buf_mid(50), QN => n_1350);
  framebuffer_buf_mid_reg_13 : DFD0BWP7T port map(CP => clk, D => n_429, Q => framebuffer_buf_mid(13), QN => n_1356);
  framebuffer_buf_mid_reg_51 : DFD0BWP7T port map(CP => clk, D => n_410, Q => framebuffer_buf_mid(51), QN => n_1362);
  framebuffer_buf_mid_reg_14 : DFD0BWP7T port map(CP => clk, D => n_267, Q => framebuffer_buf_mid(14), QN => n_1368);
  calc_buf_mid_reg_19 : DFD0BWP7T port map(CP => clk, D => n_369, Q => calc_buf_mid(19), QN => n_1374);
  framebuffer_buf_mid_reg_15 : DFD0BWP7T port map(CP => clk, D => n_266, Q => framebuffer_buf_mid(15), QN => n_1380);
  framebuffer_buf_mid_reg_55 : DFD0BWP7T port map(CP => clk, D => n_465, Q => framebuffer_buf_mid(55), QN => n_1386);
  framebuffer_buf_mid_reg_137 : DFD0BWP7T port map(CP => clk, D => n_294, Q => framebuffer_buf_mid(137), QN => n_1392);
  framebuffer_buf_mid_reg_16 : DFD0BWP7T port map(CP => clk, D => n_265, Q => framebuffer_buf_mid(16), QN => n_1398);
  framebuffer_buf_mid_reg_38 : DFD0BWP7T port map(CP => clk, D => n_257, Q => framebuffer_buf_mid(38), QN => n_1404);
  framebuffer_buf_mid_reg_99 : DFD0BWP7T port map(CP => clk, D => n_398, Q => framebuffer_buf_mid(99), QN => n_1410);
  framebuffer_buf_mid_reg_36 : DFD0BWP7T port map(CP => clk, D => n_441, Q => framebuffer_buf_mid(36), QN => n_1416);
  framebuffer_buf_mid_reg_95 : DFD0BWP7T port map(CP => clk, D => n_272, Q => framebuffer_buf_mid(95), QN => n_1422);
  framebuffer_buf_mid_reg_34 : DFD0BWP7T port map(CP => clk, D => n_513, Q => framebuffer_buf_mid(34), QN => n_1428);
  framebuffer_buf_mid_reg_91 : DFD0BWP7T port map(CP => clk, D => n_298, Q => framebuffer_buf_mid(91), QN => n_1434);
  framebuffer_buf_mid_reg_32 : DFD0BWP7T port map(CP => clk, D => n_500, Q => framebuffer_buf_mid(32), QN => n_1440);
  framebuffer_buf_mid_reg_87 : DFD0BWP7T port map(CP => clk, D => n_286, Q => framebuffer_buf_mid(87), QN => n_1446);
  framebuffer_buf_mid_reg_30 : DFD0BWP7T port map(CP => clk, D => n_450, Q => framebuffer_buf_mid(30), QN => n_1452);
  framebuffer_buf_mid_reg_83 : DFD0BWP7T port map(CP => clk, D => n_464, Q => framebuffer_buf_mid(83), QN => n_1458);
  framebuffer_buf_mid_reg_28 : DFD0BWP7T port map(CP => clk, D => n_438, Q => framebuffer_buf_mid(28), QN => n_1464);
  framebuffer_buf_mid_reg_79 : DFD0BWP7T port map(CP => clk, D => n_529, Q => framebuffer_buf_mid(79), QN => n_1470);
  framebuffer_buf_mid_reg_26 : DFD0BWP7T port map(CP => clk, D => n_440, Q => framebuffer_buf_mid(26), QN => n_1476);
  framebuffer_buf_mid_reg_75 : DFD0BWP7T port map(CP => clk, D => n_501, Q => framebuffer_buf_mid(75), QN => n_1482);
  framebuffer_buf_mid_reg_24 : DFD0BWP7T port map(CP => clk, D => n_259, Q => framebuffer_buf_mid(24), QN => n_1488);
  framebuffer_buf_mid_reg_23 : DFD0BWP7T port map(CP => clk, D => n_331, Q => framebuffer_buf_mid(23), QN => n_1494);
  calc_buf_mid_reg_3 : DFD0BWP7T port map(CP => clk, D => n_530, Q => calc_buf_mid(3), QN => n_1500);
  calc_buf_mid_reg_22 : DFD0BWP7T port map(CP => clk, D => n_379, Q => calc_buf_mid(22), QN => n_1506);
  calc_buf_mid_reg_21 : DFD0BWP7T port map(CP => clk, D => n_367, Q => calc_buf_mid(21), QN => n_1512);
  framebuffer_buf_mid_reg_19 : DFD0BWP7T port map(CP => clk, D => n_270, Q => framebuffer_buf_mid(19), QN => n_1518);
  calc_buf_mid_reg_20 : DFD0BWP7T port map(CP => clk, D => n_368, Q => calc_buf_mid(20), QN => n_1524);
  framebuffer_buf_mid_reg_17 : DFD0BWP7T port map(CP => clk, D => n_264, Q => framebuffer_buf_mid(17), QN => n_1530);
  framebuffer_buf_mid_reg_18 : DFD0BWP7T port map(CP => clk, D => n_271, Q => framebuffer_buf_mid(18), QN => n_1536);
  framebuffer_buf_mid_reg_71 : DFD0BWP7T port map(CP => clk, D => n_333, Q => framebuffer_buf_mid(71), QN => n_1542);
  calc_buf_mid_reg_10 : DFD0BWP7T port map(CP => clk, D => n_376, Q => calc_buf_mid(10), QN => n_1548);
  calc_buf_mid_reg_2 : DFD0BWP7T port map(CP => clk, D => n_470, Q => calc_buf_mid(2), QN => n_1554);
  framebuffer_buf_mid_reg_70 : DFD0BWP7T port map(CP => clk, D => n_334, Q => framebuffer_buf_mid(70), QN => n_1560);
  calc_buf_mid_reg_5 : DFD0BWP7T port map(CP => clk, D => n_449, Q => calc_buf_mid(5), QN => n_1566);
  calc_buf_mid_reg_11 : DFD0BWP7T port map(CP => clk, D => n_375, Q => calc_buf_mid(11), QN => n_1572);
  calc_buf_mid_reg_23 : DFD0BWP7T port map(CP => clk, D => n_378, Q => calc_buf_mid(23), QN => n_1578);
  framebuffer_buf_mid_reg_25 : DFD0BWP7T port map(CP => clk, D => n_258, Q => framebuffer_buf_mid(25), QN => n_1584);
  calc_buf_mid_reg_12 : DFD0BWP7T port map(CP => clk, D => n_374, Q => calc_buf_mid(12), QN => n_1590);
  framebuffer_buf_mid_reg_37 : DFD0BWP7T port map(CP => clk, D => n_451, Q => framebuffer_buf_mid(37), QN => n_1596);
  framebuffer_buf_mid_reg_35 : DFD0BWP7T port map(CP => clk, D => n_520, Q => framebuffer_buf_mid(35), QN => n_1602);
  framebuffer_buf_mid_reg_33 : DFD0BWP7T port map(CP => clk, D => n_502, Q => framebuffer_buf_mid(33), QN => n_1608);
  framebuffer_buf_mid_reg_31 : DFD0BWP7T port map(CP => clk, D => n_448, Q => framebuffer_buf_mid(31), QN => n_1614);
  framebuffer_buf_mid_reg_27 : DFD0BWP7T port map(CP => clk, D => n_439, Q => framebuffer_buf_mid(27), QN => n_1620);
  framebuffer_buf_mid_reg_29 : DFD0BWP7T port map(CP => clk, D => n_437, Q => framebuffer_buf_mid(29), QN => n_1626);
  calc_buf_mid_reg_6 : DFD0BWP7T port map(CP => clk, D => n_487, Q => calc_buf_mid(6), QN => n_1632);
  calc_buf_mid_reg_13 : DFD0BWP7T port map(CP => clk, D => n_391, Q => calc_buf_mid(13), QN => n_1638);
  calc_buf_mid_reg_14 : DFD0BWP7T port map(CP => clk, D => n_393, Q => calc_buf_mid(14), QN => n_1644);
  framebuffer_buf_mid_reg_1 : DFD0BWP7T port map(CP => clk, D => n_421, Q => framebuffer_buf_mid(1), QN => n_1650);
  calc_buf_mid_reg_9 : DFD0BWP7T port map(CP => clk, D => n_383, Q => calc_buf_mid(9), QN => n_1656);
  calc_buf_mid_reg_16 : DFD0BWP7T port map(CP => clk, D => n_386, Q => calc_buf_mid(16), QN => n_1662);
  framebuffer_buf_mid_reg_4 : DFD0BWP7T port map(CP => clk, D => n_456, Q => framebuffer_buf_mid(4), QN => n_1668);
  framebuffer_buf_mid_reg_2 : DFD0BWP7T port map(CP => clk, D => n_458, Q => framebuffer_buf_mid(2), QN => n_1674);
  framebuffer_buf_mid_reg_6 : DFD0BWP7T port map(CP => clk, D => n_463, Q => framebuffer_buf_mid(6), QN => n_1680);
  framebuffer_buf_mid_reg_5 : DFD0BWP7T port map(CP => clk, D => n_452, Q => framebuffer_buf_mid(5), QN => n_1686);
  calc_buf_mid_reg_8 : DFD0BWP7T port map(CP => clk, D => n_388, Q => calc_buf_mid(8), QN => n_1692);
  sqi_address_mid_reg_6 : DFD0BWP7T port map(CP => clk, D => n_561, Q => sqi_address_mid(6), QN => n_1698);
  framebuffer_buf_mid_reg_7 : DFD0BWP7T port map(CP => clk, D => n_462, Q => framebuffer_buf_mid(7), QN => n_1704);
  framebuffer_buf_mid_reg_0 : DFD0BWP7T port map(CP => clk, D => n_422, Q => framebuffer_buf_mid(0), QN => n_1710);
  calc_buf_mid_reg_1 : DFD0BWP7T port map(CP => clk, D => n_507, Q => calc_buf_mid(1), QN => n_1716);
  framebuffer_buf_mid_reg_3 : DFD0BWP7T port map(CP => clk, D => n_457, Q => framebuffer_buf_mid(3), QN => n_1722);
  sqi_address_mid_reg_2 : DFD0BWP7T port map(CP => clk, D => n_566, Q => sqi_address_mid(2), QN => n_1728);
  calc_buf_mid_reg_17 : DFD0BWP7T port map(CP => clk, D => n_387, Q => calc_buf_mid(17), QN => n_1734);
  sqi_address_mid_reg_11 : DFD0BWP7T port map(CP => clk, D => n_580, Q => sqi_address_mid(11), QN => n_1740);
  calc_buf_mid_reg_0 : DFD0BWP7T port map(CP => clk, D => n_496, Q => calc_buf_mid(0), QN => n_1746);
  sqi_address_mid_reg_4 : DFD0BWP7T port map(CP => clk, D => n_576, Q => sqi_address_mid(4), QN => n_1752);
  sqi_address_mid_reg_1 : DFD0BWP7T port map(CP => clk, D => n_571, Q => sqi_address_mid(1), QN => n_1758);
  sqi_address_mid_reg_5 : DFD0BWP7T port map(CP => clk, D => n_575, Q => sqi_address_mid(5), QN => n_1764);
  sqi_address_mid_reg_8 : DFD0BWP7T port map(CP => clk, D => n_567, Q => sqi_address_mid(8), QN => n_1770);
  g2 : IND2D1BWP7T port map(A1 => n_141, B1 => n_549, ZN => n_1774);
  g22322 : OR3D1BWP7T port map(A1 => n_373, A2 => n_223, A3 => n_222, Z => n_1775);
  g22323 : AO222D0BWP7T port map(A1 => n_234, A2 => counter(1), B1 => n_188, B2 => n_187, C1 => n_186, C2 => n_185, Z => n_1776);
  tie_0_cell : TIELBWP7T port map(ZN => framebuffer_buf(117));

end synthesised;
