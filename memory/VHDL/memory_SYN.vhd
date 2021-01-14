
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of memory is

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211XD0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component OAI32D0BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; Z : out std_logic);
  end component;

  component OA221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OR3D4BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI33D1BWP7T
    port(A1, A2, A3, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D0BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AN3D1BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component IIND4D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OR2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component OAI33D0BWP7T
    port(A1, A2, A3, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component CKND0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component INR2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component CKND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AN4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; Z : out std_logic);
  end component;

  component AN2D0BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component BUFFD4BWP7T
    port(I : in std_logic; Z : out std_logic);
  end component;

  component INVD2BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INVD4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component DFKCND1BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD1BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFKCND0BWP7T
    port(CP, CN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component DFD0BWP7T
    port(CP, D : in std_logic; Q, QN : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal counter : std_logic_vector(7 downto 0);
  signal i_sqi_address : std_logic_vector(14 downto 0);
  signal state : std_logic_vector(3 downto 0);
  signal i_calc_buf_out : std_logic_vector(23 downto 0);
  signal i_framebuffer_buf : std_logic_vector(157 downto 0);
  signal i_row_buf : std_logic_vector(5 downto 0);
  signal dff_command : std_logic_vector(1 downto 0);
  signal n_0, n_1, n_7, n_14, n_15 : std_logic;
  signal n_16, n_17, n_18, n_19, n_20 : std_logic;
  signal n_21, n_22, n_23, n_24, n_25 : std_logic;
  signal n_26, n_27, n_28, n_29, n_30 : std_logic;
  signal n_32, n_33, n_34, n_35, n_37 : std_logic;
  signal n_38, n_40, n_41, n_42, n_43 : std_logic;
  signal n_44, n_45, n_46, n_47, n_48 : std_logic;
  signal n_49, n_50, n_51, n_52, n_53 : std_logic;
  signal n_54, n_55, n_57, n_58, n_59 : std_logic;
  signal n_60, n_61, n_62, n_63, n_64 : std_logic;
  signal n_65, n_66, n_67, n_68, n_69 : std_logic;
  signal n_70, n_71, n_72, n_73, n_74 : std_logic;
  signal n_75, n_76, n_77, n_78, n_79 : std_logic;
  signal n_80, n_81, n_82, n_83, n_84 : std_logic;
  signal n_85, n_86, n_87, n_88, n_89 : std_logic;
  signal n_90, n_91, n_92, n_93, n_94 : std_logic;
  signal n_95, n_96, n_97, n_98, n_99 : std_logic;
  signal n_100, n_101, n_102, n_103, n_104 : std_logic;
  signal n_105, n_107, n_108, n_109, n_110 : std_logic;
  signal n_111, n_112, n_113, n_114, n_115 : std_logic;
  signal n_116, n_118, n_119, n_120, n_121 : std_logic;
  signal n_122, n_123, n_124, n_125, n_126 : std_logic;
  signal n_127, n_128, n_129, n_130, n_131 : std_logic;
  signal n_132, n_133, n_134, n_135, n_136 : std_logic;
  signal n_137, n_138, n_139, n_140, n_141 : std_logic;
  signal n_142, n_143, n_144, n_145, n_146 : std_logic;
  signal n_147, n_148, n_149, n_150, n_151 : std_logic;
  signal n_152, n_153, n_154, n_155, n_156 : std_logic;
  signal n_157, n_158, n_159, n_160, n_161 : std_logic;
  signal n_162, n_163, n_164, n_165, n_166 : std_logic;
  signal n_167, n_168, n_169, n_170, n_171 : std_logic;
  signal n_172, n_173, n_174, n_175, n_176 : std_logic;
  signal n_177, n_178, n_179, n_180, n_181 : std_logic;
  signal n_182, n_183, n_184, n_185, n_186 : std_logic;
  signal n_187, n_188, n_189, n_190, n_191 : std_logic;
  signal n_192, n_193, n_194, n_195, n_196 : std_logic;
  signal n_197, n_198, n_199, n_200, n_201 : std_logic;
  signal n_202, n_203, n_204, n_205, n_206 : std_logic;
  signal n_207, n_208, n_209, n_210, n_212 : std_logic;
  signal n_213, n_214, n_215, n_216, n_217 : std_logic;
  signal n_218, n_219, n_220, n_221, n_222 : std_logic;
  signal n_223, n_224, n_225, n_226, n_227 : std_logic;
  signal n_228, n_229, n_230, n_231, n_233 : std_logic;
  signal n_234, n_235, n_236, n_237, n_238 : std_logic;
  signal n_239, n_240, n_241, n_242, n_243 : std_logic;
  signal n_244, n_245, n_246, n_247, n_248 : std_logic;
  signal n_249, n_250, n_251, n_252, n_253 : std_logic;
  signal n_254, n_255, n_256, n_257, n_258 : std_logic;
  signal n_259, n_260, n_261, n_262, n_263 : std_logic;
  signal n_264, n_265, n_266, n_267, n_268 : std_logic;
  signal n_269, n_270, n_272, n_273, n_274 : std_logic;
  signal n_275, n_276, n_277, n_278, n_279 : std_logic;
  signal n_280, n_281, n_282, n_283, n_284 : std_logic;
  signal n_285, n_286, n_287, n_288, n_289 : std_logic;
  signal n_290, n_291, n_292, n_293, n_294 : std_logic;
  signal n_295, n_296, n_297, n_298, n_299 : std_logic;
  signal n_300, n_301, n_302, n_303, n_304 : std_logic;
  signal n_305, n_306, n_307, n_308, n_309 : std_logic;
  signal n_310, n_311, n_312, n_313, n_314 : std_logic;
  signal n_315, n_316, n_317, n_318, n_319 : std_logic;
  signal n_320, n_321, n_322, n_323, n_324 : std_logic;
  signal n_325, n_326, n_327, n_328, n_329 : std_logic;
  signal n_330, n_331, n_332, n_333, n_334 : std_logic;
  signal n_335, n_336, n_337, n_338, n_339 : std_logic;
  signal n_340, n_341, n_342, n_343, n_344 : std_logic;
  signal n_345, n_346, n_347, n_348, n_349 : std_logic;
  signal n_350, n_351, n_352, n_353, n_354 : std_logic;
  signal n_355, n_356, n_357, n_358, n_359 : std_logic;
  signal n_360, n_361, n_362, n_363, n_364 : std_logic;
  signal n_365, n_366, n_367, n_368, n_369 : std_logic;
  signal n_370, n_371, n_372, n_373, n_374 : std_logic;
  signal n_375, n_376, n_377, n_378, n_379 : std_logic;
  signal n_380, n_381, n_382, n_383, n_384 : std_logic;
  signal n_385, n_386, n_387, n_388, n_389 : std_logic;
  signal n_390, n_391, n_392, n_393, n_394 : std_logic;
  signal n_395, n_396, n_397, n_398, n_399 : std_logic;
  signal n_400, n_401, n_402, n_403, n_404 : std_logic;
  signal n_405, n_406, n_407, n_408, n_409 : std_logic;
  signal n_410, n_411, n_412, n_413, n_414 : std_logic;
  signal n_415, n_416, n_417, n_418, n_419 : std_logic;
  signal n_420, n_421, n_422, n_423, n_424 : std_logic;
  signal n_425, n_426, n_427, n_428, n_429 : std_logic;
  signal n_430, n_431, n_432, n_433, n_435 : std_logic;
  signal n_436, n_437, n_438, n_439, n_440 : std_logic;
  signal n_441, n_442, n_443, n_444, n_445 : std_logic;
  signal n_446, n_447, n_448, n_449, n_450 : std_logic;
  signal n_451, n_452, n_453, n_454, n_455 : std_logic;
  signal n_456, n_457, n_458, n_459, n_460 : std_logic;
  signal n_461, n_462, n_463, n_464, n_465 : std_logic;
  signal n_466, n_467, n_468, n_469, n_470 : std_logic;
  signal n_471, n_472, n_473, n_474, n_475 : std_logic;
  signal n_476, n_477, n_478, n_479, n_480 : std_logic;
  signal n_481, n_482, n_483, n_484, n_485 : std_logic;
  signal n_486, n_487, n_488, n_489, n_490 : std_logic;
  signal n_491, n_492, n_493, n_494, n_495 : std_logic;
  signal n_496, n_497, n_498, n_499, n_500 : std_logic;
  signal n_501, n_502, n_503, n_511, n_512 : std_logic;
  signal n_513, n_514, n_515, n_516, n_517 : std_logic;
  signal n_518, n_519, n_520, n_521, n_522 : std_logic;
  signal n_523, n_524, n_525, n_526, n_527 : std_logic;
  signal n_528, n_529, n_530, n_531, n_532 : std_logic;
  signal n_533, n_534, n_535, n_536, n_537 : std_logic;
  signal n_538, n_539, n_540, n_541, n_542 : std_logic;
  signal n_543, n_544, n_545, n_546, n_547 : std_logic;
  signal n_548, n_549, n_550, n_551, n_552 : std_logic;
  signal n_553, n_554, n_555, n_556, n_557 : std_logic;
  signal n_558, n_559, n_560, n_561, n_562 : std_logic;
  signal n_563, n_564, n_565, n_566, n_567 : std_logic;
  signal n_568, n_569, n_570, n_571, n_572 : std_logic;
  signal n_573, n_574, n_575, n_576, n_577 : std_logic;
  signal n_578, n_579, n_580, n_581, n_582 : std_logic;
  signal n_583, n_584, n_585, n_586, n_587 : std_logic;
  signal n_588, n_589, n_590, n_591, n_592 : std_logic;
  signal n_593, n_594, n_595, n_596, n_597 : std_logic;
  signal n_598, n_599, n_600, n_601, n_602 : std_logic;
  signal n_603, n_604, n_605, n_606, n_607 : std_logic;
  signal n_608, n_609, n_610, n_611, n_612 : std_logic;
  signal n_613, n_614, n_615, n_616, n_617 : std_logic;
  signal n_618, n_619, n_620, n_621, n_622 : std_logic;
  signal n_623, n_624, n_627, n_628, n_629 : std_logic;
  signal n_630, n_631, n_663, n_666, n_672 : std_logic;
  signal n_678, n_684, n_690, n_696, n_702 : std_logic;
  signal n_708, n_714, n_720, n_726, n_732 : std_logic;
  signal n_738, n_744, n_750, n_756, n_762 : std_logic;
  signal n_768, n_774, n_780, n_786, n_792 : std_logic;
  signal n_798, n_804, n_810, n_816, n_822 : std_logic;
  signal n_828, n_834, n_840, n_846, n_852 : std_logic;
  signal n_858, n_864, n_870, n_876, n_882 : std_logic;
  signal n_888, n_894, n_900, n_906, n_912 : std_logic;
  signal n_918, n_924, n_930, n_936, n_942 : std_logic;
  signal n_948, n_954, n_960, n_966, n_972 : std_logic;
  signal n_978, n_984, n_990, n_996, n_1002 : std_logic;
  signal n_1008, n_1014, n_1020, n_1026, n_1032 : std_logic;
  signal n_1038, n_1044, n_1050, n_1056, n_1062 : std_logic;
  signal n_1068, n_1074, n_1080, n_1086, n_1092 : std_logic;
  signal n_1098, n_1104, n_1110, n_1116, n_1122 : std_logic;
  signal n_1128, n_1134, n_1140, n_1146, n_1152 : std_logic;
  signal n_1158, n_1164, n_1170, n_1176, n_1182 : std_logic;
  signal n_1188, n_1194, n_1200, n_1206, n_1212 : std_logic;
  signal n_1218, n_1224, n_1230, n_1236, n_1242 : std_logic;
  signal n_1248, n_1254, n_1260, n_1266, n_1272 : std_logic;
  signal n_1278, n_1284, n_1290, n_1296, n_1302 : std_logic;
  signal n_1308, n_1314, n_1320, n_1326, n_1332 : std_logic;
  signal n_1338, n_1344, n_1350, n_1356, n_1362 : std_logic;
  signal n_1368, n_1374, n_1380, n_1386, n_1392 : std_logic;
  signal n_1398, n_1404, n_1410, n_1416, n_1422 : std_logic;
  signal n_1428, n_1434, n_1440, n_1446, n_1452 : std_logic;
  signal n_1458, n_1464, n_1470, n_1476, n_1482 : std_logic;
  signal n_1488, n_1494, n_1500, n_1506, n_1512 : std_logic;
  signal n_1518, n_1524, n_1530, n_1536, n_1542 : std_logic;
  signal n_1548, n_1554, n_1560, n_1566, n_1572 : std_logic;
  signal n_1578, n_1584, n_1590, n_1596, n_1602 : std_logic;
  signal n_1608, n_1614, n_1620, n_1626, n_1632 : std_logic;
  signal n_1638, n_1644, n_1650, n_1656, n_1662 : std_logic;
  signal n_1668, n_1674, n_1680, n_1686, n_1692 : std_logic;
  signal n_1698, n_1704, n_1710, n_1716, n_1722 : std_logic;
  signal n_1728, n_1734, n_1740, n_1746, n_1752 : std_logic;
  signal n_1758, n_1764, n_1770, n_1776, n_1782 : std_logic;
  signal n_1788, n_1794, n_1800, n_1806, n_1810 : std_logic;
  signal n_1811 : std_logic;

begin

  framebuffer_buf(116) <= framebuffer_buf(117);
  counter_reg_7 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_630, Q => counter(7));
  i_sqi_address_reg_7 : DFKCNQD1BWP7T port map(CP => clk, CN => n_1, D => n_629, Q => i_sqi_address(7));
  counter_reg_6 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_627, Q => counter(6));
  g26953 : IOA21D1BWP7T port map(A1 => n_621, A2 => counter(7), B => n_223, ZN => n_630);
  i_sqi_address_reg_10 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_624, Q => i_sqi_address(10));
  i_sqi_address_reg_11 : DFQD1BWP7T port map(CP => clk, D => n_622, Q => i_sqi_address(11));
  g26972 : OAI221D0BWP7T port map(A1 => n_570, A2 => n_267, B1 => n_71, B2 => n_285, C => n_619, ZN => n_629);
  g26947 : AOI31D0BWP7T port map(A1 => n_596, A2 => n_269, A3 => n_229, B => reset, ZN => n_628);
  g26971 : OAI31D0BWP7T port map(A1 => counter(6), A2 => n_591, A3 => n_590, B => n_616, ZN => n_627);
  i_sqi_address_reg_0 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_607, Q => i_sqi_address(0));
  g26970 : OAI211D1BWP7T port map(A1 => n_1811, A2 => n_116, B => n_587, C => n_536, ZN => n_624);
  g26954 : AO221D0BWP7T port map(A1 => n_583, A2 => i_sqi_address(8), B1 => n_595, B2 => n_77, C => n_593, Z => n_623);
  g26973 : AOI31D0BWP7T port map(A1 => n_589, A2 => n_517, A3 => n_277, B => reset, ZN => n_622);
  g27071 : OAI21D0BWP7T port map(A1 => state(3), A2 => counter(6), B => n_609, ZN => n_621);
  g27068 : ND3D0BWP7T port map(A1 => n_594, A2 => n_54, A3 => n_1, ZN => n_620);
  g27069 : AOI211D0BWP7T port map(A1 => n_529, A2 => n_236, B => n_568, C => n_495, ZN => n_619);
  g27067 : ND2D0BWP7T port map(A1 => n_588, A2 => n_1, ZN => n_618);
  g27158 : OAI211D1BWP7T port map(A1 => n_99, A2 => n_201, B => n_571, C => n_233, ZN => n_617);
  g27072 : ND2D1BWP7T port map(A1 => n_608, A2 => counter(6), ZN => n_616);
  g27073 : OAI21D0BWP7T port map(A1 => n_284, A2 => n_584, B => n_586, ZN => n_615);
  g27180 : OAI21D0BWP7T port map(A1 => n_418, A2 => n_611, B => n_567, ZN => n_614);
  g27171 : AO22D0BWP7T port map(A1 => n_605, A2 => i_calc_buf_out(0), B1 => sqi_data_in(0), B2 => n_604, Z => n_613);
  g27156 : OAI31D0BWP7T port map(A1 => n_281, A2 => n_611, A3 => n_534, B => n_577, ZN => n_612);
  g27155 : OAI31D0BWP7T port map(A1 => n_421, A2 => n_611, A3 => n_206, B => n_569, ZN => n_610);
  g27151 : CKND1BWP7T port map(I => n_608, ZN => n_609);
  g26969 : AO211D0BWP7T port map(A1 => n_197, A2 => y(0), B => n_553, C => n_585, Z => n_607);
  g27181 : AO22D0BWP7T port map(A1 => n_605, A2 => i_calc_buf_out(1), B1 => sqi_data_in(1), B2 => n_604, Z => n_606);
  g27182 : MOAI22D0BWP7T port map(A1 => n_601, A2 => n_555, B1 => n_605, B2 => i_calc_buf_out(6), ZN => n_603);
  g27183 : MOAI22D0BWP7T port map(A1 => n_601, A2 => n_557, B1 => n_605, B2 => i_calc_buf_out(7), ZN => n_602);
  g27184 : MOAI22D0BWP7T port map(A1 => n_601, A2 => n_565, B1 => n_605, B2 => i_calc_buf_out(4), ZN => n_600);
  g27185 : MOAI22D0BWP7T port map(A1 => n_601, A2 => n_562, B1 => n_605, B2 => i_calc_buf_out(3), ZN => n_599);
  g27186 : MOAI22D0BWP7T port map(A1 => n_601, A2 => n_550, B1 => n_605, B2 => i_calc_buf_out(5), ZN => n_598);
  g27187 : MOAI22D0BWP7T port map(A1 => n_601, A2 => n_559, B1 => n_605, B2 => i_calc_buf_out(2), ZN => n_597);
  g27070 : AOI211D0BWP7T port map(A1 => n_70, A2 => n_595, B => n_533, C => n_178, ZN => n_596);
  g27207 : AOI211XD0BWP7T port map(A1 => n_68, A2 => n_245, B => n_552, C => n_69, ZN => n_594);
  g27076 : MOAI22D0BWP7T port map(A1 => n_493, A2 => n_73, B1 => n_549, B2 => counter(2), ZN => n_593);
  g27077 : OAI22D0BWP7T port map(A1 => n_580, A2 => n_591, B1 => n_590, B2 => counter(5), ZN => n_592);
  g27157 : AOI31D0BWP7T port map(A1 => n_497, A2 => n_266, A3 => n_546, B => n_537, ZN => n_589);
  g27159 : NR4D0BWP7T port map(A1 => n_472, A2 => n_226, A3 => n_61, A4 => n_162, ZN => n_588);
  g27160 : AOI211XD0BWP7T port map(A1 => n_225, A2 => counter(0), B => n_264, C => n_494, ZN => n_587);
  g27189 : AOI22D0BWP7T port map(A1 => n_585, A2 => n_584, B1 => n_583, B2 => i_sqi_address(1), ZN => n_586);
  g27074 : AO221D0BWP7T port map(A1 => n_287, A2 => y(3), B1 => n_583, B2 => i_sqi_address(3), C => n_535, Z => n_582);
  g27075 : OAI222D0BWP7T port map(A1 => n_574, A2 => n_224, B1 => n_341, B2 => n_578, C1 => state(3), C2 => n_516, ZN => n_581);
  g27168 : OAI21D0BWP7T port map(A1 => state(3), A2 => counter(5), B => n_580, ZN => n_608);
  g27154 : OAI21D0BWP7T port map(A1 => n_578, A2 => counter(2), B => n_361, ZN => n_579);
  g27220 : AOI22D0BWP7T port map(A1 => n_288, A2 => y(4), B1 => n_583, B2 => i_sqi_address(4), ZN => n_577);
  g27066 : AOI31D0BWP7T port map(A1 => n_300, A2 => n_200, A3 => n_572, B => reset, ZN => n_576);
  g27188 : OAI22D0BWP7T port map(A1 => n_574, A2 => n_228, B1 => n_107, B2 => counter(3), ZN => n_575);
  g27199 : ND2D1BWP7T port map(A1 => n_498, A2 => n_572, ZN => n_573);
  g27204 : IAO21D0BWP7T port map(A1 => n_570, A2 => n_179, B => n_422, ZN => n_571);
  g27209 : AOI22D0BWP7T port map(A1 => n_283, A2 => y(5), B1 => n_583, B2 => i_sqi_address(5), ZN => n_569);
  g27178 : MOAI22D0BWP7T port map(A1 => n_306, A2 => n_548, B1 => n_583, B2 => i_sqi_address(7), ZN => n_568);
  g27219 : AOI22D0BWP7T port map(A1 => n_286, A2 => y(2), B1 => n_583, B2 => i_sqi_address(2), ZN => n_567);
  g27269 : MOAI22D0BWP7T port map(A1 => n_563, A2 => n_565, B1 => n_561, B2 => i_framebuffer_buf(82), ZN => n_566);
  g27268 : MOAI22D0BWP7T port map(A1 => n_563, A2 => n_562, B1 => n_561, B2 => i_framebuffer_buf(81), ZN => n_564);
  g27267 : MOAI22D0BWP7T port map(A1 => n_563, A2 => n_559, B1 => n_561, B2 => i_framebuffer_buf(80), ZN => n_560);
  g27260 : MOAI22D0BWP7T port map(A1 => n_563, A2 => n_557, B1 => n_561, B2 => i_framebuffer_buf(85), ZN => n_558);
  g27259 : MOAI22D0BWP7T port map(A1 => n_563, A2 => n_555, B1 => n_561, B2 => i_framebuffer_buf(84), ZN => n_556);
  g27153 : IND4D0BWP7T port map(A1 => n_256, B1 => n_471, B2 => n_161, B3 => n_227, ZN => n_554);
  g27152 : OAI31D0BWP7T port map(A1 => y(0), A2 => n_95, A3 => n_121, B => n_280, ZN => n_553);
  g27407 : OAI31D0BWP7T port map(A1 => n_104, A2 => n_135, A3 => n_208, B => n_290, ZN => n_552);
  g27391 : ND2D1BWP7T port map(A1 => n_291, A2 => n_255, ZN => n_605);
  g27270 : MOAI22D0BWP7T port map(A1 => n_563, A2 => n_550, B1 => n_561, B2 => i_framebuffer_buf(83), ZN => n_551);
  g27210 : OAI32D0BWP7T port map(A1 => y(7), A2 => n_548, A3 => n_231, B1 => n_261, B2 => n_532, ZN => n_549);
  g27179 : AO222D0BWP7T port map(A1 => n_530, A2 => counter(1), B1 => n_528, B2 => n_149, C1 => n_546, C2 => n_278, Z => n_547);
  g27299 : MOAI22D0BWP7T port map(A1 => n_543, A2 => n_555, B1 => n_542, B2 => i_framebuffer_buf(36), ZN => n_545);
  g27300 : MOAI22D0BWP7T port map(A1 => n_543, A2 => n_557, B1 => n_542, B2 => i_framebuffer_buf(37), ZN => n_544);
  g27301 : MOAI22D0BWP7T port map(A1 => n_543, A2 => n_559, B1 => n_542, B2 => i_framebuffer_buf(32), ZN => n_541);
  g27302 : MOAI22D0BWP7T port map(A1 => n_543, A2 => n_562, B1 => n_542, B2 => i_framebuffer_buf(33), ZN => n_540);
  g27303 : MOAI22D0BWP7T port map(A1 => n_543, A2 => n_565, B1 => n_542, B2 => i_framebuffer_buf(34), ZN => n_539);
  g27304 : MOAI22D0BWP7T port map(A1 => n_543, A2 => n_550, B1 => n_542, B2 => i_framebuffer_buf(35), ZN => n_538);
  g27323 : OAI22D0BWP7T port map(A1 => n_259, A2 => n_333, B1 => n_170, B2 => n_176, ZN => n_537);
  g27201 : OA221D0BWP7T port map(A1 => n_33, A2 => n_572, B1 => n_167, B2 => n_97, C => n_270, Z => n_536);
  g27202 : AOI211D0BWP7T port map(A1 => n_534, A2 => n_85, B => n_611, C => y(3), ZN => n_535);
  g27205 : OAI221D0BWP7T port map(A1 => n_532, A2 => n_157, B1 => counter(3), B2 => n_210, C => n_265, ZN => n_533);
  g27208 : AO222D0BWP7T port map(A1 => n_530, A2 => counter(0), B1 => n_529, B2 => n_237, C1 => n_528, C2 => n_190, Z => n_531);
  g27273 : OA21D0BWP7T port map(A1 => n_548, A2 => state(3), B => n_574, Z => n_580);
  g27221 : MOAI22D0BWP7T port map(A1 => n_520, A2 => n_555, B1 => n_519, B2 => i_framebuffer_buf(78), ZN => n_527);
  g27374 : MOAI22D0BWP7T port map(A1 => n_349, A2 => n_524, B1 => n_523, B2 => i_framebuffer_buf(47), ZN => n_526);
  g27373 : MOAI22D0BWP7T port map(A1 => n_353, A2 => n_524, B1 => n_523, B2 => i_framebuffer_buf(46), ZN => n_525);
  g27375 : MOAI22D0BWP7T port map(A1 => n_346, A2 => n_524, B1 => n_523, B2 => i_framebuffer_buf(48), ZN => n_522);
  g27222 : MOAI22D0BWP7T port map(A1 => n_520, A2 => n_557, B1 => n_519, B2 => i_framebuffer_buf(79), ZN => n_521);
  g27376 : MOAI22D0BWP7T port map(A1 => n_344, A2 => n_524, B1 => n_523, B2 => i_framebuffer_buf(49), ZN => n_518);
  g27372 : MAOI22D0BWP7T port map(A1 => n_279, A2 => i_sqi_address(11), B1 => n_492, B2 => n_516, ZN => n_517);
  g27371 : MOAI22D0BWP7T port map(A1 => n_356, A2 => n_524, B1 => n_523, B2 => i_framebuffer_buf(45), ZN => n_515);
  g27378 : AO21D0BWP7T port map(A1 => n_203, A2 => i_sqi_address(14), B => n_114, Z => n_514);
  g27223 : MOAI22D0BWP7T port map(A1 => n_489, A2 => n_555, B1 => n_488, B2 => i_framebuffer_buf(102), ZN => n_513);
  g27225 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_555, B1 => n_501, B2 => i_framebuffer_buf(128), ZN => n_512);
  g27296 : MOAI22D0BWP7T port map(A1 => n_1810, A2 => n_562, B1 => n_433, B2 => i_framebuffer_buf(137), ZN => n_511);
  g27379 : OR3D4BWP7T port map(A1 => n_289, A2 => n_83, A3 => n_209, Z => single);
  g27172 : ND2D4BWP7T port map(A1 => n_238, A2 => n_138, ZN => sqi_data_out(6));
  g27176 : ND2D4BWP7T port map(A1 => n_239, A2 => n_144, ZN => sqi_data_out(5));
  g27173 : ND2D4BWP7T port map(A1 => n_240, A2 => n_139, ZN => sqi_data_out(4));
  g27174 : ND2D4BWP7T port map(A1 => n_241, A2 => n_137, ZN => sqi_data_out(3));
  g27177 : ND2D4BWP7T port map(A1 => n_244, A2 => n_142, ZN => sqi_data_out(2));
  g27175 : ND2D4BWP7T port map(A1 => n_247, A2 => n_140, ZN => sqi_data_out(1));
  g27226 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_557, B1 => n_501, B2 => i_framebuffer_buf(129), ZN => n_503);
  g27227 : MOAI22D0BWP7T port map(A1 => n_520, A2 => n_559, B1 => n_519, B2 => i_framebuffer_buf(74), ZN => n_500);
  g27228 : MOAI22D0BWP7T port map(A1 => n_520, A2 => n_562, B1 => n_519, B2 => i_framebuffer_buf(75), ZN => n_499);
  g27395 : AOI32D1BWP7T port map(A1 => n_497, A2 => n_276, A3 => n_260, B1 => n_234, B2 => i_sqi_address(13), ZN => n_498);
  g27229 : MOAI22D0BWP7T port map(A1 => n_520, A2 => n_565, B1 => n_519, B2 => i_framebuffer_buf(76), ZN => n_496);
  g27396 : AOI31D0BWP7T port map(A1 => counter(0), A2 => y(6), A3 => y(7), B => n_262, ZN => n_495);
  g27399 : OAI32D1BWP7T port map(A1 => n_305, A2 => n_355, A3 => n_493, B1 => n_524, B2 => n_492, ZN => n_494);
  g27230 : MOAI22D0BWP7T port map(A1 => n_520, A2 => n_550, B1 => n_519, B2 => i_framebuffer_buf(77), ZN => n_491);
  g27231 : MOAI22D0BWP7T port map(A1 => n_489, A2 => n_559, B1 => n_488, B2 => i_framebuffer_buf(98), ZN => n_490);
  g27232 : MOAI22D0BWP7T port map(A1 => n_489, A2 => n_562, B1 => n_488, B2 => i_framebuffer_buf(99), ZN => n_487);
  g27233 : MOAI22D0BWP7T port map(A1 => n_489, A2 => n_565, B1 => n_488, B2 => i_framebuffer_buf(100), ZN => n_486);
  g27234 : MOAI22D0BWP7T port map(A1 => n_489, A2 => n_550, B1 => n_488, B2 => i_framebuffer_buf(101), ZN => n_485);
  g27235 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_559, B1 => n_501, B2 => i_framebuffer_buf(124), ZN => n_484);
  g27236 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_562, B1 => n_501, B2 => i_framebuffer_buf(125), ZN => n_483);
  g27237 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_565, B1 => n_501, B2 => i_framebuffer_buf(126), ZN => n_482);
  g27238 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_550, B1 => n_501, B2 => i_framebuffer_buf(127), ZN => n_481);
  g27239 : MOAI22D0BWP7T port map(A1 => n_478, A2 => n_555, B1 => n_477, B2 => i_framebuffer_buf(30), ZN => n_480);
  g27240 : MOAI22D0BWP7T port map(A1 => n_478, A2 => n_557, B1 => n_477, B2 => i_framebuffer_buf(31), ZN => n_479);
  g27241 : MOAI22D0BWP7T port map(A1 => n_474, A2 => n_555, B1 => n_473, B2 => i_framebuffer_buf(152), ZN => n_476);
  g27242 : MOAI22D0BWP7T port map(A1 => n_474, A2 => n_557, B1 => n_473, B2 => i_framebuffer_buf(153), ZN => n_475);
  g27439 : OAI221D0BWP7T port map(A1 => n_471, A2 => state(2), B1 => ce, B2 => n_23, C => n_246, ZN => n_472);
  g27243 : MOAI22D0BWP7T port map(A1 => n_478, A2 => n_559, B1 => n_477, B2 => i_framebuffer_buf(26), ZN => n_470);
  g27244 : MOAI22D0BWP7T port map(A1 => n_478, A2 => n_562, B1 => n_477, B2 => i_framebuffer_buf(27), ZN => n_469);
  g27245 : MOAI22D0BWP7T port map(A1 => n_478, A2 => n_565, B1 => n_477, B2 => i_framebuffer_buf(28), ZN => n_468);
  g27246 : MOAI22D0BWP7T port map(A1 => n_478, A2 => n_550, B1 => n_477, B2 => i_framebuffer_buf(29), ZN => n_467);
  g27247 : MOAI22D0BWP7T port map(A1 => n_474, A2 => n_559, B1 => n_473, B2 => i_framebuffer_buf(148), ZN => n_466);
  g27249 : MOAI22D0BWP7T port map(A1 => n_474, A2 => n_565, B1 => n_473, B2 => i_framebuffer_buf(150), ZN => n_465);
  g27248 : MOAI22D0BWP7T port map(A1 => n_474, A2 => n_562, B1 => n_473, B2 => i_framebuffer_buf(149), ZN => n_464);
  g27250 : MOAI22D0BWP7T port map(A1 => n_474, A2 => n_550, B1 => n_473, B2 => i_framebuffer_buf(151), ZN => n_463);
  g27251 : MOAI22D0BWP7T port map(A1 => n_460, A2 => n_555, B1 => n_459, B2 => i_framebuffer_buf(108), ZN => n_462);
  g27252 : MOAI22D0BWP7T port map(A1 => n_460, A2 => n_557, B1 => n_459, B2 => i_framebuffer_buf(109), ZN => n_461);
  g27253 : MOAI22D0BWP7T port map(A1 => n_456, A2 => n_555, B1 => n_455, B2 => i_framebuffer_buf(54), ZN => n_458);
  g27254 : MOAI22D0BWP7T port map(A1 => n_456, A2 => n_557, B1 => n_455, B2 => i_framebuffer_buf(55), ZN => n_457);
  g27255 : MOAI22D0BWP7T port map(A1 => n_460, A2 => n_559, B1 => n_459, B2 => i_framebuffer_buf(104), ZN => n_454);
  g27256 : MOAI22D0BWP7T port map(A1 => n_460, A2 => n_562, B1 => n_459, B2 => i_framebuffer_buf(105), ZN => n_453);
  g27257 : MOAI22D0BWP7T port map(A1 => n_460, A2 => n_565, B1 => n_459, B2 => i_framebuffer_buf(106), ZN => n_452);
  g27258 : MOAI22D0BWP7T port map(A1 => n_460, A2 => n_550, B1 => n_459, B2 => i_framebuffer_buf(107), ZN => n_451);
  g27261 : MOAI22D0BWP7T port map(A1 => n_448, A2 => n_555, B1 => n_447, B2 => i_framebuffer_buf(134), ZN => n_450);
  g27262 : MOAI22D0BWP7T port map(A1 => n_448, A2 => n_557, B1 => n_447, B2 => i_framebuffer_buf(135), ZN => n_449);
  g27263 : MOAI22D0BWP7T port map(A1 => n_456, A2 => n_559, B1 => n_455, B2 => i_framebuffer_buf(50), ZN => n_446);
  g27264 : MOAI22D0BWP7T port map(A1 => n_456, A2 => n_562, B1 => n_455, B2 => i_framebuffer_buf(51), ZN => n_445);
  g27265 : MOAI22D0BWP7T port map(A1 => n_456, A2 => n_565, B1 => n_455, B2 => i_framebuffer_buf(52), ZN => n_444);
  g27266 : MOAI22D0BWP7T port map(A1 => n_456, A2 => n_550, B1 => n_455, B2 => i_framebuffer_buf(53), ZN => n_443);
  g27224 : MOAI22D0BWP7T port map(A1 => n_489, A2 => n_557, B1 => n_488, B2 => i_framebuffer_buf(103), ZN => n_442);
  g27271 : MOAI22D0BWP7T port map(A1 => n_448, A2 => n_559, B1 => n_447, B2 => i_framebuffer_buf(130), ZN => n_441);
  g27272 : MOAI22D0BWP7T port map(A1 => n_448, A2 => n_562, B1 => n_447, B2 => i_framebuffer_buf(131), ZN => n_440);
  g27283 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_555, B1 => n_436, B2 => i_framebuffer_buf(90), ZN => n_439);
  g27284 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_557, B1 => n_436, B2 => i_framebuffer_buf(91), ZN => n_438);
  g27285 : MOAI22D0BWP7T port map(A1 => n_1810, A2 => n_555, B1 => n_433, B2 => i_framebuffer_buf(140), ZN => n_435);
  g27286 : MOAI22D0BWP7T port map(A1 => n_1810, A2 => n_557, B1 => n_433, B2 => i_framebuffer_buf(141), ZN => n_432);
  g27287 : MOAI22D0BWP7T port map(A1 => n_429, A2 => n_559, B1 => n_428, B2 => i_framebuffer_buf(8), ZN => n_431);
  g27288 : MOAI22D0BWP7T port map(A1 => n_429, A2 => n_562, B1 => n_428, B2 => i_framebuffer_buf(9), ZN => n_430);
  g27289 : MOAI22D0BWP7T port map(A1 => n_429, A2 => n_565, B1 => n_428, B2 => i_framebuffer_buf(10), ZN => n_427);
  g27290 : MOAI22D0BWP7T port map(A1 => n_429, A2 => n_550, B1 => n_428, B2 => i_framebuffer_buf(11), ZN => n_426);
  g27291 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_559, B1 => n_436, B2 => i_framebuffer_buf(86), ZN => n_425);
  g27292 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_562, B1 => n_436, B2 => i_framebuffer_buf(87), ZN => n_424);
  g27293 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_565, B1 => n_436, B2 => i_framebuffer_buf(88), ZN => n_423);
  g27380 : NR4D0BWP7T port map(A1 => n_204, A2 => n_611, A3 => n_421, A4 => y(6), ZN => n_422);
  g27294 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_550, B1 => n_436, B2 => i_framebuffer_buf(89), ZN => n_420);
  g27295 : MOAI22D0BWP7T port map(A1 => n_1810, A2 => n_559, B1 => n_433, B2 => i_framebuffer_buf(136), ZN => n_419);
  g27386 : AOI211XD0BWP7T port map(A1 => n_418, A2 => n_87, B => n_120, C => y(0), ZN => n_585);
  g27297 : MOAI22D0BWP7T port map(A1 => n_1810, A2 => n_565, B1 => n_433, B2 => i_framebuffer_buf(138), ZN => n_417);
  g27298 : MOAI22D0BWP7T port map(A1 => n_1810, A2 => n_550, B1 => n_433, B2 => i_framebuffer_buf(139), ZN => n_416);
  g27305 : MOAI22D0BWP7T port map(A1 => n_413, A2 => n_555, B1 => n_412, B2 => i_framebuffer_buf(42), ZN => n_415);
  g27306 : MOAI22D0BWP7T port map(A1 => n_413, A2 => n_557, B1 => n_412, B2 => i_framebuffer_buf(43), ZN => n_414);
  g27307 : MOAI22D0BWP7T port map(A1 => n_409, A2 => n_555, B1 => n_408, B2 => i_framebuffer_buf(66), ZN => n_411);
  g27308 : MOAI22D0BWP7T port map(A1 => n_409, A2 => n_557, B1 => n_408, B2 => i_framebuffer_buf(67), ZN => n_410);
  g27309 : MOAI22D0BWP7T port map(A1 => n_413, A2 => n_559, B1 => n_412, B2 => i_framebuffer_buf(38), ZN => n_407);
  g27310 : MOAI22D0BWP7T port map(A1 => n_413, A2 => n_562, B1 => n_412, B2 => i_framebuffer_buf(39), ZN => n_406);
  g27311 : MOAI22D0BWP7T port map(A1 => n_413, A2 => n_565, B1 => n_412, B2 => i_framebuffer_buf(40), ZN => n_405);
  g27190 : MOAI22D0BWP7T port map(A1 => n_429, A2 => n_557, B1 => n_428, B2 => i_framebuffer_buf(13), ZN => n_404);
  g27312 : MOAI22D0BWP7T port map(A1 => n_413, A2 => n_550, B1 => n_412, B2 => i_framebuffer_buf(41), ZN => n_403);
  g27313 : MOAI22D0BWP7T port map(A1 => n_409, A2 => n_559, B1 => n_408, B2 => i_framebuffer_buf(62), ZN => n_402);
  g27314 : MOAI22D0BWP7T port map(A1 => n_409, A2 => n_562, B1 => n_408, B2 => i_framebuffer_buf(63), ZN => n_401);
  g27191 : MOAI22D0BWP7T port map(A1 => n_429, A2 => n_555, B1 => n_428, B2 => i_framebuffer_buf(12), ZN => n_400);
  g27192 : MOAI22D0BWP7T port map(A1 => n_395, A2 => n_550, B1 => n_394, B2 => i_framebuffer_buf(113), ZN => n_399);
  g27315 : MOAI22D0BWP7T port map(A1 => n_409, A2 => n_565, B1 => n_408, B2 => i_framebuffer_buf(64), ZN => n_398);
  g27316 : MOAI22D0BWP7T port map(A1 => n_409, A2 => n_550, B1 => n_408, B2 => i_framebuffer_buf(65), ZN => n_397);
  g27193 : MOAI22D0BWP7T port map(A1 => n_395, A2 => n_565, B1 => n_394, B2 => i_framebuffer_buf(112), ZN => n_396);
  g27317 : MOAI22D0BWP7T port map(A1 => n_391, A2 => n_555, B1 => n_390, B2 => i_framebuffer_buf(18), ZN => n_393);
  g27318 : MOAI22D0BWP7T port map(A1 => n_391, A2 => n_557, B1 => n_390, B2 => i_framebuffer_buf(19), ZN => n_392);
  g27194 : MOAI22D0BWP7T port map(A1 => n_395, A2 => n_562, B1 => n_394, B2 => i_framebuffer_buf(111), ZN => n_389);
  g27319 : MOAI22D0BWP7T port map(A1 => n_391, A2 => n_559, B1 => n_390, B2 => i_framebuffer_buf(14), ZN => n_388);
  g27320 : MOAI22D0BWP7T port map(A1 => n_391, A2 => n_562, B1 => n_390, B2 => i_framebuffer_buf(15), ZN => n_387);
  g27195 : MOAI22D0BWP7T port map(A1 => n_395, A2 => n_559, B1 => n_394, B2 => i_framebuffer_buf(110), ZN => n_386);
  g27321 : MOAI22D0BWP7T port map(A1 => n_391, A2 => n_565, B1 => n_390, B2 => i_framebuffer_buf(16), ZN => n_385);
  g27322 : MOAI22D0BWP7T port map(A1 => n_391, A2 => n_550, B1 => n_390, B2 => i_framebuffer_buf(17), ZN => n_384);
  g27196 : MOAI22D0BWP7T port map(A1 => n_395, A2 => n_557, B1 => n_394, B2 => i_framebuffer_buf(115), ZN => n_383);
  g27324 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_555, B1 => n_378, B2 => i_framebuffer_buf(60), ZN => n_382);
  g27197 : MOAI22D0BWP7T port map(A1 => n_395, A2 => n_555, B1 => n_394, B2 => i_framebuffer_buf(114), ZN => n_381);
  g27325 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_557, B1 => n_378, B2 => i_framebuffer_buf(61), ZN => n_380);
  g27326 : MOAI22D0BWP7T port map(A1 => n_374, A2 => n_559, B1 => n_373, B2 => i_framebuffer_buf(154), ZN => n_377);
  g27198 : MOAI22D0BWP7T port map(A1 => n_448, A2 => n_550, B1 => n_447, B2 => i_framebuffer_buf(133), ZN => n_376);
  g27327 : MOAI22D0BWP7T port map(A1 => n_374, A2 => n_562, B1 => n_373, B2 => i_framebuffer_buf(155), ZN => n_375);
  g27328 : MOAI22D0BWP7T port map(A1 => n_374, A2 => n_565, B1 => n_373, B2 => i_framebuffer_buf(156), ZN => n_372);
  g27329 : MOAI22D0BWP7T port map(A1 => n_374, A2 => n_550, B1 => n_373, B2 => i_framebuffer_buf(157), ZN => n_371);
  g27330 : MOAI22D0BWP7T port map(A1 => n_368, A2 => n_555, B1 => n_367, B2 => i_framebuffer_buf(6), ZN => n_370);
  g27331 : MOAI22D0BWP7T port map(A1 => n_368, A2 => n_557, B1 => n_367, B2 => i_framebuffer_buf(7), ZN => n_369);
  g27332 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_559, B1 => n_378, B2 => i_framebuffer_buf(56), ZN => n_366);
  g27333 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_562, B1 => n_378, B2 => i_framebuffer_buf(57), ZN => n_365);
  g27334 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_565, B1 => n_378, B2 => i_framebuffer_buf(58), ZN => n_364);
  g27335 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_550, B1 => n_378, B2 => i_framebuffer_buf(59), ZN => n_363);
  g27336 : MOAI22D0BWP7T port map(A1 => n_368, A2 => n_559, B1 => n_367, B2 => i_framebuffer_buf(2), ZN => n_362);
  g27203 : OAI21D0BWP7T port map(A1 => n_530, A2 => n_152, B => counter(2), ZN => n_361);
  g27337 : MOAI22D0BWP7T port map(A1 => n_368, A2 => n_562, B1 => n_367, B2 => i_framebuffer_buf(3), ZN => n_360);
  g27338 : MOAI22D0BWP7T port map(A1 => n_368, A2 => n_565, B1 => n_367, B2 => i_framebuffer_buf(4), ZN => n_359);
  g27339 : MOAI22D0BWP7T port map(A1 => n_368, A2 => n_550, B1 => n_367, B2 => i_framebuffer_buf(5), ZN => n_358);
  g27340 : MOAI22D0BWP7T port map(A1 => n_356, A2 => n_355, B1 => n_352, B2 => i_framebuffer_buf(69), ZN => n_357);
  g27341 : MOAI22D0BWP7T port map(A1 => n_353, A2 => n_355, B1 => n_352, B2 => i_framebuffer_buf(70), ZN => n_354);
  g27206 : MOAI22D0BWP7T port map(A1 => n_448, A2 => n_565, B1 => n_447, B2 => i_framebuffer_buf(132), ZN => n_351);
  g27342 : MOAI22D0BWP7T port map(A1 => n_349, A2 => n_355, B1 => n_352, B2 => i_framebuffer_buf(71), ZN => n_350);
  g27343 : MOAI22D0BWP7T port map(A1 => n_342, A2 => n_355, B1 => n_352, B2 => i_framebuffer_buf(68), ZN => n_348);
  g27344 : MOAI22D0BWP7T port map(A1 => n_346, A2 => n_355, B1 => n_352, B2 => i_framebuffer_buf(72), ZN => n_347);
  g27345 : MOAI22D0BWP7T port map(A1 => n_344, A2 => n_355, B1 => n_352, B2 => i_framebuffer_buf(73), ZN => n_345);
  g27346 : MOAI22D0BWP7T port map(A1 => n_342, A2 => n_341, B1 => n_339, B2 => i_framebuffer_buf(92), ZN => n_343);
  g27347 : MOAI22D0BWP7T port map(A1 => n_356, A2 => n_341, B1 => n_339, B2 => i_framebuffer_buf(93), ZN => n_340);
  g27348 : MOAI22D0BWP7T port map(A1 => n_353, A2 => n_341, B1 => n_339, B2 => i_framebuffer_buf(94), ZN => n_338);
  g27349 : MOAI22D0BWP7T port map(A1 => n_349, A2 => n_341, B1 => n_339, B2 => i_framebuffer_buf(95), ZN => n_337);
  g27350 : MOAI22D0BWP7T port map(A1 => n_346, A2 => n_341, B1 => n_339, B2 => i_framebuffer_buf(96), ZN => n_336);
  g27351 : MOAI22D0BWP7T port map(A1 => n_344, A2 => n_341, B1 => n_339, B2 => i_framebuffer_buf(97), ZN => n_335);
  g27352 : MOAI22D0BWP7T port map(A1 => n_342, A2 => n_333, B1 => n_331, B2 => i_framebuffer_buf(118), ZN => n_334);
  g27353 : MOAI22D0BWP7T port map(A1 => n_356, A2 => n_333, B1 => n_331, B2 => i_framebuffer_buf(119), ZN => n_332);
  g27354 : MOAI22D0BWP7T port map(A1 => n_353, A2 => n_333, B1 => n_331, B2 => i_framebuffer_buf(120), ZN => n_330);
  g27355 : MOAI22D0BWP7T port map(A1 => n_349, A2 => n_333, B1 => n_331, B2 => i_framebuffer_buf(121), ZN => n_329);
  g27356 : MOAI22D0BWP7T port map(A1 => n_346, A2 => n_333, B1 => n_331, B2 => i_framebuffer_buf(122), ZN => n_328);
  g27357 : MOAI22D0BWP7T port map(A1 => n_344, A2 => n_333, B1 => n_331, B2 => i_framebuffer_buf(123), ZN => n_327);
  g27358 : MOAI22D0BWP7T port map(A1 => n_342, A2 => n_323, B1 => n_322, B2 => i_framebuffer_buf(142), ZN => n_326);
  g27214 : AO22D0BWP7T port map(A1 => n_367, A2 => i_framebuffer_buf(0), B1 => sqi_data_in(0), B2 => n_315, Z => n_325);
  g27359 : MOAI22D0BWP7T port map(A1 => n_356, A2 => n_323, B1 => n_322, B2 => i_framebuffer_buf(143), ZN => n_324);
  g27360 : MOAI22D0BWP7T port map(A1 => n_353, A2 => n_323, B1 => n_322, B2 => i_framebuffer_buf(144), ZN => n_321);
  g27361 : MOAI22D0BWP7T port map(A1 => n_349, A2 => n_323, B1 => n_322, B2 => i_framebuffer_buf(145), ZN => n_320);
  g27362 : MOAI22D0BWP7T port map(A1 => n_346, A2 => n_323, B1 => n_322, B2 => i_framebuffer_buf(146), ZN => n_319);
  g27363 : MOAI22D0BWP7T port map(A1 => n_344, A2 => n_323, B1 => n_322, B2 => i_framebuffer_buf(147), ZN => n_318);
  g27364 : MOAI22D0BWP7T port map(A1 => n_342, A2 => n_313, B1 => n_312, B2 => i_framebuffer_buf(20), ZN => n_317);
  g27216 : AO22D0BWP7T port map(A1 => n_367, A2 => i_framebuffer_buf(1), B1 => sqi_data_in(1), B2 => n_315, Z => n_316);
  g27365 : MOAI22D0BWP7T port map(A1 => n_356, A2 => n_313, B1 => n_312, B2 => i_framebuffer_buf(21), ZN => n_314);
  g27366 : MOAI22D0BWP7T port map(A1 => n_353, A2 => n_313, B1 => n_312, B2 => i_framebuffer_buf(22), ZN => n_311);
  g27367 : MOAI22D0BWP7T port map(A1 => n_349, A2 => n_313, B1 => n_312, B2 => i_framebuffer_buf(23), ZN => n_310);
  g27368 : MOAI22D0BWP7T port map(A1 => n_346, A2 => n_313, B1 => n_312, B2 => i_framebuffer_buf(24), ZN => n_309);
  g27369 : MOAI22D0BWP7T port map(A1 => n_344, A2 => n_313, B1 => n_312, B2 => i_framebuffer_buf(25), ZN => n_308);
  g27370 : MOAI22D0BWP7T port map(A1 => n_342, A2 => n_524, B1 => n_523, B2 => i_framebuffer_buf(44), ZN => n_307);
  g27377 : AOI221D0BWP7T port map(A1 => n_258, A2 => n_169, B1 => n_257, B2 => n_305, C => n_263, ZN => n_306);
  g27403 : MOAI22D0BWP7T port map(A1 => n_302, A2 => n_559, B1 => n_301, B2 => i_calc_buf_out(10), ZN => n_304);
  g27402 : MOAI22D0BWP7T port map(A1 => n_302, A2 => n_557, B1 => n_301, B2 => i_calc_buf_out(15), ZN => n_303);
  g27393 : AOI22D0BWP7T port map(A1 => n_185, A2 => i_sqi_address(12), B1 => n_497, B2 => n_81, ZN => n_300);
  g27394 : ND4D0BWP7T port map(A1 => n_174, A2 => n_154, A3 => n_663, A4 => n_1, ZN => n_299);
  g27397 : AO22D0BWP7T port map(A1 => n_301, A2 => i_calc_buf_out(8), B1 => sqi_data_in(0), B2 => n_296, Z => n_298);
  g27398 : AO22D0BWP7T port map(A1 => n_301, A2 => i_calc_buf_out(9), B1 => sqi_data_in(1), B2 => n_296, Z => n_297);
  g27401 : MOAI22D0BWP7T port map(A1 => n_302, A2 => n_555, B1 => n_301, B2 => i_calc_buf_out(14), ZN => n_295);
  i_row_buf_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_188, Q => i_row_buf(1));
  i_row_buf_reg_0 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_183, Q => i_row_buf(0));
  g27404 : MOAI22D0BWP7T port map(A1 => n_302, A2 => n_562, B1 => n_301, B2 => i_calc_buf_out(11), ZN => n_294);
  g27405 : MOAI22D0BWP7T port map(A1 => n_302, A2 => n_565, B1 => n_301, B2 => i_calc_buf_out(12), ZN => n_293);
  g27406 : MOAI22D0BWP7T port map(A1 => n_302, A2 => n_550, B1 => n_301, B2 => i_calc_buf_out(13), ZN => n_292);
  g27437 : NR4D0BWP7T port map(A1 => n_173, A2 => n_45, A3 => n_55, A4 => n_105, ZN => n_291);
  g27440 : AOI221D0BWP7T port map(A1 => n_134, A2 => sqi_finished, B1 => n_289, B2 => n_118, C => n_60, ZN => n_290);
  g27442 : AO21D0BWP7T port map(A1 => n_282, A2 => y(3), B => n_287, Z => n_288);
  g27443 : OAI21D0BWP7T port map(A1 => n_285, A2 => n_584, B => n_284, ZN => n_286);
  g27446 : AO21D0BWP7T port map(A1 => n_282, A2 => n_281, B => n_287, Z => n_283);
  g27200 : OAI21D0BWP7T port map(A1 => n_279, A2 => n_76, B => i_sqi_address(0), ZN => n_280);
  g27388 : AOI21D0BWP7T port map(A1 => n_82, A2 => n_278, B => n_530, ZN => n_574);
  g27456 : AOI22D0BWP7T port map(A1 => n_230, A2 => n_78, B1 => n_268, B2 => n_276, ZN => n_277);
  g27455 : MOAI22D0BWP7T port map(A1 => n_273, A2 => n_557, B1 => n_272, B2 => i_calc_buf_out(23), ZN => n_275);
  g27454 : MOAI22D0BWP7T port map(A1 => n_273, A2 => n_555, B1 => n_272, B2 => i_calc_buf_out(22), ZN => n_274);
  g27469 : OR3D4BWP7T port map(A1 => n_132, A2 => n_79, A3 => n_136, Z => sqi_rw);
  g27392 : MAOI22D0BWP7T port map(A1 => n_583, A2 => i_sqi_address(10), B1 => n_493, B2 => n_130, ZN => n_270);
  g27400 : AOI33D1BWP7T port map(A1 => n_268, A2 => n_42, A3 => n_267, B1 => n_497, B2 => n_266, B3 => n_177, ZN => n_269);
  g27408 : OAI21D0BWP7T port map(A1 => n_202, A2 => n_86, B => i_sqi_address(9), ZN => n_265);
  g27445 : IAO21D0BWP7T port map(A1 => n_268, A2 => n_263, B => n_323, ZN => n_264);
  g27448 : AO21D0BWP7T port map(A1 => n_261, A2 => n_260, B => n_180, Z => n_262);
  g27449 : AOI21D0BWP7T port map(A1 => n_258, A2 => counter(0), B => n_257, ZN => n_259);
  g27450 : OAI222D0BWP7T port map(A1 => n_124, A2 => n_207, B1 => n_29, B2 => n_119, C1 => n_255, C2 => n_122, ZN => n_256);
  g27452 : AO22D0BWP7T port map(A1 => n_272, A2 => i_calc_buf_out(16), B1 => sqi_data_in(0), B2 => n_252, Z => n_254);
  g27453 : AO22D0BWP7T port map(A1 => n_272, A2 => i_calc_buf_out(17), B1 => sqi_data_in(1), B2 => n_252, Z => n_253);
  i_row_buf_reg_2 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_159, Q => i_row_buf(2));
  dff_command_reg_0 : DFQD1BWP7T port map(CP => clk, D => n_187, Q => dff_command(0));
  dff_command_reg_1 : DFQD1BWP7T port map(CP => clk, D => n_186, Q => dff_command(1));
  g27457 : MOAI22D0BWP7T port map(A1 => n_273, A2 => n_559, B1 => n_272, B2 => i_calc_buf_out(18), ZN => n_251);
  g27458 : MOAI22D0BWP7T port map(A1 => n_273, A2 => n_562, B1 => n_272, B2 => i_calc_buf_out(19), ZN => n_250);
  g27459 : MOAI22D0BWP7T port map(A1 => n_273, A2 => n_565, B1 => n_272, B2 => i_calc_buf_out(20), ZN => n_249);
  g27460 : MOAI22D0BWP7T port map(A1 => n_273, A2 => n_550, B1 => n_272, B2 => i_calc_buf_out(21), ZN => n_248);
  g27218 : AOI22D0BWP7T port map(A1 => n_243, A2 => calc_buf_in(0), B1 => n_242, B2 => i_row_buf(1), ZN => n_247);
  g27480 : AOI31D0BWP7T port map(A1 => n_245, A2 => state(1), A3 => sqi_finished, B => n_171, ZN => n_246);
  g27217 : AOI22D0BWP7T port map(A1 => n_243, A2 => calc_buf_in(1), B1 => n_242, B2 => i_row_buf(2), ZN => n_244);
  g27215 : AOI22D0BWP7T port map(A1 => n_243, A2 => calc_buf_in(2), B1 => n_242, B2 => i_row_buf(3), ZN => n_241);
  g27213 : AOI22D0BWP7T port map(A1 => n_243, A2 => calc_buf_in(3), B1 => n_242, B2 => i_row_buf(4), ZN => n_240);
  g27212 : AOI22D0BWP7T port map(A1 => n_243, A2 => calc_buf_in(4), B1 => n_242, B2 => i_row_buf(5), ZN => n_239);
  g27211 : AOI22D0BWP7T port map(A1 => n_243, A2 => calc_buf_in(5), B1 => n_242, B2 => calc_buf_in(0), ZN => n_238);
  i_row_buf_reg_3 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_165, Q => i_row_buf(3));
  i_row_buf_reg_5 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_160, Q => i_row_buf(5));
  i_row_buf_reg_4 : DFKCNQD1BWP7T port map(CP => clk, CN => n_631, D => n_166, Q => i_row_buf(4));
  g27470 : AOI211XD0BWP7T port map(A1 => n_237, A2 => y(5), B => n_236, C => n_205, ZN => n_534);
  g27510 : ND2D1BWP7T port map(A1 => n_235, A2 => n_266, ZN => n_563);
  g27537 : ND2D1BWP7T port map(A1 => n_235, A2 => n_199, ZN => n_543);
  g27465 : OAI211D1BWP7T port map(A1 => state(3), A2 => n_32, B => n_156, C => n_184, ZN => n_234);
  g27409 : ND2D1BWP7T port map(A1 => n_583, A2 => i_sqi_address(6), ZN => n_233);
  g27523 : ND2D4BWP7T port map(A1 => n_145, A2 => n_89, ZN => sqi_data_out(7));
  g27464 : AOI21D0BWP7T port map(A1 => n_257, A2 => y(6), B => n_230, ZN => n_231);
  g27451 : AOI32D0BWP7T port map(A1 => n_198, A2 => n_192, A3 => n_305, B1 => n_263, B2 => n_228, ZN => n_229);
  g27447 : AOI32D1BWP7T port map(A1 => n_112, A2 => n_278, A3 => sqi_finished, B1 => n_226, B2 => n_1, ZN => n_227);
  g27441 : AN3D1BWP7T port map(A1 => n_258, A2 => n_96, A3 => n_224, Z => n_225);
  g27438 : IIND4D0BWP7T port map(A1 => n_590, A2 => counter(7), B1 => counter(6), B2 => counter(5), ZN => n_223);
  g27410 : ND2D1BWP7T port map(A1 => n_221, A2 => n_214, ZN => n_373);
  g27462 : ND2D1BWP7T port map(A1 => n_163, A2 => n_151, ZN => n_530);
  g27419 : ND2D1BWP7T port map(A1 => n_219, A2 => n_220, ZN => n_394);
  g27420 : ND2D1BWP7T port map(A1 => n_222, A2 => n_218, ZN => n_339);
  g27421 : ND2D1BWP7T port map(A1 => n_222, A2 => n_217, ZN => n_322);
  g27422 : ND2D1BWP7T port map(A1 => n_222, A2 => n_216, ZN => n_312);
  g27423 : ND2D1BWP7T port map(A1 => n_215, A2 => n_212, ZN => n_455);
  g27424 : ND2D1BWP7T port map(A1 => n_221, A2 => n_220, ZN => n_459);
  g27425 : ND2D1BWP7T port map(A1 => n_219, A2 => n_218, ZN => n_436);
  g27426 : ND2D1BWP7T port map(A1 => n_219, A2 => n_217, ZN => n_433);
  g27427 : ND2D1BWP7T port map(A1 => n_219, A2 => n_216, ZN => n_390);
  g27428 : ND2D1BWP7T port map(A1 => n_215, A2 => n_217, ZN => n_501);
  g27429 : ND2D1BWP7T port map(A1 => n_221, A2 => n_218, ZN => n_561);
  g27430 : ND2D1BWP7T port map(A1 => n_221, A2 => n_217, ZN => n_447);
  g27431 : ND2D1BWP7T port map(A1 => n_221, A2 => n_216, ZN => n_428);
  g27432 : ND2D1BWP7T port map(A1 => n_215, A2 => n_218, ZN => n_519);
  g27433 : ND2D1BWP7T port map(A1 => n_215, A2 => n_220, ZN => n_488);
  g27434 : ND2D1BWP7T port map(A1 => n_215, A2 => n_214, ZN => n_473);
  g27417 : ND2D1BWP7T port map(A1 => n_222, A2 => n_213, ZN => n_523);
  g27416 : ND2D1BWP7T port map(A1 => n_219, A2 => n_213, ZN => n_412);
  g27415 : ND2D1BWP7T port map(A1 => n_221, A2 => n_213, ZN => n_542);
  g27414 : ND2D1BWP7T port map(A1 => n_219, A2 => n_212, ZN => n_408);
  g27413 : ND2D1BWP7T port map(A1 => n_221, A2 => n_212, ZN => n_378);
  g27418 : ND2D1BWP7T port map(A1 => n_222, A2 => n_220, ZN => n_331);
  g27412 : ND2D1BWP7T port map(A1 => n_222, A2 => n_212, ZN => n_352);
  g27411 : ND2D1BWP7T port map(A1 => n_215, A2 => n_213, ZN => n_477);
  g27435 : ND2D1BWP7T port map(A1 => n_215, A2 => n_216, ZN => n_367);
  g27522 : ND2D4BWP7T port map(A1 => n_141, A2 => n_88, ZN => sqi_data_out(0));
  g27468 : OAI211D1BWP7T port map(A1 => y(6), A2 => counter(2), B => n_257, C => n_267, ZN => n_210);
  g27466 : OAI221D0BWP7T port map(A1 => n_208, A2 => n_207, B1 => n_109, B2 => n_91, C => n_92, ZN => n_209);
  g27531 : NR2D0BWP7T port map(A1 => n_236, A2 => n_205, ZN => n_206);
  g27528 : AOI21D0BWP7T port map(A1 => n_237, A2 => y(7), B => n_236, ZN => n_204);
  g27482 : AO21D0BWP7T port map(A1 => n_548, A2 => n_278, B => n_202, Z => n_203);
  g27479 : MAOI22D0BWP7T port map(A1 => n_230, A2 => y(6), B1 => n_493, B2 => y(6), ZN => n_201);
  g27481 : AOI21D0BWP7T port map(A1 => n_257, A2 => n_199, B => n_158, ZN => n_200);
  g27492 : AOI21D0BWP7T port map(A1 => n_595, A2 => counter(1), B => n_198, ZN => n_492);
  g27471 : NR2XD0BWP7T port map(A1 => n_258, A2 => n_230, ZN => n_532);
  g27472 : AOI21D0BWP7T port map(A1 => n_282, A2 => n_40, B => n_155, ZN => n_570);
  g27532 : AOI21D0BWP7T port map(A1 => n_237, A2 => n_168, B => n_236, ZN => n_418);
  g27473 : AOI21D0BWP7T port map(A1 => n_282, A2 => y(0), B => n_197, ZN => n_284);
  g27474 : AO21D0BWP7T port map(A1 => n_282, A2 => n_115, B => n_197, Z => n_287);
  g27500 : ND2D1BWP7T port map(A1 => n_191, A2 => counter(0), ZN => n_374);
  g27509 : OR2D1BWP7T port map(A1 => n_195, A2 => n_333, Z => n_489);
  g27511 : OR2D1BWP7T port map(A1 => n_194, A2 => n_323, Z => n_448);
  g27512 : ND2D1BWP7T port map(A1 => n_196, A2 => sqi_data_in(6), ZN => n_346);
  g27513 : ND2D1BWP7T port map(A1 => n_196, A2 => sqi_data_in(7), ZN => n_344);
  g27514 : ND2D1BWP7T port map(A1 => n_196, A2 => sqi_data_in(4), ZN => n_353);
  g27515 : ND2D1BWP7T port map(A1 => n_196, A2 => sqi_data_in(2), ZN => n_342);
  g27516 : ND2D1BWP7T port map(A1 => n_196, A2 => sqi_data_in(3), ZN => n_356);
  g27517 : OR2D1BWP7T port map(A1 => n_195, A2 => n_323, Z => n_502);
  g27506 : OR2D1BWP7T port map(A1 => n_194, A2 => n_333, Z => n_460);
  g27505 : OR2D1BWP7T port map(A1 => n_195, A2 => n_524, Z => n_478);
  g27504 : OR2D1BWP7T port map(A1 => n_195, A2 => n_341, Z => n_520);
  g27534 : ND2D1BWP7T port map(A1 => n_193, A2 => n_199, ZN => n_413);
  g27535 : ND2D1BWP7T port map(A1 => n_193, A2 => n_192, ZN => n_409);
  g27538 : ND2D1BWP7T port map(A1 => n_193, A2 => n_108, ZN => n_395);
  g27539 : ND2D1BWP7T port map(A1 => n_193, A2 => n_266, ZN => n_437);
  g27503 : ND2D1BWP7T port map(A1 => n_191, A2 => n_190, ZN => n_474);
  g27502 : ND2D1BWP7T port map(A1 => n_196, A2 => sqi_data_in(5), ZN => n_349);
  g27507 : ND2D1BWP7T port map(A1 => n_189, A2 => counter(0), ZN => n_379);
  g27508 : ND2D1BWP7T port map(A1 => n_189, A2 => n_190, ZN => n_456);
  g27489 : AO22D0BWP7T port map(A1 => n_182, A2 => sqi_data_in(1), B1 => i_row_buf(1), B2 => n_181, Z => n_188);
  g27444 : MOAI22D0BWP7T port map(A1 => n_103, A2 => reset, B1 => dff_command(0), B2 => reset, ZN => n_187);
  g27436 : MOAI22D0BWP7T port map(A1 => n_102, A2 => reset, B1 => dff_command(1), B2 => reset, ZN => n_186);
  g27467 : ND2D0BWP7T port map(A1 => n_175, A2 => n_184, ZN => n_185);
  g27488 : AO22D0BWP7T port map(A1 => n_182, A2 => sqi_data_in(0), B1 => i_row_buf(0), B2 => n_181, Z => n_183);
  g27485 : IAO21D0BWP7T port map(A1 => n_493, A2 => n_179, B => n_595, ZN => n_180);
  g27486 : AOI211XD0BWP7T port map(A1 => n_14, A2 => n_177, B => n_153, C => n_176, ZN => n_178);
  g27461 : OAI211D1BWP7T port map(A1 => n_19, A2 => n_216, B => n_175, C => n_98, ZN => n_279);
  g27477 : OAI211D1BWP7T port map(A1 => state(3), A2 => n_128, B => n_148, C => n_147, ZN => n_301);
  g27524 : AOI222D0BWP7T port map(A1 => n_80, A2 => sqi_finished, B1 => n_25, B2 => n_0, C1 => n_172, C2 => n_123, ZN => n_174);
  g27519 : OAI22D0BWP7T port map(A1 => n_125, A2 => state(3), B1 => n_172, B2 => n_110, ZN => n_173);
  g27518 : OAI22D0BWP7T port map(A1 => n_208, A2 => n_35, B1 => n_84, B2 => sqi_finished, ZN => n_171);
  g27525 : AOI31D0BWP7T port map(A1 => n_169, A2 => n_278, A3 => i_sqi_address(11), B => n_198, ZN => n_170);
  g27570 : INVD0BWP7T port map(I => n_194, ZN => n_235);
  g27544 : INVD0BWP7T port map(I => n_601, ZN => n_604);
  g27545 : INVD0BWP7T port map(I => n_368, ZN => n_315);
  g27546 : INVD0BWP7T port map(I => n_302, ZN => n_296);
  g27495 : NR2D1BWP7T port map(A1 => n_611, A2 => n_168, ZN => n_529);
  g27541 : INVD0BWP7T port map(I => n_230, ZN => n_167);
  g27483 : MOAI22D0BWP7T port map(A1 => n_164, A2 => n_565, B1 => n_181, B2 => i_row_buf(4), ZN => n_166);
  g27484 : MOAI22D0BWP7T port map(A1 => n_164, A2 => n_562, B1 => n_181, B2 => i_row_buf(3), ZN => n_165);
  g27487 : NR4D0BWP7T port map(A1 => n_66, A2 => n_289, A3 => n_162, A4 => n_52, ZN => n_163);
  g27527 : AOI32D1BWP7T port map(A1 => n_133, A2 => state(0), A3 => state(2), B1 => n_67, B2 => state(3), ZN => n_161);
  g27490 : MOAI22D0BWP7T port map(A1 => n_164, A2 => n_550, B1 => n_181, B2 => i_row_buf(5), ZN => n_160);
  g27491 : MOAI22D0BWP7T port map(A1 => n_164, A2 => n_559, B1 => n_181, B2 => i_row_buf(2), ZN => n_159);
  g27530 : AOI21D0BWP7T port map(A1 => n_524, A2 => n_157, B => n_493, ZN => n_158);
  g27496 : ND2D1BWP7T port map(A1 => n_146, A2 => n_156, ZN => n_202);
  g27582 : INR2XD0BWP7T port map(A1 => n_131, B1 => n_113, ZN => n_191);
  g27498 : IND2D1BWP7T port map(A1 => n_155, B1 => n_154, ZN => n_197);
  g27497 : NR2D0BWP7T port map(A1 => n_493, A2 => counter(1), ZN => n_268);
  g27499 : NR2D1BWP7T port map(A1 => n_153, A2 => n_179, ZN => n_258);
  g27475 : NR2XD0BWP7T port map(A1 => n_150, A2 => n_152, ZN => n_222);
  g27463 : OAI211D1BWP7T port map(A1 => n_151, A2 => n_24, B => n_48, C => n_93, ZN => n_243);
  g27493 : IAO21D0BWP7T port map(A1 => n_546, A2 => state(3), B => n_150, ZN => n_219);
  g27543 : INVD1BWP7T port map(I => n_252, ZN => n_273);
  g27494 : IAO21D0BWP7T port map(A1 => n_149, A2 => state(3), B => n_150, ZN => n_221);
  g27476 : IAO21D0BWP7T port map(A1 => n_129, A2 => state(3), B => n_150, ZN => n_215);
  g27540 : OAI211D1BWP7T port map(A1 => state(3), A2 => n_127, B => n_148, C => n_147, ZN => n_272);
  g27478 : ND2D1BWP7T port map(A1 => n_175, A2 => n_146, ZN => n_583);
  g27550 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(7), ZN => n_145);
  g27552 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(5), ZN => n_144);
  g27553 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(2), ZN => n_142);
  g27554 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(0), ZN => n_141);
  g27555 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(1), ZN => n_140);
  g27551 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(4), ZN => n_139);
  g27549 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(6), ZN => n_138);
  g27548 : ND2D1BWP7T port map(A1 => n_143, A2 => edit_buf_in(3), ZN => n_137);
  g27577 : AO211D0BWP7T port map(A1 => n_245, A2 => n_135, B => n_64, C => n_16, Z => n_136);
  g27572 : MOAI22D0BWP7T port map(A1 => n_151, A2 => state(3), B1 => n_133, B2 => n_132, ZN => n_134);
  g27571 : INVD0BWP7T port map(I => n_282, ZN => n_285);
  g27579 : INR2XD0BWP7T port map(A1 => n_131, B1 => n_130, ZN => n_189);
  g27589 : ND2D1BWP7T port map(A1 => n_131, A2 => n_149, ZN => n_194);
  g27558 : ND2D1BWP7T port map(A1 => n_131, A2 => n_129, ZN => n_195);
  g27557 : OR2D1BWP7T port map(A1 => n_128, A2 => n_127, Z => n_236);
  g27590 : CKAN2D1BWP7T port map(A1 => n_131, A2 => n_546, Z => n_193);
  g27563 : ND2D1BWP7T port map(A1 => n_131, A2 => n_128, ZN => n_429);
  g27591 : CKAN2D1BWP7T port map(A1 => n_131, A2 => n_169, Z => n_196);
  g27592 : ND2D1BWP7T port map(A1 => n_131, A2 => n_127, ZN => n_391);
  g27568 : ND2D1BWP7T port map(A1 => n_126, A2 => n_128, ZN => n_302);
  g27566 : ND2D1BWP7T port map(A1 => n_126, A2 => n_125, ZN => n_601);
  g27567 : ND2D1BWP7T port map(A1 => n_131, A2 => n_125, ZN => n_368);
  g27574 : AOI22D0BWP7T port map(A1 => n_111, A2 => n_123, B1 => n_122, B2 => n_21, ZN => n_124);
  g27547 : OR2D0BWP7T port map(A1 => n_120, A2 => n_584, Z => n_121);
  g27529 : AOI21D0BWP7T port map(A1 => n_118, A2 => sqi_finished, B => state(0), ZN => n_119);
  g27565 : NR2XD0BWP7T port map(A1 => n_94, A2 => n_1811, ZN => n_252);
  g27560 : NR2D1BWP7T port map(A1 => n_116, A2 => n_177, ZN => n_257);
  g27559 : NR2D1BWP7T port map(A1 => n_116, A2 => counter(0), ZN => n_230);
  g27561 : OR2D1BWP7T port map(A1 => n_120, A2 => n_115, Z => n_611);
  g27576 : AOI21D0BWP7T port map(A1 => n_323, A2 => n_113, B => n_116, ZN => n_114);
  g27575 : AO21D0BWP7T port map(A1 => n_111, A2 => n_110, B => n_109, Z => n_112);
  g27580 : AOI211XD0BWP7T port map(A1 => n_108, A2 => n_278, B => n_43, C => n_41, ZN => n_184);
  g27586 : NR2D1BWP7T port map(A1 => n_116, A2 => n_74, ZN => n_198);
  g27585 : IND2D1BWP7T port map(A1 => n_107, B1 => n_548, ZN => n_590);
  g27542 : CKND1BWP7T port map(I => n_153, ZN => n_595);
  g27594 : NR2D1BWP7T port map(A1 => n_120, A2 => n_111, ZN => n_282);
  g27617 : ND2D4BWP7T port map(A1 => n_49, A2 => n_44, ZN => sqi_enabled);
  g27578 : IAO21D0BWP7T port map(A1 => n_168, A2 => n_115, B => n_104, ZN => n_105);
  g27520 : AOI22D0BWP7T port map(A1 => n_101, A2 => dff_command(0), B1 => n_100, B2 => mode, ZN => n_103);
  g27521 : AOI22D0BWP7T port map(A1 => n_101, A2 => dff_command(1), B1 => n_100, B2 => rw, ZN => n_102);
  g27556 : IND2D1BWP7T port map(A1 => n_99, B1 => n_497, ZN => n_154);
  g27581 : OA21D0BWP7T port map(A1 => n_50, A2 => n_75, B => n_98, Z => n_146);
  g27583 : AN3D1BWP7T port map(A1 => n_497, A2 => n_546, A3 => n_267, Z => n_263);
  g27533 : AOI21D0BWP7T port map(A1 => n_99, A2 => n_278, B => n_62, ZN => n_175);
  g27562 : ND2D1BWP7T port map(A1 => n_497, A2 => y(7), ZN => n_153);
  g27501 : ND2D1BWP7T port map(A1 => n_147, A2 => n_110, ZN => n_150);
  g27596 : AOI221D0BWP7T port map(A1 => n_96, A2 => counter(4), B1 => n_22, B2 => n_177, C => n_266, ZN => n_97);
  g27613 : INVD0BWP7T port map(I => n_164, ZN => n_182);
  g27597 : NR2XD0BWP7T port map(A1 => n_95, A2 => n_305, ZN => n_205);
  g27606 : NR2D1BWP7T port map(A1 => n_111, A2 => n_63, ZN => n_208);
  g27607 : NR2XD0BWP7T port map(A1 => n_95, A2 => counter(0), ZN => n_125);
  g27584 : ND2D1BWP7T port map(A1 => n_497, A2 => n_108, ZN => n_572);
  g27608 : NR2XD0BWP7T port map(A1 => n_95, A2 => n_190, ZN => n_128);
  g27564 : ND2D1BWP7T port map(A1 => n_497, A2 => counter(0), ZN => n_493);
  g27610 : INR2XD0BWP7T port map(A1 => edit, B1 => n_47, ZN => n_143);
  g27611 : NR2XD0BWP7T port map(A1 => n_471, A2 => n_58, ZN => n_131);
  g27612 : INVD0BWP7T port map(I => n_126, ZN => n_94);
  g27526 : IND4D0BWP7T port map(A1 => edit, B1 => n_53, B2 => n_90, B3 => n_245, ZN => n_93);
  g27573 : AOI32D1BWP7T port map(A1 => n_65, A2 => mode, A3 => rw, B1 => n_91, B2 => n_90, ZN => n_92);
  g27595 : ND2D1BWP7T port map(A1 => n_242, A2 => calc_buf_in(1), ZN => n_89);
  g27598 : ND2D1BWP7T port map(A1 => n_242, A2 => i_row_buf(0), ZN => n_88);
  g27599 : ND2D1BWP7T port map(A1 => n_237, A2 => y(2), ZN => n_87);
  g27600 : NR2D0BWP7T port map(A1 => n_38, A2 => state(3), ZN => n_86);
  g27601 : ND2D0BWP7T port map(A1 => n_237, A2 => y(4), ZN => n_85);
  g27615 : AOI22D0BWP7T port map(A1 => n_83, A2 => n_20, B1 => n_104, B2 => state(2), ZN => n_84);
  g27605 : ND2D1BWP7T port map(A1 => n_528, A2 => n_169, ZN => n_578);
  g27602 : IND2D1BWP7T port map(A1 => n_82, B1 => n_528, ZN => n_107);
  g27609 : ND2D1BWP7T port map(A1 => n_57, A2 => state(0), ZN => n_120);
  g27614 : CKND1BWP7T port map(I => n_497, ZN => n_116);
  g27616 : OAI21D0BWP7T port map(A1 => n_82, A2 => counter(4), B => n_130, ZN => n_81);
  g27618 : AO21D0BWP7T port map(A1 => n_46, A2 => state(0), B => n_79, Z => n_80);
  g27619 : OAI21D0BWP7T port map(A1 => n_524, A2 => counter(1), B => n_157, ZN => n_78);
  g27620 : MOAI22D0BWP7T port map(A1 => n_82, A2 => n_548, B1 => n_72, B2 => n_546, ZN => n_77);
  g27622 : OAI33D0BWP7T port map(A1 => y(0), A2 => n_177, A3 => n_75, B1 => n_17, B2 => state(3), B3 => n_74, ZN => n_76);
  g27624 : AOI22D0BWP7T port map(A1 => n_72, A2 => n_305, B1 => n_96, B2 => n_71, ZN => n_73);
  g27625 : OAI22D0BWP7T port map(A1 => n_341, A2 => counter(0), B1 => n_74, B2 => counter(3), ZN => n_70);
  g27626 : MOAI22D0BWP7T port map(A1 => n_68, A2 => n_255, B1 => n_67, B2 => n_104, ZN => n_69);
  g27627 : OAI22D0BWP7T port map(A1 => n_65, A2 => n_104, B1 => n_278, B2 => state(2), ZN => n_66);
  g27628 : MOAI22D0BWP7T port map(A1 => n_135, A2 => state(3), B1 => n_83, B2 => n_59, ZN => n_64);
  g27639 : OR2D1BWP7T port map(A1 => n_99, A2 => n_63, Z => n_133);
  g27569 : CKND0BWP7T port map(I => n_62, ZN => n_156);
  g27633 : INVD1BWP7T port map(I => n_1811, ZN => n_127);
  g27630 : AOI21D0BWP7T port map(A1 => n_67, A2 => n_245, B => n_61, ZN => n_164);
  g27623 : OAI33D0BWP7T port map(A1 => n_59, A2 => n_207, A3 => n_51, B1 => ce, B2 => n_90, B3 => n_278, ZN => n_60);
  g27632 : INVD0BWP7T port map(I => n_57, ZN => n_58);
  g27588 : IND3D1BWP7T port map(A1 => n_55, B1 => n_91, B2 => n_54, ZN => n_62);
  g27603 : NR2D0BWP7T port map(A1 => n_53, A2 => edit, ZN => n_118);
  g27587 : NR3D0BWP7T port map(A1 => n_55, A2 => n_52, A3 => state(0), ZN => n_147);
  g27629 : NR3D0BWP7T port map(A1 => n_471, A2 => n_51, A3 => n_63, ZN => n_126);
  g27635 : INVD1BWP7T port map(I => n_237, ZN => n_95);
  g27634 : CKND1BWP7T port map(I => n_50, ZN => n_111);
  g27593 : IND3D1BWP7T port map(A1 => n_30, B1 => state(3), B2 => n_37, ZN => n_181);
  g27631 : AN3D1BWP7T port map(A1 => n_162, A2 => n_27, A3 => state(0), Z => n_497);
  g27654 : OA21D0BWP7T port map(A1 => n_255, A2 => n_28, B => n_48, Z => n_49);
  g27653 : AOI22D0BWP7T port map(A1 => n_172, A2 => n_46, B1 => n_109, B2 => n_245, ZN => n_47);
  g27658 : AOI21D0BWP7T port map(A1 => n_109, A2 => sqi_finished, B => n_91, ZN => n_45);
  g27657 : AOI22D0BWP7T port map(A1 => n_109, A2 => state(0), B1 => n_46, B2 => state(3), ZN => n_44);
  g27655 : AOI21D0BWP7T port map(A1 => n_42, A2 => n_74, B => n_75, ZN => n_43);
  g27652 : INVD0BWP7T port map(I => n_98, ZN => n_41);
  g27663 : OAI21D0BWP7T port map(A1 => n_34, A2 => counter(2), B => n_278, ZN => n_214);
  g27647 : ND2D1BWP7T port map(A1 => n_341, A2 => n_278, ZN => n_218);
  g27643 : ND2D1BWP7T port map(A1 => n_524, A2 => n_278, ZN => n_213);
  g27646 : ND2D1BWP7T port map(A1 => n_355, A2 => n_278, ZN => n_212);
  g27644 : ND2D1BWP7T port map(A1 => n_323, A2 => n_278, ZN => n_217);
  g27636 : OR2D1BWP7T port map(A1 => n_421, A2 => n_115, Z => n_40);
  g27637 : OR2D4BWP7T port map(A1 => n_100, A2 => n_226, Z => ready);
  g27660 : AOI32D1BWP7T port map(A1 => n_177, A2 => counter(3), A3 => counter(2), B1 => n_548, B2 => counter(1), ZN => n_38);
  g27638 : NR2XD0BWP7T port map(A1 => n_63, A2 => n_135, ZN => n_57);
  g27662 : AOI21D0BWP7T port map(A1 => n_51, A2 => n_37, B => n_278, ZN => n_155);
  g27650 : NR2D1BWP7T port map(A1 => n_313, A2 => n_169, ZN => n_50);
  g27604 : ND3D0BWP7T port map(A1 => n_18, A2 => state(3), A3 => state(2), ZN => n_101);
  g27642 : IND2D1BWP7T port map(A1 => n_421, B1 => n_305, ZN => n_168);
  g27645 : ND2D1BWP7T port map(A1 => n_333, A2 => n_278, ZN => n_220);
  g27648 : ND2D1BWP7T port map(A1 => n_313, A2 => n_278, ZN => n_216);
  g27651 : NR2XD0BWP7T port map(A1 => n_313, A2 => counter(1), ZN => n_237);
  g27692 : INVD0BWP7T port map(I => n_132, ZN => n_35);
  g27665 : OAI21D0BWP7T port map(A1 => n_51, A2 => state(0), B => n_54, ZN => n_79);
  g27669 : INVD0BWP7T port map(I => n_355, ZN => n_192);
  g27664 : AOI22D0BWP7T port map(A1 => n_51, A2 => n_278, B1 => n_135, B2 => state(3), ZN => n_148);
  g27698 : ND2D1BWP7T port map(A1 => n_34, A2 => n_177, ZN => n_261);
  g27666 : AOI22D0BWP7T port map(A1 => n_26, A2 => n_104, B1 => n_278, B2 => n_90, ZN => n_98);
  g27673 : CKND1BWP7T port map(I => n_524, ZN => n_199);
  g27684 : NR2D1BWP7T port map(A1 => n_96, A2 => n_34, ZN => n_99);
  g27667 : AOI21D0BWP7T port map(A1 => n_51, A2 => n_135, B => n_471, ZN => n_528);
  g27674 : INVD1BWP7T port map(I => n_341, ZN => n_266);
  g27668 : OAI22D0BWP7T port map(A1 => n_51, A2 => n_255, B1 => n_207, B2 => n_151, ZN => n_242);
  g27661 : AOI21D0BWP7T port map(A1 => n_177, A2 => n_71, B => n_169, ZN => n_33);
  g27676 : ND2D1BWP7T port map(A1 => n_260, A2 => counter(3), ZN => n_32);
  g27659 : OAI22D0BWP7T port map(A1 => n_122, A2 => n_104, B1 => state(1), B2 => sqi_finished, ZN => n_30);
  g27677 : NR2XD0BWP7T port map(A1 => n_29, A2 => n_28, ZN => n_65);
  g27640 : NR4D0BWP7T port map(A1 => n_7, A2 => x(3), A3 => x(1), A4 => x(4), ZN => n_53);
  g27701 : ND2D1BWP7T port map(A1 => n_548, A2 => n_96, ZN => n_113);
  g27699 : INR2D1BWP7T port map(A1 => n_123, B1 => n_255, ZN => n_61);
  g27641 : NR2D1BWP7T port map(A1 => n_27, A2 => state(3), ZN => n_55);
  g27672 : CKND1BWP7T port map(I => n_333, ZN => n_108);
  g27707 : CKAN2D1BWP7T port map(A1 => n_26, A2 => n_278, Z => n_162);
  g27679 : AN2D1BWP7T port map(A1 => n_26, A2 => sqi_finished, Z => n_67);
  g27680 : NR2XD0BWP7T port map(A1 => n_207, A2 => state(1), ZN => n_83);
  g27703 : NR2D0BWP7T port map(A1 => n_51, A2 => n_255, ZN => n_25);
  g27696 : IAO21D0BWP7T port map(A1 => state(0), A2 => edit, B => n_245, ZN => n_24);
  g27693 : INVD0BWP7T port map(I => n_100, ZN => n_23);
  g27697 : OAI21D0BWP7T port map(A1 => counter(2), A2 => counter(4), B => n_176, ZN => n_72);
  g27700 : NR2D0BWP7T port map(A1 => n_169, A2 => state(3), ZN => n_152);
  g27702 : CKND2D0BWP7T port map(A1 => n_172, A2 => n_26, ZN => n_48);
  g27706 : NR2XD0BWP7T port map(A1 => n_29, A2 => state(0), ZN => n_289);
  g27705 : NR2XD0BWP7T port map(A1 => n_207, A2 => n_90, ZN => n_132);
  g27704 : CKND2D1BWP7T port map(A1 => n_276, A2 => n_96, ZN => n_130);
  g27683 : ND2D1BWP7T port map(A1 => n_169, A2 => counter(2), ZN => n_82);
  g27686 : ND2D1BWP7T port map(A1 => n_276, A2 => n_15, ZN => n_355);
  g27691 : ND2D1BWP7T port map(A1 => n_276, A2 => counter(2), ZN => n_341);
  g27690 : ND2D1BWP7T port map(A1 => n_22, A2 => n_228, ZN => n_524);
  g27688 : IND2D1BWP7T port map(A1 => n_516, B1 => counter(2), ZN => n_323);
  g27675 : OR2D1BWP7T port map(A1 => n_20, A2 => state(1), Z => n_21);
  g27681 : ND2D1BWP7T port map(A1 => n_96, A2 => counter(3), ZN => n_157);
  g27678 : OR2D1BWP7T port map(A1 => n_255, A2 => n_19, Z => n_54);
  g27682 : OR2D1BWP7T port map(A1 => n_281, A2 => y(5), Z => n_421);
  g27708 : NR2XD0BWP7T port map(A1 => n_255, A2 => n_90, ZN => n_100);
  g27694 : CKND1BWP7T port map(I => n_27, ZN => n_63);
  g27685 : ND2D1BWP7T port map(A1 => n_172, A2 => sqi_finished, ZN => n_471);
  g27687 : ND2D1BWP7T port map(A1 => n_42, A2 => n_224, ZN => n_313);
  g27695 : AOI22D0BWP7T port map(A1 => n_104, A2 => n_19, B1 => state(0), B2 => state(1), ZN => n_18);
  g27715 : INVD1BWP7T port map(I => n_548, ZN => n_34);
  g27734 : INVD0BWP7T port map(I => n_151, ZN => n_46);
  g27716 : INVD1BWP7T port map(I => n_169, ZN => n_74);
  g27709 : IND3D1BWP7T port map(A1 => y(2), B1 => n_584, B2 => n_17, ZN => n_115);
  g27710 : NR2XD0BWP7T port map(A1 => n_135, A2 => n_278, ZN => n_226);
  g27717 : CKND1BWP7T port map(I => n_51, ZN => n_109);
  g27689 : ND2D1BWP7T port map(A1 => n_42, A2 => counter(4), ZN => n_333);
  g27656 : AN4D0BWP7T port map(A1 => state(0), A2 => state(2), A3 => ce, A4 => rw, Z => n_16);
  g27737 : NR2D1BWP7T port map(A1 => n_15, A2 => counter(4), ZN => n_22);
  g27719 : CKND2D1BWP7T port map(A1 => n_104, A2 => n_90, ZN => n_37);
  g27712 : INVD0BWP7T port map(I => n_42, ZN => n_176);
  g27714 : INVD0BWP7T port map(I => n_135, ZN => n_110);
  g27713 : INVD1BWP7T port map(I => n_96, ZN => n_260);
  g27711 : NR3D0BWP7T port map(A1 => counter(5), A2 => counter(6), A3 => counter(7), ZN => n_27);
  g27735 : INVD1BWP7T port map(I => n_172, ZN => n_91);
  g27744 : NR2D1BWP7T port map(A1 => n_90, A2 => state(1), ZN => n_26);
  g27731 : NR2XD0BWP7T port map(A1 => n_224, A2 => n_228, ZN => n_548);
  g27733 : ND2D1BWP7T port map(A1 => n_19, A2 => n_90, ZN => n_51);
  g27732 : NR2XD0BWP7T port map(A1 => n_177, A2 => n_190, ZN => n_169);
  g27736 : CKND2D0BWP7T port map(A1 => counter(0), A2 => n_179, ZN => n_14);
  g27738 : ND2D1BWP7T port map(A1 => n_90, A2 => sqi_finished, ZN => n_68);
  g27742 : NR2XD0BWP7T port map(A1 => n_190, A2 => counter(1), ZN => n_149);
  g27743 : CKND2D1BWP7T port map(A1 => n_278, A2 => state(1), ZN => n_75);
  g27741 : NR2D1BWP7T port map(A1 => n_19, A2 => sqi_finished, ZN => n_123);
  g27739 : ND2D1BWP7T port map(A1 => n_19, A2 => state(3), ZN => n_29);
  g27740 : ND2D1BWP7T port map(A1 => n_228, A2 => counter(4), ZN => n_516);
  g27747 : ND2D1BWP7T port map(A1 => n_90, A2 => state(1), ZN => n_151);
  g27745 : NR2D1BWP7T port map(A1 => n_228, A2 => counter(4), ZN => n_276);
  g27746 : ND2D1BWP7T port map(A1 => n_278, A2 => state(0), ZN => n_207);
  g27748 : NR2XD0BWP7T port map(A1 => n_278, A2 => state(0), ZN => n_245);
  g27749 : NR2D1BWP7T port map(A1 => n_177, A2 => counter(0), ZN => n_546);
  g27723 : AN2D0BWP7T port map(A1 => dff_command(1), A2 => dff_command(0), Z => n_20);
  g27728 : NR2D1BWP7T port map(A1 => counter(2), A2 => counter(3), ZN => n_42);
  g27727 : NR2XD0BWP7T port map(A1 => y(7), A2 => y(6), ZN => n_305);
  g27729 : NR2XD0BWP7T port map(A1 => counter(1), A2 => counter(2), ZN => n_96);
  g27718 : OR2D1BWP7T port map(A1 => x(0), A2 => x(2), Z => n_7);
  g27721 : OR2D1BWP7T port map(A1 => dff_command(1), A2 => sqi_finished, Z => n_59);
  g27720 : NR2XD0BWP7T port map(A1 => counter(1), A2 => counter(0), ZN => n_129);
  g27722 : NR2D0BWP7T port map(A1 => state(3), A2 => sqi_finished, ZN => n_52);
  g27724 : ND2D1BWP7T port map(A1 => y(6), A2 => y(7), ZN => n_71);
  g27725 : OR2D1BWP7T port map(A1 => y(3), A2 => y(4), Z => n_281);
  g27726 : NR2XD0BWP7T port map(A1 => state(2), A2 => sqi_finished, ZN => n_122);
  g27750 : NR2XD0BWP7T port map(A1 => state(3), A2 => state(0), ZN => n_172);
  g27730 : ND2D1BWP7T port map(A1 => state(2), A2 => state(1), ZN => n_135);
  g27751 : ND2D1BWP7T port map(A1 => state(3), A2 => state(0), ZN => n_255);
  g27779 : BUFFD4BWP7T port map(I => i_sqi_address(11), Z => sqi_address(11));
  g27752 : BUFFD4BWP7T port map(I => i_sqi_address(7), Z => sqi_address(7));
  g27753 : BUFFD4BWP7T port map(I => i_sqi_address(0), Z => sqi_address(0));
  g27755 : CKND1BWP7T port map(I => y(1), ZN => n_584);
  g27784 : INVD1BWP7T port map(I => sqi_data_in(6), ZN => n_555);
  g27766 : INVD1BWP7T port map(I => sqi_data_in(5), ZN => n_550);
  g27764 : INVD1BWP7T port map(I => sqi_data_in(4), ZN => n_565);
  g27777 : INVD1BWP7T port map(I => reset, ZN => n_1);
  g27778 : BUFFD4BWP7T port map(I => i_sqi_address(10), Z => sqi_address(10));
  g27782 : INVD0BWP7T port map(I => sqi_finished, ZN => n_0);
  g27754 : INVD0BWP7T port map(I => ce, ZN => n_28);
  g27757 : CKND1BWP7T port map(I => y(0), ZN => n_17);
  g27759 : INVD1BWP7T port map(I => y(6), ZN => n_179);
  g27758 : INVD1BWP7T port map(I => y(7), ZN => n_267);
  g27785 : INVD1BWP7T port map(I => sqi_data_in(7), ZN => n_557);
  g27765 : INVD1BWP7T port map(I => sqi_data_in(2), ZN => n_559);
  g27786 : INVD1BWP7T port map(I => sqi_data_in(3), ZN => n_562);
  g27767 : INVD2BWP7T port map(I => reset, ZN => n_631);
  g2 : ND3D0BWP7T port map(A1 => n_122, A2 => n_255, A3 => state(1), ZN => n_663);
  drc_bufs28004 : INVD4BWP7T port map(I => n_666, ZN => sqi_address(13));
  drc_bufs28010 : INVD4BWP7T port map(I => n_672, ZN => sqi_address(6));
  drc_bufs28016 : INVD4BWP7T port map(I => n_678, ZN => sqi_address(3));
  drc_bufs28022 : INVD4BWP7T port map(I => n_684, ZN => framebuffer_buf(70));
  drc_bufs28028 : INVD4BWP7T port map(I => n_690, ZN => calc_buf_out(7));
  drc_bufs28034 : INVD4BWP7T port map(I => n_696, ZN => calc_buf_out(15));
  drc_bufs28040 : INVD4BWP7T port map(I => n_702, ZN => framebuffer_buf(68));
  drc_bufs28046 : INVD4BWP7T port map(I => n_708, ZN => framebuffer_buf(7));
  drc_bufs28052 : INVD4BWP7T port map(I => n_714, ZN => framebuffer_buf(39));
  drc_bufs28058 : INVD4BWP7T port map(I => n_720, ZN => framebuffer_buf(66));
  drc_bufs28064 : INVD4BWP7T port map(I => n_726, ZN => framebuffer_buf(103));
  drc_bufs28070 : INVD4BWP7T port map(I => n_732, ZN => framebuffer_buf(104));
  drc_bufs28076 : INVD4BWP7T port map(I => n_738, ZN => framebuffer_buf(157));
  drc_bufs28082 : INVD4BWP7T port map(I => n_744, ZN => framebuffer_buf(156));
  drc_bufs28088 : INVD4BWP7T port map(I => n_750, ZN => framebuffer_buf(155));
  drc_bufs28094 : INVD4BWP7T port map(I => n_756, ZN => framebuffer_buf(154));
  drc_bufs28100 : INVD4BWP7T port map(I => n_762, ZN => framebuffer_buf(153));
  drc_bufs28106 : INVD4BWP7T port map(I => n_768, ZN => framebuffer_buf(152));
  drc_bufs28112 : INVD4BWP7T port map(I => n_774, ZN => framebuffer_buf(151));
  drc_bufs28118 : INVD4BWP7T port map(I => n_780, ZN => framebuffer_buf(150));
  drc_bufs28124 : INVD4BWP7T port map(I => n_786, ZN => framebuffer_buf(149));
  drc_bufs28130 : INVD4BWP7T port map(I => n_792, ZN => framebuffer_buf(148));
  drc_bufs28136 : INVD4BWP7T port map(I => n_798, ZN => framebuffer_buf(147));
  drc_bufs28142 : INVD4BWP7T port map(I => n_804, ZN => framebuffer_buf(146));
  drc_bufs28148 : INVD4BWP7T port map(I => n_810, ZN => framebuffer_buf(145));
  drc_bufs28154 : INVD4BWP7T port map(I => n_816, ZN => framebuffer_buf(144));
  drc_bufs28160 : INVD4BWP7T port map(I => n_822, ZN => framebuffer_buf(143));
  drc_bufs28166 : INVD4BWP7T port map(I => n_828, ZN => framebuffer_buf(142));
  drc_bufs28172 : INVD4BWP7T port map(I => n_834, ZN => framebuffer_buf(141));
  drc_bufs28178 : INVD4BWP7T port map(I => n_840, ZN => framebuffer_buf(140));
  drc_bufs28184 : INVD4BWP7T port map(I => n_846, ZN => framebuffer_buf(139));
  drc_bufs28190 : INVD4BWP7T port map(I => n_852, ZN => framebuffer_buf(40));
  drc_bufs28196 : INVD4BWP7T port map(I => n_858, ZN => framebuffer_buf(105));
  drc_bufs28202 : INVD4BWP7T port map(I => n_864, ZN => framebuffer_buf(136));
  drc_bufs28208 : INVD4BWP7T port map(I => n_870, ZN => framebuffer_buf(135));
  drc_bufs28214 : INVD4BWP7T port map(I => n_876, ZN => framebuffer_buf(134));
  drc_bufs28220 : INVD4BWP7T port map(I => n_882, ZN => framebuffer_buf(133));
  drc_bufs28226 : INVD4BWP7T port map(I => n_888, ZN => framebuffer_buf(132));
  drc_bufs28232 : INVD4BWP7T port map(I => n_894, ZN => framebuffer_buf(131));
  drc_bufs28238 : INVD4BWP7T port map(I => n_900, ZN => framebuffer_buf(130));
  drc_bufs28244 : INVD4BWP7T port map(I => n_906, ZN => framebuffer_buf(106));
  drc_bufs28250 : INVD4BWP7T port map(I => n_912, ZN => framebuffer_buf(128));
  drc_bufs28256 : INVD4BWP7T port map(I => n_918, ZN => framebuffer_buf(127));
  drc_bufs28262 : INVD4BWP7T port map(I => n_924, ZN => framebuffer_buf(126));
  drc_bufs28268 : INVD4BWP7T port map(I => n_930, ZN => framebuffer_buf(125));
  drc_bufs28274 : INVD4BWP7T port map(I => n_936, ZN => framebuffer_buf(124));
  drc_bufs28280 : INVD4BWP7T port map(I => n_942, ZN => framebuffer_buf(123));
  drc_bufs28286 : INVD4BWP7T port map(I => n_948, ZN => framebuffer_buf(122));
  drc_bufs28292 : INVD4BWP7T port map(I => n_954, ZN => framebuffer_buf(8));
  drc_bufs28298 : INVD4BWP7T port map(I => n_960, ZN => framebuffer_buf(120));
  drc_bufs28304 : INVD4BWP7T port map(I => n_966, ZN => framebuffer_buf(119));
  drc_bufs28310 : INVD4BWP7T port map(I => n_972, ZN => framebuffer_buf(118));
  drc_bufs28316 : INVD4BWP7T port map(I => n_978, ZN => framebuffer_buf(115));
  drc_bufs28322 : INVD4BWP7T port map(I => n_984, ZN => framebuffer_buf(114));
  drc_bufs28328 : INVD4BWP7T port map(I => n_990, ZN => framebuffer_buf(113));
  drc_bufs28334 : INVD4BWP7T port map(I => n_996, ZN => framebuffer_buf(112));
  drc_bufs28340 : INVD4BWP7T port map(I => n_1002, ZN => framebuffer_buf(41));
  drc_bufs28346 : INVD4BWP7T port map(I => n_1008, ZN => framebuffer_buf(107));
  drc_bufs28352 : INVD4BWP7T port map(I => n_1014, ZN => framebuffer_buf(108));
  drc_bufs28358 : INVD4BWP7T port map(I => n_1020, ZN => framebuffer_buf(42));
  drc_bufs28364 : INVD4BWP7T port map(I => n_1026, ZN => framebuffer_buf(109));
  drc_bufs28370 : INVD4BWP7T port map(I => n_1032, ZN => framebuffer_buf(110));
  drc_bufs28376 : INVD4BWP7T port map(I => n_1038, ZN => framebuffer_buf(9));
  drc_bufs28382 : INVD4BWP7T port map(I => n_1044, ZN => framebuffer_buf(43));
  drc_bufs28388 : INVD4BWP7T port map(I => n_1050, ZN => framebuffer_buf(111));
  drc_bufs28394 : INVD4BWP7T port map(I => n_1056, ZN => framebuffer_buf(102));
  drc_bufs28400 : INVD4BWP7T port map(I => n_1062, ZN => framebuffer_buf(101));
  drc_bufs28406 : INVD4BWP7T port map(I => n_1068, ZN => framebuffer_buf(100));
  drc_bufs28412 : INVD4BWP7T port map(I => n_1074, ZN => framebuffer_buf(99));
  drc_bufs28418 : INVD4BWP7T port map(I => n_1080, ZN => framebuffer_buf(98));
  drc_bufs28424 : INVD4BWP7T port map(I => n_1086, ZN => framebuffer_buf(97));
  drc_bufs28430 : INVD4BWP7T port map(I => n_1092, ZN => framebuffer_buf(96));
  drc_bufs28436 : INVD4BWP7T port map(I => n_1098, ZN => framebuffer_buf(95));
  drc_bufs28442 : INVD4BWP7T port map(I => n_1104, ZN => framebuffer_buf(94));
  drc_bufs28448 : INVD4BWP7T port map(I => n_1110, ZN => framebuffer_buf(93));
  drc_bufs28454 : INVD4BWP7T port map(I => n_1116, ZN => framebuffer_buf(92));
  drc_bufs28460 : INVD4BWP7T port map(I => n_1122, ZN => framebuffer_buf(91));
  drc_bufs28466 : INVD4BWP7T port map(I => n_1128, ZN => framebuffer_buf(90));
  drc_bufs28472 : INVD4BWP7T port map(I => n_1134, ZN => framebuffer_buf(89));
  drc_bufs28478 : INVD4BWP7T port map(I => n_1140, ZN => framebuffer_buf(88));
  drc_bufs28484 : INVD4BWP7T port map(I => n_1146, ZN => framebuffer_buf(87));
  drc_bufs28490 : INVD4BWP7T port map(I => n_1152, ZN => framebuffer_buf(86));
  drc_bufs28496 : INVD4BWP7T port map(I => n_1158, ZN => framebuffer_buf(85));
  drc_bufs28502 : INVD4BWP7T port map(I => n_1164, ZN => framebuffer_buf(84));
  drc_bufs28508 : INVD4BWP7T port map(I => n_1170, ZN => framebuffer_buf(83));
  drc_bufs28514 : INVD4BWP7T port map(I => n_1176, ZN => framebuffer_buf(82));
  drc_bufs28520 : INVD4BWP7T port map(I => n_1182, ZN => framebuffer_buf(81));
  drc_bufs28526 : INVD4BWP7T port map(I => n_1188, ZN => framebuffer_buf(80));
  drc_bufs28532 : INVD4BWP7T port map(I => n_1194, ZN => framebuffer_buf(44));
  drc_bufs28538 : INVD4BWP7T port map(I => n_1200, ZN => framebuffer_buf(78));
  drc_bufs28544 : INVD4BWP7T port map(I => n_1206, ZN => framebuffer_buf(77));
  drc_bufs28550 : INVD4BWP7T port map(I => n_1212, ZN => framebuffer_buf(76));
  drc_bufs28556 : INVD4BWP7T port map(I => n_1218, ZN => framebuffer_buf(10));
  drc_bufs28562 : INVD4BWP7T port map(I => n_1224, ZN => framebuffer_buf(74));
  drc_bufs28568 : INVD4BWP7T port map(I => n_1230, ZN => framebuffer_buf(73));
  drc_bufs28574 : INVD4BWP7T port map(I => n_1236, ZN => framebuffer_buf(72));
  drc_bufs28580 : INVD4BWP7T port map(I => n_1242, ZN => framebuffer_buf(45));
  drc_bufs28586 : INVD4BWP7T port map(I => n_1248, ZN => framebuffer_buf(22));
  drc_bufs28592 : INVD4BWP7T port map(I => n_1254, ZN => framebuffer_buf(69));
  drc_bufs28598 : INVD4BWP7T port map(I => n_1260, ZN => framebuffer_buf(21));
  drc_bufs28604 : INVD4BWP7T port map(I => n_1266, ZN => framebuffer_buf(67));
  drc_bufs28610 : INVD4BWP7T port map(I => n_1272, ZN => framebuffer_buf(20));
  drc_bufs28616 : INVD4BWP7T port map(I => n_1278, ZN => framebuffer_buf(65));
  drc_bufs28622 : INVD4BWP7T port map(I => n_1284, ZN => framebuffer_buf(64));
  drc_bufs28628 : INVD4BWP7T port map(I => n_1290, ZN => framebuffer_buf(63));
  drc_bufs28634 : INVD4BWP7T port map(I => n_1296, ZN => framebuffer_buf(62));
  drc_bufs28640 : INVD4BWP7T port map(I => n_1302, ZN => framebuffer_buf(61));
  drc_bufs28646 : INVD4BWP7T port map(I => n_1308, ZN => framebuffer_buf(60));
  drc_bufs28652 : INVD4BWP7T port map(I => n_1314, ZN => framebuffer_buf(59));
  drc_bufs28658 : INVD4BWP7T port map(I => n_1320, ZN => framebuffer_buf(58));
  drc_bufs28664 : INVD4BWP7T port map(I => n_1326, ZN => framebuffer_buf(57));
  drc_bufs28670 : INVD4BWP7T port map(I => n_1332, ZN => framebuffer_buf(56));
  drc_bufs28676 : INVD4BWP7T port map(I => n_1338, ZN => framebuffer_buf(138));
  drc_bufs28682 : INVD4BWP7T port map(I => n_1344, ZN => framebuffer_buf(54));
  drc_bufs28688 : INVD4BWP7T port map(I => n_1350, ZN => framebuffer_buf(53));
  drc_bufs28694 : INVD4BWP7T port map(I => n_1356, ZN => framebuffer_buf(52));
  drc_bufs28700 : INVD4BWP7T port map(I => n_1362, ZN => framebuffer_buf(129));
  drc_bufs28706 : INVD4BWP7T port map(I => n_1368, ZN => framebuffer_buf(50));
  drc_bufs28712 : INVD4BWP7T port map(I => n_1374, ZN => framebuffer_buf(49));
  drc_bufs28718 : INVD4BWP7T port map(I => n_1380, ZN => framebuffer_buf(48));
  drc_bufs28724 : INVD4BWP7T port map(I => n_1386, ZN => framebuffer_buf(46));
  drc_bufs28730 : INVD4BWP7T port map(I => n_1392, ZN => calc_buf_out(18));
  drc_bufs28736 : INVD4BWP7T port map(I => n_1398, ZN => framebuffer_buf(11));
  drc_bufs28742 : INVD4BWP7T port map(I => n_1404, ZN => framebuffer_buf(47));
  drc_bufs28748 : INVD4BWP7T port map(I => n_1410, ZN => framebuffer_buf(121));
  drc_bufs28754 : INVD4BWP7T port map(I => n_1416, ZN => framebuffer_buf(12));
  drc_bufs28760 : INVD4BWP7T port map(I => n_1422, ZN => framebuffer_buf(13));
  drc_bufs28766 : INVD4BWP7T port map(I => n_1428, ZN => framebuffer_buf(51));
  drc_bufs28772 : INVD4BWP7T port map(I => n_1434, ZN => framebuffer_buf(14));
  drc_bufs28778 : INVD4BWP7T port map(I => n_1440, ZN => framebuffer_buf(38));
  drc_bufs28784 : INVD4BWP7T port map(I => n_1446, ZN => framebuffer_buf(37));
  drc_bufs28790 : INVD4BWP7T port map(I => n_1452, ZN => framebuffer_buf(36));
  drc_bufs28796 : INVD4BWP7T port map(I => n_1458, ZN => framebuffer_buf(35));
  drc_bufs28802 : INVD4BWP7T port map(I => n_1464, ZN => framebuffer_buf(34));
  drc_bufs28808 : INVD4BWP7T port map(I => n_1470, ZN => framebuffer_buf(33));
  drc_bufs28814 : INVD4BWP7T port map(I => n_1476, ZN => framebuffer_buf(32));
  drc_bufs28820 : INVD4BWP7T port map(I => n_1482, ZN => framebuffer_buf(31));
  drc_bufs28826 : INVD4BWP7T port map(I => n_1488, ZN => framebuffer_buf(30));
  drc_bufs28832 : INVD4BWP7T port map(I => n_1494, ZN => framebuffer_buf(29));
  drc_bufs28838 : INVD4BWP7T port map(I => n_1500, ZN => framebuffer_buf(28));
  drc_bufs28844 : INVD4BWP7T port map(I => n_1506, ZN => framebuffer_buf(79));
  drc_bufs28850 : INVD4BWP7T port map(I => n_1512, ZN => framebuffer_buf(26));
  drc_bufs28856 : INVD4BWP7T port map(I => n_1518, ZN => framebuffer_buf(75));
  drc_bufs28862 : INVD4BWP7T port map(I => n_1524, ZN => framebuffer_buf(24));
  drc_bufs28868 : INVD4BWP7T port map(I => n_1530, ZN => framebuffer_buf(71));
  drc_bufs28874 : INVD4BWP7T port map(I => n_1536, ZN => calc_buf_out(4));
  drc_bufs28880 : INVD4BWP7T port map(I => n_1542, ZN => calc_buf_out(22));
  drc_bufs28886 : INVD4BWP7T port map(I => n_1548, ZN => calc_buf_out(21));
  drc_bufs28892 : INVD4BWP7T port map(I => n_1554, ZN => framebuffer_buf(19));
  drc_bufs28898 : INVD4BWP7T port map(I => n_1560, ZN => framebuffer_buf(18));
  drc_bufs28904 : INVD4BWP7T port map(I => n_1566, ZN => framebuffer_buf(17));
  drc_bufs28910 : INVD4BWP7T port map(I => n_1572, ZN => framebuffer_buf(16));
  drc_bufs28916 : INVD4BWP7T port map(I => n_1578, ZN => calc_buf_out(19));
  drc_bufs28922 : INVD4BWP7T port map(I => n_1584, ZN => framebuffer_buf(15));
  drc_bufs28928 : INVD4BWP7T port map(I => n_1590, ZN => framebuffer_buf(55));
  drc_bufs28934 : INVD4BWP7T port map(I => n_1596, ZN => framebuffer_buf(137));
  drc_bufs28940 : INVD4BWP7T port map(I => n_1602, ZN => calc_buf_out(20));
  drc_bufs28946 : INVD4BWP7T port map(I => n_1608, ZN => calc_buf_out(2));
  drc_bufs28952 : INVD4BWP7T port map(I => n_1614, ZN => calc_buf_out(10));
  drc_bufs28958 : INVD4BWP7T port map(I => n_1620, ZN => calc_buf_out(3));
  drc_bufs28964 : INVD4BWP7T port map(I => n_1626, ZN => calc_buf_out(5));
  drc_bufs28970 : INVD4BWP7T port map(I => n_1632, ZN => framebuffer_buf(6));
  drc_bufs28976 : INVD4BWP7T port map(I => n_1638, ZN => framebuffer_buf(5));
  drc_bufs28982 : INVD4BWP7T port map(I => n_1644, ZN => framebuffer_buf(4));
  drc_bufs28988 : INVD4BWP7T port map(I => n_1650, ZN => framebuffer_buf(3));
  drc_bufs28994 : INVD4BWP7T port map(I => n_1656, ZN => framebuffer_buf(2));
  drc_bufs29000 : INVD4BWP7T port map(I => n_1662, ZN => framebuffer_buf(27));
  drc_bufs29006 : INVD4BWP7T port map(I => n_1668, ZN => framebuffer_buf(25));
  drc_bufs29012 : INVD4BWP7T port map(I => n_1674, ZN => calc_buf_out(11));
  drc_bufs29018 : INVD4BWP7T port map(I => n_1680, ZN => calc_buf_out(23));
  drc_bufs29024 : INVD4BWP7T port map(I => n_1686, ZN => framebuffer_buf(23));
  drc_bufs29030 : INVD4BWP7T port map(I => n_1692, ZN => calc_buf_out(12));
  drc_bufs29036 : INVD4BWP7T port map(I => n_1698, ZN => calc_buf_out(6));
  drc_bufs29042 : INVD4BWP7T port map(I => n_1704, ZN => calc_buf_out(13));
  drc_bufs29048 : INVD4BWP7T port map(I => n_1710, ZN => calc_buf_out(14));
  drc_bufs29054 : INVD4BWP7T port map(I => n_1716, ZN => framebuffer_buf(1));
  drc_bufs29060 : INVD4BWP7T port map(I => n_1722, ZN => calc_buf_out(8));
  drc_bufs29066 : INVD4BWP7T port map(I => n_1728, ZN => calc_buf_out(17));
  drc_bufs29072 : INVD4BWP7T port map(I => n_1734, ZN => sqi_address(8));
  drc_bufs29078 : INVD4BWP7T port map(I => n_1740, ZN => framebuffer_buf(0));
  drc_bufs29084 : INVD4BWP7T port map(I => n_1746, ZN => calc_buf_out(9));
  drc_bufs29090 : INVD4BWP7T port map(I => n_1752, ZN => calc_buf_out(0));
  drc_bufs29096 : INVD4BWP7T port map(I => n_1758, ZN => calc_buf_out(1));
  drc_bufs29102 : INVD4BWP7T port map(I => n_1764, ZN => calc_buf_out(16));
  drc_bufs29108 : INVD4BWP7T port map(I => n_1770, ZN => sqi_address(2));
  drc_bufs29114 : INVD4BWP7T port map(I => n_1776, ZN => sqi_address(1));
  drc_bufs29120 : INVD4BWP7T port map(I => n_1782, ZN => sqi_address(5));
  drc_bufs29126 : INVD4BWP7T port map(I => n_1788, ZN => sqi_address(4));
  drc_bufs29132 : INVD4BWP7T port map(I => n_1794, ZN => sqi_address(12));
  drc_bufs29138 : INVD4BWP7T port map(I => n_1800, ZN => sqi_address(14));
  drc_bufs29144 : INVD4BWP7T port map(I => n_1806, ZN => sqi_address(9));
  counter_reg_5 : DFKCND1BWP7T port map(CP => clk, CN => n_631, D => n_592, Q => counter(5), QN => n_591);
  counter_reg_2 : DFKCND1BWP7T port map(CP => clk, CN => n_1, D => n_579, Q => counter(2), QN => n_15);
  state_reg_1 : DFD1BWP7T port map(CP => clk, D => n_299, Q => state(1), QN => n_19);
  counter_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => n_631, D => n_531, Q => counter(0), QN => n_190);
  state_reg_0 : DFKCND1BWP7T port map(CP => clk, CN => n_631, D => n_554, Q => state(0), QN => n_104);
  counter_reg_1 : DFKCND1BWP7T port map(CP => clk, CN => n_631, D => n_547, Q => counter(1), QN => n_177);
  counter_reg_4 : DFKCND1BWP7T port map(CP => clk, CN => n_631, D => n_581, Q => counter(4), QN => n_224);
  counter_reg_3 : DFKCND1BWP7T port map(CP => clk, CN => n_631, D => n_575, Q => counter(3), QN => n_228);
  state_reg_2 : DFD1BWP7T port map(CP => clk, D => n_618, Q => state(2), QN => n_90);
  state_reg_3 : DFD1BWP7T port map(CP => clk, D => n_620, Q => state(3), QN => n_278);
  i_sqi_address_reg_13 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_573, Q => i_sqi_address(13), QN => n_666);
  i_sqi_address_reg_6 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_617, Q => i_sqi_address(6), QN => n_672);
  i_sqi_address_reg_3 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_582, Q => i_sqi_address(3), QN => n_678);
  i_framebuffer_buf_reg_70 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_354, Q => i_framebuffer_buf(70), QN => n_684);
  i_calc_buf_out_reg_7 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_602, Q => i_calc_buf_out(7), QN => n_690);
  i_calc_buf_out_reg_15 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_303, Q => i_calc_buf_out(15), QN => n_696);
  i_framebuffer_buf_reg_68 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_348, Q => i_framebuffer_buf(68), QN => n_702);
  i_framebuffer_buf_reg_7 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_369, Q => i_framebuffer_buf(7), QN => n_708);
  i_framebuffer_buf_reg_39 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_406, Q => i_framebuffer_buf(39), QN => n_714);
  i_framebuffer_buf_reg_66 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_411, Q => i_framebuffer_buf(66), QN => n_720);
  i_framebuffer_buf_reg_103 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_442, Q => i_framebuffer_buf(103), QN => n_726);
  i_framebuffer_buf_reg_104 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_454, Q => i_framebuffer_buf(104), QN => n_732);
  i_framebuffer_buf_reg_157 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_371, Q => i_framebuffer_buf(157), QN => n_738);
  i_framebuffer_buf_reg_156 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_372, Q => i_framebuffer_buf(156), QN => n_744);
  i_framebuffer_buf_reg_155 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_375, Q => i_framebuffer_buf(155), QN => n_750);
  i_framebuffer_buf_reg_154 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_377, Q => i_framebuffer_buf(154), QN => n_756);
  i_framebuffer_buf_reg_153 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_475, Q => i_framebuffer_buf(153), QN => n_762);
  i_framebuffer_buf_reg_152 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_476, Q => i_framebuffer_buf(152), QN => n_768);
  i_framebuffer_buf_reg_151 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_463, Q => i_framebuffer_buf(151), QN => n_774);
  i_framebuffer_buf_reg_150 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_465, Q => i_framebuffer_buf(150), QN => n_780);
  i_framebuffer_buf_reg_149 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_464, Q => i_framebuffer_buf(149), QN => n_786);
  i_framebuffer_buf_reg_148 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_466, Q => i_framebuffer_buf(148), QN => n_792);
  i_framebuffer_buf_reg_147 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_318, Q => i_framebuffer_buf(147), QN => n_798);
  i_framebuffer_buf_reg_146 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_319, Q => i_framebuffer_buf(146), QN => n_804);
  i_framebuffer_buf_reg_145 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_320, Q => i_framebuffer_buf(145), QN => n_810);
  i_framebuffer_buf_reg_144 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_321, Q => i_framebuffer_buf(144), QN => n_816);
  i_framebuffer_buf_reg_143 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_324, Q => i_framebuffer_buf(143), QN => n_822);
  i_framebuffer_buf_reg_142 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_326, Q => i_framebuffer_buf(142), QN => n_828);
  i_framebuffer_buf_reg_141 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_432, Q => i_framebuffer_buf(141), QN => n_834);
  i_framebuffer_buf_reg_140 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_435, Q => i_framebuffer_buf(140), QN => n_840);
  i_framebuffer_buf_reg_139 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_416, Q => i_framebuffer_buf(139), QN => n_846);
  i_framebuffer_buf_reg_40 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_405, Q => i_framebuffer_buf(40), QN => n_852);
  i_framebuffer_buf_reg_105 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_453, Q => i_framebuffer_buf(105), QN => n_858);
  i_framebuffer_buf_reg_136 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_419, Q => i_framebuffer_buf(136), QN => n_864);
  i_framebuffer_buf_reg_135 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_449, Q => i_framebuffer_buf(135), QN => n_870);
  i_framebuffer_buf_reg_134 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_450, Q => i_framebuffer_buf(134), QN => n_876);
  i_framebuffer_buf_reg_133 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_376, Q => i_framebuffer_buf(133), QN => n_882);
  i_framebuffer_buf_reg_132 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_351, Q => i_framebuffer_buf(132), QN => n_888);
  i_framebuffer_buf_reg_131 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_440, Q => i_framebuffer_buf(131), QN => n_894);
  i_framebuffer_buf_reg_130 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_441, Q => i_framebuffer_buf(130), QN => n_900);
  i_framebuffer_buf_reg_106 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_452, Q => i_framebuffer_buf(106), QN => n_906);
  i_framebuffer_buf_reg_128 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_512, Q => i_framebuffer_buf(128), QN => n_912);
  i_framebuffer_buf_reg_127 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_481, Q => i_framebuffer_buf(127), QN => n_918);
  i_framebuffer_buf_reg_126 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_482, Q => i_framebuffer_buf(126), QN => n_924);
  i_framebuffer_buf_reg_125 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_483, Q => i_framebuffer_buf(125), QN => n_930);
  i_framebuffer_buf_reg_124 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_484, Q => i_framebuffer_buf(124), QN => n_936);
  i_framebuffer_buf_reg_123 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_327, Q => i_framebuffer_buf(123), QN => n_942);
  i_framebuffer_buf_reg_122 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_328, Q => i_framebuffer_buf(122), QN => n_948);
  i_framebuffer_buf_reg_8 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_431, Q => i_framebuffer_buf(8), QN => n_954);
  i_framebuffer_buf_reg_120 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_330, Q => i_framebuffer_buf(120), QN => n_960);
  i_framebuffer_buf_reg_119 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_332, Q => i_framebuffer_buf(119), QN => n_966);
  i_framebuffer_buf_reg_118 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_334, Q => i_framebuffer_buf(118), QN => n_972);
  i_framebuffer_buf_reg_115 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_383, Q => i_framebuffer_buf(115), QN => n_978);
  i_framebuffer_buf_reg_114 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_381, Q => i_framebuffer_buf(114), QN => n_984);
  i_framebuffer_buf_reg_113 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_399, Q => i_framebuffer_buf(113), QN => n_990);
  i_framebuffer_buf_reg_112 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_396, Q => i_framebuffer_buf(112), QN => n_996);
  i_framebuffer_buf_reg_41 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_403, Q => i_framebuffer_buf(41), QN => n_1002);
  i_framebuffer_buf_reg_107 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_451, Q => i_framebuffer_buf(107), QN => n_1008);
  i_framebuffer_buf_reg_108 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_462, Q => i_framebuffer_buf(108), QN => n_1014);
  i_framebuffer_buf_reg_42 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_415, Q => i_framebuffer_buf(42), QN => n_1020);
  i_framebuffer_buf_reg_109 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_461, Q => i_framebuffer_buf(109), QN => n_1026);
  i_framebuffer_buf_reg_110 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_386, Q => i_framebuffer_buf(110), QN => n_1032);
  i_framebuffer_buf_reg_9 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_430, Q => i_framebuffer_buf(9), QN => n_1038);
  i_framebuffer_buf_reg_43 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_414, Q => i_framebuffer_buf(43), QN => n_1044);
  i_framebuffer_buf_reg_111 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_389, Q => i_framebuffer_buf(111), QN => n_1050);
  i_framebuffer_buf_reg_102 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_513, Q => i_framebuffer_buf(102), QN => n_1056);
  i_framebuffer_buf_reg_101 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_485, Q => i_framebuffer_buf(101), QN => n_1062);
  i_framebuffer_buf_reg_100 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_486, Q => i_framebuffer_buf(100), QN => n_1068);
  i_framebuffer_buf_reg_99 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_487, Q => i_framebuffer_buf(99), QN => n_1074);
  i_framebuffer_buf_reg_98 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_490, Q => i_framebuffer_buf(98), QN => n_1080);
  i_framebuffer_buf_reg_97 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_335, Q => i_framebuffer_buf(97), QN => n_1086);
  i_framebuffer_buf_reg_96 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_336, Q => i_framebuffer_buf(96), QN => n_1092);
  i_framebuffer_buf_reg_95 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_337, Q => i_framebuffer_buf(95), QN => n_1098);
  i_framebuffer_buf_reg_94 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_338, Q => i_framebuffer_buf(94), QN => n_1104);
  i_framebuffer_buf_reg_93 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_340, Q => i_framebuffer_buf(93), QN => n_1110);
  i_framebuffer_buf_reg_92 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_343, Q => i_framebuffer_buf(92), QN => n_1116);
  i_framebuffer_buf_reg_91 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_438, Q => i_framebuffer_buf(91), QN => n_1122);
  i_framebuffer_buf_reg_90 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_439, Q => i_framebuffer_buf(90), QN => n_1128);
  i_framebuffer_buf_reg_89 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_420, Q => i_framebuffer_buf(89), QN => n_1134);
  i_framebuffer_buf_reg_88 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_423, Q => i_framebuffer_buf(88), QN => n_1140);
  i_framebuffer_buf_reg_87 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_424, Q => i_framebuffer_buf(87), QN => n_1146);
  i_framebuffer_buf_reg_86 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_425, Q => i_framebuffer_buf(86), QN => n_1152);
  i_framebuffer_buf_reg_85 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_558, Q => i_framebuffer_buf(85), QN => n_1158);
  i_framebuffer_buf_reg_84 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_556, Q => i_framebuffer_buf(84), QN => n_1164);
  i_framebuffer_buf_reg_83 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_551, Q => i_framebuffer_buf(83), QN => n_1170);
  i_framebuffer_buf_reg_82 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_566, Q => i_framebuffer_buf(82), QN => n_1176);
  i_framebuffer_buf_reg_81 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_564, Q => i_framebuffer_buf(81), QN => n_1182);
  i_framebuffer_buf_reg_80 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_560, Q => i_framebuffer_buf(80), QN => n_1188);
  i_framebuffer_buf_reg_44 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_307, Q => i_framebuffer_buf(44), QN => n_1194);
  i_framebuffer_buf_reg_78 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_527, Q => i_framebuffer_buf(78), QN => n_1200);
  i_framebuffer_buf_reg_77 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_491, Q => i_framebuffer_buf(77), QN => n_1206);
  i_framebuffer_buf_reg_76 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_496, Q => i_framebuffer_buf(76), QN => n_1212);
  i_framebuffer_buf_reg_10 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_427, Q => i_framebuffer_buf(10), QN => n_1218);
  i_framebuffer_buf_reg_74 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_500, Q => i_framebuffer_buf(74), QN => n_1224);
  i_framebuffer_buf_reg_73 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_345, Q => i_framebuffer_buf(73), QN => n_1230);
  i_framebuffer_buf_reg_72 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_347, Q => i_framebuffer_buf(72), QN => n_1236);
  i_framebuffer_buf_reg_45 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_515, Q => i_framebuffer_buf(45), QN => n_1242);
  i_framebuffer_buf_reg_22 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_311, Q => i_framebuffer_buf(22), QN => n_1248);
  i_framebuffer_buf_reg_69 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_357, Q => i_framebuffer_buf(69), QN => n_1254);
  i_framebuffer_buf_reg_21 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_314, Q => i_framebuffer_buf(21), QN => n_1260);
  i_framebuffer_buf_reg_67 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_410, Q => i_framebuffer_buf(67), QN => n_1266);
  i_framebuffer_buf_reg_20 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_317, Q => i_framebuffer_buf(20), QN => n_1272);
  i_framebuffer_buf_reg_65 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_397, Q => i_framebuffer_buf(65), QN => n_1278);
  i_framebuffer_buf_reg_64 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_398, Q => i_framebuffer_buf(64), QN => n_1284);
  i_framebuffer_buf_reg_63 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_401, Q => i_framebuffer_buf(63), QN => n_1290);
  i_framebuffer_buf_reg_62 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_402, Q => i_framebuffer_buf(62), QN => n_1296);
  i_framebuffer_buf_reg_61 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_380, Q => i_framebuffer_buf(61), QN => n_1302);
  i_framebuffer_buf_reg_60 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_382, Q => i_framebuffer_buf(60), QN => n_1308);
  i_framebuffer_buf_reg_59 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_363, Q => i_framebuffer_buf(59), QN => n_1314);
  i_framebuffer_buf_reg_58 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_364, Q => i_framebuffer_buf(58), QN => n_1320);
  i_framebuffer_buf_reg_57 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_365, Q => i_framebuffer_buf(57), QN => n_1326);
  i_framebuffer_buf_reg_56 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_366, Q => i_framebuffer_buf(56), QN => n_1332);
  i_framebuffer_buf_reg_138 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_417, Q => i_framebuffer_buf(138), QN => n_1338);
  i_framebuffer_buf_reg_54 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_458, Q => i_framebuffer_buf(54), QN => n_1344);
  i_framebuffer_buf_reg_53 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_443, Q => i_framebuffer_buf(53), QN => n_1350);
  i_framebuffer_buf_reg_52 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_444, Q => i_framebuffer_buf(52), QN => n_1356);
  i_framebuffer_buf_reg_129 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_503, Q => i_framebuffer_buf(129), QN => n_1362);
  i_framebuffer_buf_reg_50 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_446, Q => i_framebuffer_buf(50), QN => n_1368);
  i_framebuffer_buf_reg_49 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_518, Q => i_framebuffer_buf(49), QN => n_1374);
  i_framebuffer_buf_reg_48 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_522, Q => i_framebuffer_buf(48), QN => n_1380);
  i_framebuffer_buf_reg_46 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_525, Q => i_framebuffer_buf(46), QN => n_1386);
  i_calc_buf_out_reg_18 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_251, Q => i_calc_buf_out(18), QN => n_1392);
  i_framebuffer_buf_reg_11 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_426, Q => i_framebuffer_buf(11), QN => n_1398);
  i_framebuffer_buf_reg_47 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_526, Q => i_framebuffer_buf(47), QN => n_1404);
  i_framebuffer_buf_reg_121 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_329, Q => i_framebuffer_buf(121), QN => n_1410);
  i_framebuffer_buf_reg_12 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_400, Q => i_framebuffer_buf(12), QN => n_1416);
  i_framebuffer_buf_reg_13 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_404, Q => i_framebuffer_buf(13), QN => n_1422);
  i_framebuffer_buf_reg_51 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_445, Q => i_framebuffer_buf(51), QN => n_1428);
  i_framebuffer_buf_reg_14 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_388, Q => i_framebuffer_buf(14), QN => n_1434);
  i_framebuffer_buf_reg_38 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_407, Q => i_framebuffer_buf(38), QN => n_1440);
  i_framebuffer_buf_reg_37 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_544, Q => i_framebuffer_buf(37), QN => n_1446);
  i_framebuffer_buf_reg_36 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_545, Q => i_framebuffer_buf(36), QN => n_1452);
  i_framebuffer_buf_reg_35 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_538, Q => i_framebuffer_buf(35), QN => n_1458);
  i_framebuffer_buf_reg_34 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_539, Q => i_framebuffer_buf(34), QN => n_1464);
  i_framebuffer_buf_reg_33 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_540, Q => i_framebuffer_buf(33), QN => n_1470);
  i_framebuffer_buf_reg_32 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_541, Q => i_framebuffer_buf(32), QN => n_1476);
  i_framebuffer_buf_reg_31 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_479, Q => i_framebuffer_buf(31), QN => n_1482);
  i_framebuffer_buf_reg_30 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_480, Q => i_framebuffer_buf(30), QN => n_1488);
  i_framebuffer_buf_reg_29 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_467, Q => i_framebuffer_buf(29), QN => n_1494);
  i_framebuffer_buf_reg_28 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_468, Q => i_framebuffer_buf(28), QN => n_1500);
  i_framebuffer_buf_reg_79 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_521, Q => i_framebuffer_buf(79), QN => n_1506);
  i_framebuffer_buf_reg_26 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_470, Q => i_framebuffer_buf(26), QN => n_1512);
  i_framebuffer_buf_reg_75 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_499, Q => i_framebuffer_buf(75), QN => n_1518);
  i_framebuffer_buf_reg_24 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_309, Q => i_framebuffer_buf(24), QN => n_1524);
  i_framebuffer_buf_reg_71 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_350, Q => i_framebuffer_buf(71), QN => n_1530);
  i_calc_buf_out_reg_4 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_600, Q => i_calc_buf_out(4), QN => n_1536);
  i_calc_buf_out_reg_22 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_274, Q => i_calc_buf_out(22), QN => n_1542);
  i_calc_buf_out_reg_21 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_248, Q => i_calc_buf_out(21), QN => n_1548);
  i_framebuffer_buf_reg_19 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_392, Q => i_framebuffer_buf(19), QN => n_1554);
  i_framebuffer_buf_reg_18 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_393, Q => i_framebuffer_buf(18), QN => n_1560);
  i_framebuffer_buf_reg_17 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_384, Q => i_framebuffer_buf(17), QN => n_1566);
  i_framebuffer_buf_reg_16 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_385, Q => i_framebuffer_buf(16), QN => n_1572);
  i_calc_buf_out_reg_19 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_250, Q => i_calc_buf_out(19), QN => n_1578);
  i_framebuffer_buf_reg_15 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_387, Q => i_framebuffer_buf(15), QN => n_1584);
  i_framebuffer_buf_reg_55 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_457, Q => i_framebuffer_buf(55), QN => n_1590);
  i_framebuffer_buf_reg_137 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_511, Q => i_framebuffer_buf(137), QN => n_1596);
  i_calc_buf_out_reg_20 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_249, Q => i_calc_buf_out(20), QN => n_1602);
  i_calc_buf_out_reg_2 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_597, Q => i_calc_buf_out(2), QN => n_1608);
  i_calc_buf_out_reg_10 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_304, Q => i_calc_buf_out(10), QN => n_1614);
  i_calc_buf_out_reg_3 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_599, Q => i_calc_buf_out(3), QN => n_1620);
  i_calc_buf_out_reg_5 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_598, Q => i_calc_buf_out(5), QN => n_1626);
  i_framebuffer_buf_reg_6 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_370, Q => i_framebuffer_buf(6), QN => n_1632);
  i_framebuffer_buf_reg_5 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_358, Q => i_framebuffer_buf(5), QN => n_1638);
  i_framebuffer_buf_reg_4 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_359, Q => i_framebuffer_buf(4), QN => n_1644);
  i_framebuffer_buf_reg_3 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_360, Q => i_framebuffer_buf(3), QN => n_1650);
  i_framebuffer_buf_reg_2 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_362, Q => i_framebuffer_buf(2), QN => n_1656);
  i_framebuffer_buf_reg_27 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_469, Q => i_framebuffer_buf(27), QN => n_1662);
  i_framebuffer_buf_reg_25 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_308, Q => i_framebuffer_buf(25), QN => n_1668);
  i_calc_buf_out_reg_11 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_294, Q => i_calc_buf_out(11), QN => n_1674);
  i_calc_buf_out_reg_23 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_275, Q => i_calc_buf_out(23), QN => n_1680);
  i_framebuffer_buf_reg_23 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_310, Q => i_framebuffer_buf(23), QN => n_1686);
  i_calc_buf_out_reg_12 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_293, Q => i_calc_buf_out(12), QN => n_1692);
  i_calc_buf_out_reg_6 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_603, Q => i_calc_buf_out(6), QN => n_1698);
  i_calc_buf_out_reg_13 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_292, Q => i_calc_buf_out(13), QN => n_1704);
  i_calc_buf_out_reg_14 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_295, Q => i_calc_buf_out(14), QN => n_1710);
  i_framebuffer_buf_reg_1 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_316, Q => i_framebuffer_buf(1), QN => n_1716);
  i_calc_buf_out_reg_8 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_298, Q => i_calc_buf_out(8), QN => n_1722);
  i_calc_buf_out_reg_17 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_253, Q => i_calc_buf_out(17), QN => n_1728);
  i_sqi_address_reg_8 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_623, Q => i_sqi_address(8), QN => n_1734);
  i_framebuffer_buf_reg_0 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_325, Q => i_framebuffer_buf(0), QN => n_1740);
  i_calc_buf_out_reg_9 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_297, Q => i_calc_buf_out(9), QN => n_1746);
  i_calc_buf_out_reg_0 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_613, Q => i_calc_buf_out(0), QN => n_1752);
  i_calc_buf_out_reg_1 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_606, Q => i_calc_buf_out(1), QN => n_1758);
  i_calc_buf_out_reg_16 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_254, Q => i_calc_buf_out(16), QN => n_1764);
  i_sqi_address_reg_2 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_614, Q => i_sqi_address(2), QN => n_1770);
  i_sqi_address_reg_1 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_615, Q => i_sqi_address(1), QN => n_1776);
  i_sqi_address_reg_5 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_610, Q => i_sqi_address(5), QN => n_1782);
  i_sqi_address_reg_4 : DFKCND0BWP7T port map(CP => clk, CN => n_1, D => n_612, Q => i_sqi_address(4), QN => n_1788);
  i_sqi_address_reg_12 : DFD0BWP7T port map(CP => clk, D => n_576, Q => i_sqi_address(12), QN => n_1794);
  i_sqi_address_reg_14 : DFKCND0BWP7T port map(CP => clk, CN => n_631, D => n_514, Q => i_sqi_address(14), QN => n_1800);
  i_sqi_address_reg_9 : DFD0BWP7T port map(CP => clk, D => n_628, Q => i_sqi_address(9), QN => n_1806);
  g29551 : IND2D1BWP7T port map(A1 => n_323, B1 => n_193, ZN => n_1810);
  g29552 : IND2D1BWP7T port map(A1 => n_313, B1 => n_546, ZN => n_1811);
  tie_0_cell : TIELBWP7T port map(ZN => framebuffer_buf(117));

end synthesised;
