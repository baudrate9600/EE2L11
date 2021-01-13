
library ieee;
use ieee.std_logic_1164.all;
--library tcb018gbwp7t;
--use tcb018gbwp7t.all;

architecture synthesised of memory is

  component DFQD1BWP7T
    port(CP, D : in std_logic; Q : out std_logic);
  end component;

  component OAI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component ND3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component AOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI31D0BWP7T
    port(A1, A2, A3, B : in std_logic; ZN : out std_logic);
  end component;

  component AO22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component MOAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; Z : out std_logic);
  end component;

  component OAI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component AOI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OAI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OAI211D0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component ND4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AO222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; Z : out std_logic);
  end component;

  component AO21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component OAI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component OAI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component CKND4BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component INR2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component CKND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI222D0BWP7T
    port(A1, A2, B1, B2, C1, C2 : in std_logic; ZN : out std_logic);
  end component;

  component LND1BWP7T
    port(EN, D : in std_logic; Q, QN : out std_logic);
  end component;

  component ND2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AO211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component AOI21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component OA33D0BWP7T
    port(A1, A2, A3, B1, B2, B3 : in std_logic; Z : out std_logic);
  end component;

  component AOI32D0BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component LHD1BWP7T
    port(E, D : in std_logic; Q, QN : out std_logic);
  end component;

  component IOA21D1BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component AOI32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component IND3D1BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211D1BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component OA21D0BWP7T
    port(A1, A2, B : in std_logic; Z : out std_logic);
  end component;

  component INVD1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component CKND1BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component NR2XD0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component INVD0BWP7T
    port(I : in std_logic; ZN : out std_logic);
  end component;

  component AOI33D1BWP7T
    port(A1, A2, A3, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component CKAN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component IND2D1BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component MAOI22D0BWP7T
    port(A1, A2, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component NR4D0BWP7T
    port(A1, A2, A3, A4 : in std_logic; ZN : out std_logic);
  end component;

  component AOI211XD0BWP7T
    port(A1, A2, B, C : in std_logic; ZN : out std_logic);
  end component;

  component IOA21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component IAO21D0BWP7T
    port(A1, A2, B : in std_logic; ZN : out std_logic);
  end component;

  component LNQD1BWP7T
    port(EN, D : in std_logic; Q : out std_logic);
  end component;

  component OA211D0BWP7T
    port(A1, A2, B, C : in std_logic; Z : out std_logic);
  end component;

  component IND3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component INR2XD0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component IND4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D1BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component NR2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component OA32D1BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component NR3D0BWP7T
    port(A1, A2, A3 : in std_logic; ZN : out std_logic);
  end component;

  component OR2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D4BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component AOI221D0BWP7T
    port(A1, A2, B1, B2, C : in std_logic; ZN : out std_logic);
  end component;

  component INR3D0BWP7T
    port(A1, B1, B2 : in std_logic; ZN : out std_logic);
  end component;

  component AO32D0BWP7T
    port(A1, A2, A3, B1, B2 : in std_logic; Z : out std_logic);
  end component;

  component AN2D4BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component AN3D0BWP7T
    port(A1, A2, A3 : in std_logic; Z : out std_logic);
  end component;

  component IND2D0BWP7T
    port(A1, B1 : in std_logic; ZN : out std_logic);
  end component;

  component AN2D1BWP7T
    port(A1, A2 : in std_logic; Z : out std_logic);
  end component;

  component ND2D0BWP7T
    port(A1, A2 : in std_logic; ZN : out std_logic);
  end component;

  component DFKCNQD1BWP7T
    port(CP, CN, D : in std_logic; Q : out std_logic);
  end component;

  component INR2D1BWP7T
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

  component INR4D0BWP7T
    port(A1, B1, B2, B3 : in std_logic; ZN : out std_logic);
  end component;

  component TIELBWP7T
    port(ZN : out std_logic);
  end component;

  signal counter : std_logic_vector(7 downto 0);
  signal state : std_logic_vector(3 downto 0);
  signal row_buf : std_logic_vector(5 downto 0);
  signal new_row_buf : std_logic_vector(5 downto 0);
  signal UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2, UNCONNECTED3 : std_logic;
  signal UNCONNECTED4, UNCONNECTED5, UNCONNECTED6, UNCONNECTED7, UNCONNECTED8 : std_logic;
  signal calc_buf_out_0_2868, calc_buf_out_1_2869, calc_buf_out_2_2870, calc_buf_out_3_2871, calc_buf_out_4_2872 : std_logic;
  signal calc_buf_out_5_2873, calc_buf_out_6_2874, calc_buf_out_7_2875, calc_buf_out_8_2876, calc_buf_out_9_2877 : std_logic;
  signal calc_buf_out_10_2878, calc_buf_out_11_2879, calc_buf_out_12_2880, calc_buf_out_13_2881, calc_buf_out_14_2882 : std_logic;
  signal calc_buf_out_15_2883, calc_buf_out_16_2884, calc_buf_out_17_2885, calc_buf_out_18_2886, calc_buf_out_19_2887 : std_logic;
  signal calc_buf_out_20_2888, calc_buf_out_21_2889, calc_buf_out_22_2890, calc_buf_out_23_2891, framebuffer_buf_0_2892 : std_logic;
  signal framebuffer_buf_1_2893, framebuffer_buf_2_2894, framebuffer_buf_3_2895, framebuffer_buf_4_2896, framebuffer_buf_5_2897 : std_logic;
  signal framebuffer_buf_6_2898, framebuffer_buf_7_2899, framebuffer_buf_8_2900, framebuffer_buf_9_2901, framebuffer_buf_10_2902 : std_logic;
  signal framebuffer_buf_11_2903, framebuffer_buf_12_2904, framebuffer_buf_13_2905, framebuffer_buf_14_2906, framebuffer_buf_15_2907 : std_logic;
  signal framebuffer_buf_16_2908, framebuffer_buf_17_2909, framebuffer_buf_18_2910, framebuffer_buf_19_2911, framebuffer_buf_20_2912 : std_logic;
  signal framebuffer_buf_21_2913, framebuffer_buf_22_2914, framebuffer_buf_23_2915, framebuffer_buf_24_2916, framebuffer_buf_25_2917 : std_logic;
  signal framebuffer_buf_26_2918, framebuffer_buf_27_2919, framebuffer_buf_28_2920, framebuffer_buf_29_2921, framebuffer_buf_30_2922 : std_logic;
  signal framebuffer_buf_31_2923, framebuffer_buf_32_2924, framebuffer_buf_33_2925, framebuffer_buf_34_2926, framebuffer_buf_35_2927 : std_logic;
  signal framebuffer_buf_36_2928, framebuffer_buf_37_2929, framebuffer_buf_38_2930, framebuffer_buf_39_2931, framebuffer_buf_40_2932 : std_logic;
  signal framebuffer_buf_41_2933, framebuffer_buf_42_2934, framebuffer_buf_43_2935, framebuffer_buf_44_2936, framebuffer_buf_45_2937 : std_logic;
  signal framebuffer_buf_46_2938, framebuffer_buf_47_2939, framebuffer_buf_48_2940, framebuffer_buf_49_2941, framebuffer_buf_50_2942 : std_logic;
  signal framebuffer_buf_51_2943, framebuffer_buf_52_2944, framebuffer_buf_53_2945, framebuffer_buf_54_2946, framebuffer_buf_55_2947 : std_logic;
  signal framebuffer_buf_56_2948, framebuffer_buf_57_2949, framebuffer_buf_58_2950, framebuffer_buf_59_2951, framebuffer_buf_60_2952 : std_logic;
  signal framebuffer_buf_61_2953, framebuffer_buf_62_2954, framebuffer_buf_63_2955, framebuffer_buf_64_2956, framebuffer_buf_65_2957 : std_logic;
  signal framebuffer_buf_66_2958, framebuffer_buf_67_2959, framebuffer_buf_68_2960, framebuffer_buf_69_2961, framebuffer_buf_70_2962 : std_logic;
  signal framebuffer_buf_71_2963, framebuffer_buf_72_2964, framebuffer_buf_73_2965, framebuffer_buf_74_2966, framebuffer_buf_75_2967 : std_logic;
  signal framebuffer_buf_76_2968, framebuffer_buf_77_2969, framebuffer_buf_78_2970, framebuffer_buf_79_2971, framebuffer_buf_80_2972 : std_logic;
  signal framebuffer_buf_81_2973, framebuffer_buf_82_2974, framebuffer_buf_83_2975, framebuffer_buf_84_2976, framebuffer_buf_85_2977 : std_logic;
  signal framebuffer_buf_86_2978, framebuffer_buf_87_2979, framebuffer_buf_88_2980, framebuffer_buf_89_2981, framebuffer_buf_90_2982 : std_logic;
  signal framebuffer_buf_91_2983, framebuffer_buf_92_2984, framebuffer_buf_93_2985, framebuffer_buf_94_2986, framebuffer_buf_95_2987 : std_logic;
  signal framebuffer_buf_96_2988, framebuffer_buf_97_2989, framebuffer_buf_98_2990, framebuffer_buf_99_2991, framebuffer_buf_100_2992 : std_logic;
  signal framebuffer_buf_101_2993, framebuffer_buf_102_2994, framebuffer_buf_103_2995, framebuffer_buf_104_2996, framebuffer_buf_105_2997 : std_logic;
  signal framebuffer_buf_106_2998, framebuffer_buf_107_2999, framebuffer_buf_108_3000, framebuffer_buf_109_3001, framebuffer_buf_110_3002 : std_logic;
  signal framebuffer_buf_111_3003, framebuffer_buf_112_3004, framebuffer_buf_113_3005, framebuffer_buf_114_3006, framebuffer_buf_115_3007 : std_logic;
  signal framebuffer_buf_118_3010, framebuffer_buf_119_3011, framebuffer_buf_120_3012, framebuffer_buf_121_3013, framebuffer_buf_122_3014 : std_logic;
  signal framebuffer_buf_123_3015, framebuffer_buf_124_3016, framebuffer_buf_125_3017, framebuffer_buf_126_3018, framebuffer_buf_127_3019 : std_logic;
  signal framebuffer_buf_128_3020, framebuffer_buf_129_3021, framebuffer_buf_130_3022, framebuffer_buf_131_3023, framebuffer_buf_132_3024 : std_logic;
  signal framebuffer_buf_133_3025, framebuffer_buf_134_3026, framebuffer_buf_135_3027, framebuffer_buf_136_3028, framebuffer_buf_137_3029 : std_logic;
  signal framebuffer_buf_138_3030, framebuffer_buf_139_3031, framebuffer_buf_140_3032, framebuffer_buf_141_3033, framebuffer_buf_142_3034 : std_logic;
  signal framebuffer_buf_143_3035, framebuffer_buf_144_3036, framebuffer_buf_145_3037, framebuffer_buf_146_3038, framebuffer_buf_147_3039 : std_logic;
  signal framebuffer_buf_148_3040, framebuffer_buf_149_3041, framebuffer_buf_150_3042, framebuffer_buf_151_3043, framebuffer_buf_152_3044 : std_logic;
  signal framebuffer_buf_153_3045, framebuffer_buf_154_3046, framebuffer_buf_155_3047, framebuffer_buf_156_3048, framebuffer_buf_157_3049 : std_logic;
  signal n_0, n_2, n_3, n_4, n_5 : std_logic;
  signal n_6, n_7, n_8, n_9, n_10 : std_logic;
  signal n_11, n_12, n_13, n_14, n_15 : std_logic;
  signal n_16, n_17, n_18, n_19, n_20 : std_logic;
  signal n_21, n_22, n_23, n_24, n_25 : std_logic;
  signal n_26, n_27, n_28, n_29, n_30 : std_logic;
  signal n_31, n_33, n_34, n_35, n_36 : std_logic;
  signal n_37, n_38, n_39, n_40, n_41 : std_logic;
  signal n_42, n_44, n_45, n_46, n_47 : std_logic;
  signal n_48, n_49, n_50, n_51, n_52 : std_logic;
  signal n_53, n_54, n_55, n_56, n_57 : std_logic;
  signal n_58, n_59, n_60, n_61, n_62 : std_logic;
  signal n_63, n_64, n_65, n_66, n_67 : std_logic;
  signal n_68, n_69, n_70, n_71, n_72 : std_logic;
  signal n_73, n_74, n_75, n_76, n_77 : std_logic;
  signal n_78, n_79, n_80, n_82, n_83 : std_logic;
  signal n_84, n_85, n_86, n_87, n_88 : std_logic;
  signal n_89, n_90, n_91, n_92, n_93 : std_logic;
  signal n_94, n_96, n_97, n_98, n_99 : std_logic;
  signal n_100, n_101, n_102, n_103, n_104 : std_logic;
  signal n_105, n_106, n_107, n_108, n_109 : std_logic;
  signal n_110, n_111, n_112, n_113, n_114 : std_logic;
  signal n_115, n_116, n_117, n_118, n_119 : std_logic;
  signal n_121, n_122, n_123, n_124, n_125 : std_logic;
  signal n_126, n_127, n_128, n_129, n_130 : std_logic;
  signal n_131, n_132, n_133, n_134, n_135 : std_logic;
  signal n_136, n_137, n_138, n_139, n_140 : std_logic;
  signal n_141, n_142, n_143, n_144, n_145 : std_logic;
  signal n_146, n_147, n_148, n_149, n_150 : std_logic;
  signal n_151, n_152, n_153, n_154, n_155 : std_logic;
  signal n_156, n_157, n_158, n_159, n_160 : std_logic;
  signal n_161, n_162, n_163, n_164, n_165 : std_logic;
  signal n_166, n_167, n_168, n_169, n_170 : std_logic;
  signal n_171, n_172, n_173, n_174, n_175 : std_logic;
  signal n_176, n_177, n_178, n_179, n_180 : std_logic;
  signal n_181, n_182, n_183, n_184, n_185 : std_logic;
  signal n_186, n_187, n_188, n_189, n_190 : std_logic;
  signal n_191, n_192, n_193, n_194, n_195 : std_logic;
  signal n_196, n_197, n_198, n_199, n_200 : std_logic;
  signal n_201, n_202, n_203, n_204, n_206 : std_logic;
  signal n_207, n_208, n_209, n_210, n_211 : std_logic;
  signal n_212, n_213, n_214, n_215, n_216 : std_logic;
  signal n_217, n_218, n_219, n_220, n_221 : std_logic;
  signal n_222, n_223, n_224, n_225, n_226 : std_logic;
  signal n_227, n_228, n_229, n_230, n_231 : std_logic;
  signal n_232, n_233, n_234, n_235, n_236 : std_logic;
  signal n_237, n_238, n_239, n_240, n_241 : std_logic;
  signal n_242, n_243, n_244, n_245, n_246 : std_logic;
  signal n_247, n_248, n_251, n_252, n_253 : std_logic;
  signal n_254, n_255, n_256, n_257, n_258 : std_logic;
  signal n_259, n_260, n_261, n_262, n_263 : std_logic;
  signal n_264, n_265, n_266, n_267, n_268 : std_logic;
  signal n_269, n_270, n_271, n_272, n_273 : std_logic;
  signal n_274, n_275, n_276, n_277, n_278 : std_logic;
  signal n_279, n_280, n_281, n_282, n_283 : std_logic;
  signal n_284, n_285, n_286, n_287, n_288 : std_logic;
  signal n_289, n_290, n_291, n_292, n_293 : std_logic;
  signal n_294, n_296, n_297, n_298, n_299 : std_logic;
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
  signal n_385, n_386, n_387, n_390, n_391 : std_logic;
  signal n_392, n_393, n_394, n_395, n_398 : std_logic;
  signal n_399, n_400, n_401, n_402, n_403 : std_logic;
  signal n_404, n_405, n_406, n_407, n_408 : std_logic;
  signal n_409, n_410, n_411, n_412, n_413 : std_logic;
  signal n_414, n_415, n_416, n_417, n_418 : std_logic;
  signal n_419, n_420, n_421, n_422, n_423 : std_logic;
  signal n_424, n_425, n_426, n_427, n_428 : std_logic;
  signal n_429, n_430, n_431, n_432, n_433 : std_logic;
  signal n_434, n_435, n_436, n_437, n_438 : std_logic;
  signal n_439, n_440, n_441, n_442, n_443 : std_logic;
  signal n_444, n_445, n_446, n_447, n_448 : std_logic;
  signal n_449, n_450, n_451, n_452, n_453 : std_logic;
  signal n_454, n_455, n_456, n_457, n_458 : std_logic;
  signal n_459, n_460, n_461, n_462, n_463 : std_logic;
  signal n_464, n_465, n_466, n_467, n_468 : std_logic;
  signal n_469, n_470, n_472, n_473, n_474 : std_logic;
  signal n_475, n_476, n_477, n_478, n_479 : std_logic;
  signal n_480, n_481, n_482, n_483, n_484 : std_logic;
  signal n_485, n_486, n_487, n_488, n_489 : std_logic;
  signal n_490, n_491, n_492, n_493, n_494 : std_logic;
  signal n_495, n_496, n_497, n_498, n_499 : std_logic;
  signal n_500, n_501, n_502, n_503, n_504 : std_logic;
  signal n_505, n_506, n_507, n_508, n_509 : std_logic;
  signal n_510, n_511, n_512, n_513, n_514 : std_logic;
  signal n_515, n_516, n_517, n_519, n_520 : std_logic;
  signal n_521, n_522, n_523, n_524, n_525 : std_logic;
  signal n_526, n_527, n_528, n_529, n_530 : std_logic;
  signal n_531, n_532, n_533, n_534, n_535 : std_logic;
  signal n_536, n_537, n_538, n_539, n_540 : std_logic;
  signal n_541, n_542, n_543, n_544, n_546 : std_logic;
  signal n_547, n_548, n_549, n_550, n_551 : std_logic;
  signal n_552, n_553, n_554, n_555, n_556 : std_logic;
  signal n_557, n_558, n_559, n_560, n_561 : std_logic;
  signal n_562, n_563, n_564, n_565, n_566 : std_logic;
  signal n_567, n_568, n_569, n_570, n_571 : std_logic;
  signal n_572, n_573, n_574, n_575, n_576 : std_logic;
  signal n_577, n_578, n_579, n_580, n_581 : std_logic;
  signal n_582, n_583, n_584, n_585, n_586 : std_logic;
  signal n_587, n_588, n_589, n_590, n_591 : std_logic;
  signal n_592, n_593, n_594, n_595, n_596 : std_logic;
  signal n_597, n_598, n_599, n_600, n_601 : std_logic;
  signal n_603, n_604, n_605, n_606, n_607 : std_logic;
  signal n_608, n_609, n_610, n_611, n_612 : std_logic;
  signal n_645, n_651, n_657, n_663, n_669 : std_logic;
  signal n_675, n_681, n_687, n_693, n_699 : std_logic;
  signal n_705, n_711, n_717, n_723, n_729 : std_logic;
  signal n_735, n_741, n_747, n_753, n_759 : std_logic;
  signal n_765, n_771, n_777, n_783, n_789 : std_logic;
  signal n_795, n_801, n_807, n_813, n_819 : std_logic;
  signal n_825, n_831, n_837, n_843, n_849 : std_logic;
  signal n_855, n_861, n_867, n_873, n_879 : std_logic;
  signal n_885, n_891, n_897, n_903, n_909 : std_logic;
  signal n_915, n_921, n_927, n_933, n_939 : std_logic;
  signal n_945, n_951, n_957, n_963, n_969 : std_logic;
  signal n_975, n_981, n_987, n_993, n_999 : std_logic;
  signal n_1005, n_1011, n_1017, n_1023, n_1029 : std_logic;
  signal n_1035, n_1041, n_1047, n_1053, n_1059 : std_logic;
  signal n_1065, n_1071, n_1077, n_1083, n_1089 : std_logic;
  signal n_1095, n_1101, n_1107, n_1113, n_1119 : std_logic;
  signal n_1125, n_1131, n_1137, n_1143, n_1149 : std_logic;
  signal n_1155, n_1161, n_1167, n_1173, n_1179 : std_logic;
  signal n_1185, n_1191, n_1197, n_1203, n_1209 : std_logic;
  signal n_1215, n_1221, n_1227, n_1233, n_1239 : std_logic;
  signal n_1245, n_1251, n_1257, n_1263, n_1269 : std_logic;
  signal n_1275, n_1281, n_1287, n_1293, n_1299 : std_logic;
  signal n_1305, n_1311, n_1317, n_1323, n_1329 : std_logic;
  signal n_1335, n_1341, n_1347, n_1353, n_1359 : std_logic;
  signal n_1365, n_1371, n_1377, n_1383, n_1389 : std_logic;
  signal n_1395, n_1401, n_1407, n_1413, n_1419 : std_logic;
  signal n_1425, n_1431, n_1437, n_1443, n_1449 : std_logic;
  signal n_1455, n_1461, n_1467, n_1473, n_1479 : std_logic;
  signal n_1485, n_1491, n_1497, n_1503, n_1509 : std_logic;
  signal n_1515, n_1521, n_1527, n_1533, n_1539 : std_logic;
  signal n_1545, n_1551, n_1557, n_1563, n_1569 : std_logic;
  signal n_1575, n_1581, n_1587, n_1593, n_1599 : std_logic;
  signal n_1605, n_1611, n_1617, n_1623, n_1629 : std_logic;
  signal n_1635, n_1641, n_1647, n_1653, n_1659 : std_logic;
  signal n_1665, n_1671, n_1677, n_1683, n_1689 : std_logic;
  signal n_1695, n_1701, n_1707, n_1713, n_1719 : std_logic;
  signal n_1725, n_1731, n_1737, n_1743, n_1749 : std_logic;
  signal n_1755, n_1761, n_1767, n_1773, n_1779 : std_logic;
  signal n_1785, n_1791, n_1797, n_1803, n_1807 : std_logic;
  signal n_1808, sqi_address_0_3050, sqi_address_1_3051, sqi_address_2_3052, sqi_address_3_3053 : std_logic;
  signal sqi_address_4_3054, sqi_address_5_3055, sqi_address_6_3056, sqi_address_7_3057, sqi_address_8_3058 : std_logic;
  signal sqi_address_9_3059, sqi_address_10_3060, sqi_address_11_3061, sqi_address_12_3062, sqi_address_13_3063 : std_logic;
  signal sqi_address_14_3064 : std_logic;

begin

  framebuffer_buf(116) <= framebuffer_buf(117);
  sqi_address_reg_10 : DFQD1BWP7T port map(CP => clk, D => n_601, Q => sqi_address_10_3060);
  g19938 : OAI211D1BWP7T port map(A1 => n_533, A2 => n_79, B => n_592, C => n_181, ZN => n_601);
  g19963 : OAI31D0BWP7T port map(A1 => n_274, A2 => n_75, A3 => n_598, B => n_595, ZN => n_600);
  g19967 : OAI31D0BWP7T port map(A1 => n_565, A2 => n_225, A3 => n_598, B => n_594, ZN => n_599);
  counter_reg_7 : DFQD1BWP7T port map(CP => clk, D => n_596, Q => counter(7));
  g19946 : ND3D0BWP7T port map(A1 => n_579, A2 => n_217, A3 => n_264, ZN => n_597);
  g19944 : OAI31D0BWP7T port map(A1 => counter(7), A2 => n_3, A3 => n_135, B => n_577, ZN => n_596);
  g19987 : AOI22D0BWP7T port map(A1 => n_567, A2 => y(5), B1 => n_593, B2 => sqi_address_5_3055, ZN => n_595);
  g19986 : AOI22D0BWP7T port map(A1 => n_569, A2 => y(4), B1 => n_593, B2 => sqi_address_4_3054, ZN => n_594);
  g19945 : AOI31D0BWP7T port map(A1 => n_76, A2 => n_166, A3 => sqi_address_10_3060, B => n_572, ZN => n_592);
  g19952 : AO22D0BWP7T port map(A1 => n_589, A2 => calc_buf_out_1_2869, B1 => sqi_data_in(1), B2 => n_583, Z => n_591);
  g19953 : MOAI22D0BWP7T port map(A1 => n_586, A2 => n_538, B1 => n_589, B2 => calc_buf_out_6_2874, ZN => n_590);
  g20116 : AO221D0BWP7T port map(A1 => n_568, A2 => y(3), B1 => n_593, B2 => sqi_address_3_3053, C => n_226, Z => n_588);
  g19951 : MOAI22D0BWP7T port map(A1 => n_586, A2 => n_557, B1 => n_589, B2 => calc_buf_out_2_2870, ZN => n_587);
  g19954 : MOAI22D0BWP7T port map(A1 => n_586, A2 => n_535, B1 => n_589, B2 => calc_buf_out_7_2875, ZN => n_585);
  g19955 : AO22D0BWP7T port map(A1 => n_589, A2 => calc_buf_out_0_2868, B1 => sqi_data_in(0), B2 => n_583, Z => n_584);
  g19956 : MOAI22D0BWP7T port map(A1 => n_586, A2 => n_548, B1 => n_589, B2 => calc_buf_out_4_2872, ZN => n_582);
  g19989 : OAI221D0BWP7T port map(A1 => n_542, A2 => n_71, B1 => n_41, B2 => n_530, C => n_271, ZN => n_581);
  g19958 : MOAI22D0BWP7T port map(A1 => n_586, A2 => n_546, B1 => n_589, B2 => calc_buf_out_3_2871, ZN => n_580);
  g19988 : AOI211D0BWP7T port map(A1 => n_593, A2 => sqi_address_7_3057, B => n_562, C => n_254, ZN => n_579);
  g19957 : MOAI22D0BWP7T port map(A1 => n_586, A2 => n_551, B1 => n_589, B2 => calc_buf_out_5_2873, ZN => n_578);
  counter_reg_5 : DFQD1BWP7T port map(CP => clk, D => n_570, Q => counter(5));
  g19965 : OAI21D0BWP7T port map(A1 => n_576, A2 => n_35, B => counter(7), ZN => n_577);
  g20120 : OAI211D0BWP7T port map(A1 => n_47, A2 => n_253, B => n_522, C => n_281, ZN => n_575);
  g20123 : OAI31D0BWP7T port map(A1 => n_265, A2 => n_237, A3 => n_238, B => n_561, ZN => n_574);
  g19964 : ND4D0BWP7T port map(A1 => n_290, A2 => n_311, A3 => n_563, A4 => n_178, ZN => n_573);
  g19966 : ND4D0BWP7T port map(A1 => n_413, A2 => n_285, A3 => n_150, A4 => n_122, ZN => n_572);
  g20119 : AO222D0BWP7T port map(A1 => n_593, A2 => sqi_address_2_3052, B1 => n_266, B2 => y(2), C1 => n_270, C2 => n_134, Z => n_571);
  g19985 : AO21D0BWP7T port map(A1 => n_372, A2 => counter(5), B => n_1808, Z => n_570);
  g20212 : AO21D0BWP7T port map(A1 => n_566, A2 => y(3), B => n_568, Z => n_569);
  g20217 : AO21D0BWP7T port map(A1 => n_566, A2 => n_565, B => n_568, Z => n_567);
  g19990 : ND4D0BWP7T port map(A1 => n_495, A2 => n_563, A3 => n_199, A4 => n_195, ZN => n_564);
  g20230 : OAI32D1BWP7T port map(A1 => n_91, A2 => n_90, A3 => n_598, B1 => n_106, B2 => n_541, ZN => n_562);
  g20228 : AOI22D0BWP7T port map(A1 => n_269, A2 => y(1), B1 => n_593, B2 => sqi_address_1_3051, ZN => n_561);
  g19991 : OAI222D0BWP7T port map(A1 => n_492, A2 => n_554, B1 => n_555, B2 => n_149, C1 => n_284, C2 => n_519, ZN => n_560);
  g20124 : OAI211D1BWP7T port map(A1 => n_280, A2 => n_167, B => n_286, C => n_137, ZN => n_559);
  g19999 : OAI211D1BWP7T port map(A1 => sqi_finished, A2 => n_131, B => n_260, C => n_139, ZN => n_589);
  g20103 : MOAI22D0BWP7T port map(A1 => n_552, A2 => n_557, B1 => n_550, B2 => calc_buf_out_18_2886, ZN => n_558);
  g20099 : OAI22D0BWP7T port map(A1 => n_555, A2 => n_49, B1 => n_554, B2 => n_88, ZN => n_556);
  g20100 : MOAI22D0BWP7T port map(A1 => n_552, A2 => n_551, B1 => n_550, B2 => calc_buf_out_21_2889, ZN => n_553);
  g20101 : MOAI22D0BWP7T port map(A1 => n_552, A2 => n_548, B1 => n_550, B2 => calc_buf_out_20_2888, ZN => n_549);
  g20102 : MOAI22D0BWP7T port map(A1 => n_552, A2 => n_546, B1 => n_550, B2 => calc_buf_out_19_2887, ZN => n_547);
  g20392 : CKND4BWP7T port map(I => n_604, ZN => sqi_rw);
  g20242 : MOAI22D0BWP7T port map(A1 => n_539, A2 => n_546, B1 => n_537, B2 => framebuffer_buf_149_3041, ZN => n_544);
  g20357 : MOAI22D0BWP7T port map(A1 => n_528, A2 => n_557, B1 => n_527, B2 => framebuffer_buf_154_3046, ZN => n_543);
  g20401 : INR2D0BWP7T port map(A1 => n_541, B1 => n_275, ZN => n_542);
  g20233 : MOAI22D0BWP7T port map(A1 => n_539, A2 => n_538, B1 => n_537, B2 => framebuffer_buf_152_3044, ZN => n_540);
  g20234 : MOAI22D0BWP7T port map(A1 => n_539, A2 => n_535, B1 => n_537, B2 => framebuffer_buf_153_3045, ZN => n_536);
  g20216 : OAI221D0BWP7T port map(A1 => n_164, A2 => n_216, B1 => n_490, B2 => n_533, C => n_288, ZN => n_534);
  g20108 : MOAI22D0BWP7T port map(A1 => n_552, A2 => n_535, B1 => n_550, B2 => calc_buf_out_23_2891, ZN => n_532);
  g20241 : MOAI22D0BWP7T port map(A1 => n_539, A2 => n_557, B1 => n_537, B2 => framebuffer_buf_148_3040, ZN => n_531);
  g20393 : CKND2D1BWP7T port map(A1 => n_541, A2 => n_530, ZN => n_568);
  g20361 : MOAI22D0BWP7T port map(A1 => n_528, A2 => n_551, B1 => n_527, B2 => framebuffer_buf_157_3049, ZN => n_529);
  g20243 : MOAI22D0BWP7T port map(A1 => n_539, A2 => n_548, B1 => n_537, B2 => framebuffer_buf_150_3042, ZN => n_526);
  g20244 : MOAI22D0BWP7T port map(A1 => n_539, A2 => n_551, B1 => n_537, B2 => framebuffer_buf_151_3043, ZN => n_525);
  g20121 : OAI21D0BWP7T port map(A1 => n_554, A2 => counter(2), B => n_273, ZN => n_524);
  g20109 : MOAI22D0BWP7T port map(A1 => n_552, A2 => n_538, B1 => n_550, B2 => calc_buf_out_22_2890, ZN => n_523);
  g20213 : AOI22D0BWP7T port map(A1 => n_494, A2 => sqi_address_8_3058, B1 => n_252, B2 => counter(2), ZN => n_522);
  g20360 : MOAI22D0BWP7T port map(A1 => n_528, A2 => n_548, B1 => n_527, B2 => framebuffer_buf_156_3048, ZN => n_521);
  g20358 : MOAI22D0BWP7T port map(A1 => n_528, A2 => n_546, B1 => n_527, B2 => framebuffer_buf_155_3047, ZN => n_520);
  g20179 : OAI211D1BWP7T port map(A1 => counter(5), A2 => n_519, B => n_555, C => n_371, ZN => n_576);
  g20131 : CKND4BWP7T port map(I => n_610, ZN => sqi_data_out(2));
  g20367 : MOAI22D0BWP7T port map(A1 => n_508, A2 => n_515, B1 => n_514, B2 => framebuffer_buf_44_2936, ZN => n_517);
  g20368 : MOAI22D0BWP7T port map(A1 => n_506, A2 => n_515, B1 => n_514, B2 => framebuffer_buf_45_2937, ZN => n_516);
  g20370 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_515, B1 => n_514, B2 => framebuffer_buf_46_2938, ZN => n_513);
  g20371 : MOAI22D0BWP7T port map(A1 => n_500, A2 => n_515, B1 => n_514, B2 => framebuffer_buf_47_2939, ZN => n_512);
  g20372 : MOAI22D0BWP7T port map(A1 => n_498, A2 => n_515, B1 => n_514, B2 => framebuffer_buf_48_2940, ZN => n_511);
  g20373 : MOAI22D0BWP7T port map(A1 => n_496, A2 => n_515, B1 => n_514, B2 => framebuffer_buf_49_2941, ZN => n_510);
  g20374 : MOAI22D0BWP7T port map(A1 => n_508, A2 => n_505, B1 => n_504, B2 => framebuffer_buf_68_2960, ZN => n_509);
  g20375 : MOAI22D0BWP7T port map(A1 => n_506, A2 => n_505, B1 => n_504, B2 => framebuffer_buf_69_2961, ZN => n_507);
  g20376 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_505, B1 => n_504, B2 => framebuffer_buf_70_2962, ZN => n_503);
  g20377 : MOAI22D0BWP7T port map(A1 => n_500, A2 => n_505, B1 => n_504, B2 => framebuffer_buf_71_2963, ZN => n_501);
  g20378 : MOAI22D0BWP7T port map(A1 => n_498, A2 => n_505, B1 => n_504, B2 => framebuffer_buf_72_2964, ZN => n_499);
  g20379 : MOAI22D0BWP7T port map(A1 => n_496, A2 => n_505, B1 => n_504, B2 => framebuffer_buf_73_2965, ZN => n_497);
  g20226 : AOI222D0BWP7T port map(A1 => n_494, A2 => sqi_address_11_3061, B1 => n_213, B2 => n_25, C1 => n_165, C2 => n_206, ZN => n_495);
  g20380 : MOAI22D0BWP7T port map(A1 => n_508, A2 => n_492, B1 => n_488, B2 => framebuffer_buf_92_2984, ZN => n_493);
  g20353 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_490, B1 => n_447, B2 => framebuffer_buf_144_3036, ZN => n_491);
  g20381 : MOAI22D0BWP7T port map(A1 => n_506, A2 => n_492, B1 => n_488, B2 => framebuffer_buf_93_2985, ZN => n_489);
  g20382 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_492, B1 => n_488, B2 => framebuffer_buf_94_2986, ZN => n_487);
  g20227 : AO22D0BWP7T port map(A1 => n_481, A2 => framebuffer_buf_1_2893, B1 => sqi_data_in(1), B2 => n_480, Z => n_486);
  g20383 : MOAI22D0BWP7T port map(A1 => n_500, A2 => n_492, B1 => n_488, B2 => framebuffer_buf_95_2987, ZN => n_485);
  g20384 : MOAI22D0BWP7T port map(A1 => n_498, A2 => n_492, B1 => n_488, B2 => framebuffer_buf_96_2988, ZN => n_484);
  g20385 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_548, B1 => n_403, B2 => framebuffer_buf_88_2980, ZN => n_483);
  g20229 : AO22D0BWP7T port map(A1 => n_481, A2 => framebuffer_buf_0_2892, B1 => sqi_data_in(0), B2 => n_480, Z => n_482);
  g20349 : MOAI22D0BWP7T port map(A1 => n_498, A2 => n_420, B1 => n_419, B2 => framebuffer_buf_122_3014, ZN => n_479);
  sqi_rw_reg : LND1BWP7T port map(EN => n_34, D => n_251, Q => UNCONNECTED, QN => n_604);
  g20231 : MOAI22D0BWP7T port map(A1 => n_476, A2 => n_538, B1 => n_475, B2 => framebuffer_buf_54_2946, ZN => n_478);
  g20232 : MOAI22D0BWP7T port map(A1 => n_476, A2 => n_535, B1 => n_475, B2 => framebuffer_buf_55_2947, ZN => n_477);
  g20235 : MOAI22D0BWP7T port map(A1 => n_476, A2 => n_557, B1 => n_475, B2 => framebuffer_buf_50_2942, ZN => n_474);
  g20236 : MOAI22D0BWP7T port map(A1 => n_476, A2 => n_546, B1 => n_475, B2 => framebuffer_buf_51_2943, ZN => n_473);
  g20237 : MOAI22D0BWP7T port map(A1 => n_476, A2 => n_548, B1 => n_475, B2 => framebuffer_buf_52_2944, ZN => n_472);
  g20411 : CKND4BWP7T port map(I => n_603, ZN => single);
  g20238 : MOAI22D0BWP7T port map(A1 => n_476, A2 => n_551, B1 => n_475, B2 => framebuffer_buf_53_2945, ZN => n_470);
  g20239 : MOAI22D0BWP7T port map(A1 => n_467, A2 => n_538, B1 => n_466, B2 => framebuffer_buf_60_2952, ZN => n_469);
  g20240 : MOAI22D0BWP7T port map(A1 => n_467, A2 => n_535, B1 => n_466, B2 => framebuffer_buf_61_2953, ZN => n_468);
  g20245 : MOAI22D0BWP7T port map(A1 => n_467, A2 => n_557, B1 => n_466, B2 => framebuffer_buf_56_2948, ZN => n_465);
  g20246 : MOAI22D0BWP7T port map(A1 => n_467, A2 => n_546, B1 => n_466, B2 => framebuffer_buf_57_2949, ZN => n_464);
  g20247 : MOAI22D0BWP7T port map(A1 => n_467, A2 => n_548, B1 => n_466, B2 => framebuffer_buf_58_2950, ZN => n_463);
  g20248 : MOAI22D0BWP7T port map(A1 => n_467, A2 => n_551, B1 => n_466, B2 => framebuffer_buf_59_2951, ZN => n_462);
  g20112 : AO22D0BWP7T port map(A1 => n_550, A2 => calc_buf_out_17_2885, B1 => sqi_data_in(1), B2 => n_455, Z => n_461);
  g20249 : MOAI22D0BWP7T port map(A1 => n_458, A2 => n_538, B1 => n_457, B2 => framebuffer_buf_102_2994, ZN => n_460);
  g20250 : MOAI22D0BWP7T port map(A1 => n_458, A2 => n_535, B1 => n_457, B2 => framebuffer_buf_103_2995, ZN => n_459);
  g20113 : AO22D0BWP7T port map(A1 => n_550, A2 => calc_buf_out_16_2884, B1 => sqi_data_in(0), B2 => n_455, Z => n_456);
  g20251 : MOAI22D0BWP7T port map(A1 => n_452, A2 => n_538, B1 => n_451, B2 => framebuffer_buf_128_3020, ZN => n_454);
  g20252 : MOAI22D0BWP7T port map(A1 => n_452, A2 => n_535, B1 => n_451, B2 => framebuffer_buf_129_3021, ZN => n_453);
  g20114 : AO22D0BWP7T port map(A1 => n_444, A2 => calc_buf_out_9_2877, B1 => sqi_data_in(1), B2 => n_443, Z => n_450);
  g20253 : MOAI22D0BWP7T port map(A1 => n_458, A2 => n_557, B1 => n_457, B2 => framebuffer_buf_98_2990, ZN => n_449);
  g20352 : MOAI22D0BWP7T port map(A1 => n_506, A2 => n_490, B1 => n_447, B2 => framebuffer_buf_143_3035, ZN => n_448);
  g20254 : MOAI22D0BWP7T port map(A1 => n_458, A2 => n_546, B1 => n_457, B2 => framebuffer_buf_99_2991, ZN => n_446);
  g20115 : AO22D0BWP7T port map(A1 => n_444, A2 => calc_buf_out_8_2876, B1 => sqi_data_in(0), B2 => n_443, Z => n_445);
  g20255 : MOAI22D0BWP7T port map(A1 => n_458, A2 => n_548, B1 => n_457, B2 => framebuffer_buf_100_2992, ZN => n_442);
  g20256 : MOAI22D0BWP7T port map(A1 => n_458, A2 => n_551, B1 => n_457, B2 => framebuffer_buf_101_2993, ZN => n_441);
  g20355 : MOAI22D0BWP7T port map(A1 => n_498, A2 => n_490, B1 => n_447, B2 => framebuffer_buf_146_3038, ZN => n_440);
  g20257 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_538, B1 => n_436, B2 => framebuffer_buf_78_2970, ZN => n_439);
  g20258 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_535, B1 => n_436, B2 => framebuffer_buf_79_2971, ZN => n_438);
  g20259 : MOAI22D0BWP7T port map(A1 => n_452, A2 => n_557, B1 => n_451, B2 => framebuffer_buf_124_3016, ZN => n_435);
  g20117 : AO221D0BWP7T port map(A1 => n_268, A2 => y(0), B1 => n_593, B2 => sqi_address_0_3050, C => n_239, Z => n_434);
  g20260 : MOAI22D0BWP7T port map(A1 => n_452, A2 => n_546, B1 => n_451, B2 => framebuffer_buf_125_3017, ZN => n_433);
  g20118 : OAI222D0BWP7T port map(A1 => n_283, A2 => n_298, B1 => n_299, B2 => n_289, C1 => n_519, C2 => n_235, ZN => n_432);
  g20261 : MOAI22D0BWP7T port map(A1 => n_452, A2 => n_548, B1 => n_451, B2 => framebuffer_buf_126_3018, ZN => n_431);
  g20262 : MOAI22D0BWP7T port map(A1 => n_452, A2 => n_551, B1 => n_451, B2 => framebuffer_buf_127_3019, ZN => n_430);
  g20263 : MOAI22D0BWP7T port map(A1 => n_427, A2 => n_538, B1 => n_426, B2 => framebuffer_buf_114_3006, ZN => n_429);
  g20264 : MOAI22D0BWP7T port map(A1 => n_427, A2 => n_535, B1 => n_426, B2 => framebuffer_buf_115_3007, ZN => n_428);
  g20265 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_557, B1 => n_436, B2 => framebuffer_buf_74_2966, ZN => n_425);
  g20266 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_546, B1 => n_436, B2 => framebuffer_buf_75_2967, ZN => n_424);
  g20267 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_548, B1 => n_436, B2 => framebuffer_buf_76_2968, ZN => n_423);
  g20268 : MOAI22D0BWP7T port map(A1 => n_437, A2 => n_551, B1 => n_436, B2 => framebuffer_buf_77_2969, ZN => n_422);
  g20347 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_420, B1 => n_419, B2 => framebuffer_buf_120_3012, ZN => n_421);
  g20269 : MOAI22D0BWP7T port map(A1 => n_416, A2 => n_538, B1 => n_415, B2 => framebuffer_buf_108_3000, ZN => n_418);
  g20270 : MOAI22D0BWP7T port map(A1 => n_416, A2 => n_535, B1 => n_415, B2 => framebuffer_buf_109_3001, ZN => n_417);
  g20271 : MOAI22D0BWP7T port map(A1 => n_411, A2 => n_538, B1 => n_410, B2 => framebuffer_buf_140_3032, ZN => n_414);
  g20122 : AOI211D0BWP7T port map(A1 => n_287, A2 => sqi_address_10_3060, B => n_201, C => n_169, ZN => n_413);
  g20272 : MOAI22D0BWP7T port map(A1 => n_411, A2 => n_535, B1 => n_410, B2 => framebuffer_buf_141_3033, ZN => n_412);
  g20273 : MOAI22D0BWP7T port map(A1 => n_427, A2 => n_557, B1 => n_426, B2 => framebuffer_buf_110_3002, ZN => n_409);
  g20274 : MOAI22D0BWP7T port map(A1 => n_427, A2 => n_546, B1 => n_426, B2 => framebuffer_buf_111_3003, ZN => n_408);
  g20275 : MOAI22D0BWP7T port map(A1 => n_427, A2 => n_548, B1 => n_426, B2 => framebuffer_buf_112_3004, ZN => n_407);
  g20276 : MOAI22D0BWP7T port map(A1 => n_427, A2 => n_551, B1 => n_426, B2 => framebuffer_buf_113_3005, ZN => n_406);
  g20277 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_538, B1 => n_403, B2 => framebuffer_buf_90_2982, ZN => n_405);
  g20278 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_535, B1 => n_403, B2 => framebuffer_buf_91_2983, ZN => n_402);
  g20279 : MOAI22D0BWP7T port map(A1 => n_399, A2 => n_538, B1 => n_398, B2 => framebuffer_buf_134_3026, ZN => n_401);
  g20280 : MOAI22D0BWP7T port map(A1 => n_399, A2 => n_535, B1 => n_398, B2 => framebuffer_buf_135_3027, ZN => n_400);
  g20127 : CKND4BWP7T port map(I => n_612, ZN => sqi_data_out(1));
  g20129 : CKND4BWP7T port map(I => n_611, ZN => sqi_data_out(3));
  g20281 : MOAI22D0BWP7T port map(A1 => n_416, A2 => n_557, B1 => n_415, B2 => framebuffer_buf_104_2996, ZN => n_395);
  g20366 : MOAI22D0BWP7T port map(A1 => n_496, A2 => n_392, B1 => n_391, B2 => framebuffer_buf_25_2917, ZN => n_394);
  g20365 : MOAI22D0BWP7T port map(A1 => n_498, A2 => n_392, B1 => n_391, B2 => framebuffer_buf_24_2916, ZN => n_393);
  g20282 : MOAI22D0BWP7T port map(A1 => n_416, A2 => n_546, B1 => n_415, B2 => framebuffer_buf_105_2997, ZN => n_390);
  g20135 : CKND4BWP7T port map(I => n_608, ZN => sqi_data_out(5));
  g20137 : CKND4BWP7T port map(I => n_607, ZN => sqi_data_out(6));
  g20283 : MOAI22D0BWP7T port map(A1 => n_416, A2 => n_548, B1 => n_415, B2 => framebuffer_buf_106_2998, ZN => n_387);
  g20284 : MOAI22D0BWP7T port map(A1 => n_416, A2 => n_551, B1 => n_415, B2 => framebuffer_buf_107_2999, ZN => n_386);
  g20285 : MOAI22D0BWP7T port map(A1 => n_383, A2 => n_538, B1 => n_382, B2 => framebuffer_buf_84_2976, ZN => n_385);
  g20286 : MOAI22D0BWP7T port map(A1 => n_383, A2 => n_535, B1 => n_382, B2 => framebuffer_buf_85_2977, ZN => n_384);
  g20287 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_538, B1 => n_481, B2 => framebuffer_buf_6_2898, ZN => n_381);
  g20288 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_535, B1 => n_481, B2 => framebuffer_buf_7_2899, ZN => n_380);
  g20289 : MOAI22D0BWP7T port map(A1 => n_411, A2 => n_557, B1 => n_410, B2 => framebuffer_buf_136_3028, ZN => n_378);
  g20290 : MOAI22D0BWP7T port map(A1 => n_411, A2 => n_546, B1 => n_410, B2 => framebuffer_buf_137_3029, ZN => n_377);
  g20291 : MOAI22D0BWP7T port map(A1 => n_411, A2 => n_548, B1 => n_410, B2 => framebuffer_buf_138_3030, ZN => n_376);
  g20293 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_557, B1 => n_403, B2 => framebuffer_buf_86_2978, ZN => n_375);
  g20292 : MOAI22D0BWP7T port map(A1 => n_411, A2 => n_551, B1 => n_410, B2 => framebuffer_buf_139_3031, ZN => n_374);
  g20295 : MOAI22D0BWP7T port map(A1 => n_496, A2 => n_492, B1 => n_488, B2 => framebuffer_buf_97_2989, ZN => n_373);
  g20294 : ND2D1BWP7T port map(A1 => n_555, A2 => n_371, ZN => n_372);
  g20296 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_551, B1 => n_403, B2 => framebuffer_buf_89_2981, ZN => n_370);
  g20297 : MOAI22D0BWP7T port map(A1 => n_399, A2 => n_557, B1 => n_398, B2 => framebuffer_buf_130_3022, ZN => n_369);
  g20298 : MOAI22D0BWP7T port map(A1 => n_399, A2 => n_546, B1 => n_398, B2 => framebuffer_buf_131_3023, ZN => n_368);
  g20299 : MOAI22D0BWP7T port map(A1 => n_399, A2 => n_548, B1 => n_398, B2 => framebuffer_buf_132_3024, ZN => n_367);
  g20300 : MOAI22D0BWP7T port map(A1 => n_399, A2 => n_551, B1 => n_398, B2 => framebuffer_buf_133_3025, ZN => n_366);
  g20301 : MOAI22D0BWP7T port map(A1 => n_383, A2 => n_557, B1 => n_382, B2 => framebuffer_buf_80_2972, ZN => n_365);
  g20302 : MOAI22D0BWP7T port map(A1 => n_383, A2 => n_546, B1 => n_382, B2 => framebuffer_buf_81_2973, ZN => n_364);
  g20303 : MOAI22D0BWP7T port map(A1 => n_383, A2 => n_548, B1 => n_382, B2 => framebuffer_buf_82_2974, ZN => n_363);
  g20304 : MOAI22D0BWP7T port map(A1 => n_383, A2 => n_551, B1 => n_382, B2 => framebuffer_buf_83_2975, ZN => n_362);
  g20305 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_557, B1 => n_481, B2 => framebuffer_buf_2_2894, ZN => n_361);
  g20306 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_546, B1 => n_481, B2 => framebuffer_buf_3_2895, ZN => n_360);
  g20307 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_548, B1 => n_481, B2 => framebuffer_buf_4_2896, ZN => n_359);
  g20308 : MOAI22D0BWP7T port map(A1 => n_379, A2 => n_551, B1 => n_481, B2 => framebuffer_buf_5_2897, ZN => n_358);
  g20309 : MOAI22D0BWP7T port map(A1 => n_355, A2 => n_538, B1 => n_354, B2 => framebuffer_buf_30_2922, ZN => n_357);
  g20310 : MOAI22D0BWP7T port map(A1 => n_355, A2 => n_535, B1 => n_354, B2 => framebuffer_buf_31_2923, ZN => n_356);
  g20311 : MOAI22D0BWP7T port map(A1 => n_351, A2 => n_538, B1 => n_350, B2 => framebuffer_buf_18_2910, ZN => n_353);
  g20312 : MOAI22D0BWP7T port map(A1 => n_351, A2 => n_535, B1 => n_350, B2 => framebuffer_buf_19_2911, ZN => n_352);
  g20313 : MOAI22D0BWP7T port map(A1 => n_355, A2 => n_557, B1 => n_354, B2 => framebuffer_buf_26_2918, ZN => n_349);
  g20314 : MOAI22D0BWP7T port map(A1 => n_355, A2 => n_546, B1 => n_354, B2 => framebuffer_buf_27_2919, ZN => n_348);
  g20315 : MOAI22D0BWP7T port map(A1 => n_355, A2 => n_548, B1 => n_354, B2 => framebuffer_buf_28_2920, ZN => n_347);
  g20316 : MOAI22D0BWP7T port map(A1 => n_355, A2 => n_551, B1 => n_354, B2 => framebuffer_buf_29_2921, ZN => n_346);
  g20317 : MOAI22D0BWP7T port map(A1 => n_343, A2 => n_538, B1 => n_342, B2 => framebuffer_buf_12_2904, ZN => n_345);
  g20318 : MOAI22D0BWP7T port map(A1 => n_343, A2 => n_535, B1 => n_342, B2 => framebuffer_buf_13_2905, ZN => n_344);
  g20319 : MOAI22D0BWP7T port map(A1 => n_351, A2 => n_557, B1 => n_350, B2 => framebuffer_buf_14_2906, ZN => n_341);
  g20320 : MOAI22D0BWP7T port map(A1 => n_351, A2 => n_546, B1 => n_350, B2 => framebuffer_buf_15_2907, ZN => n_340);
  g20321 : MOAI22D0BWP7T port map(A1 => n_351, A2 => n_548, B1 => n_350, B2 => framebuffer_buf_16_2908, ZN => n_339);
  g20322 : MOAI22D0BWP7T port map(A1 => n_351, A2 => n_551, B1 => n_350, B2 => framebuffer_buf_17_2909, ZN => n_338);
  g20323 : MOAI22D0BWP7T port map(A1 => n_335, A2 => n_538, B1 => n_334, B2 => framebuffer_buf_42_2934, ZN => n_337);
  g20324 : MOAI22D0BWP7T port map(A1 => n_335, A2 => n_535, B1 => n_334, B2 => framebuffer_buf_43_2935, ZN => n_336);
  g20325 : MOAI22D0BWP7T port map(A1 => n_343, A2 => n_557, B1 => n_342, B2 => framebuffer_buf_8_2900, ZN => n_333);
  g20326 : MOAI22D0BWP7T port map(A1 => n_343, A2 => n_546, B1 => n_342, B2 => framebuffer_buf_9_2901, ZN => n_332);
  g20327 : MOAI22D0BWP7T port map(A1 => n_343, A2 => n_548, B1 => n_342, B2 => framebuffer_buf_10_2902, ZN => n_331);
  g20328 : MOAI22D0BWP7T port map(A1 => n_343, A2 => n_551, B1 => n_342, B2 => framebuffer_buf_11_2903, ZN => n_330);
  g20329 : MOAI22D0BWP7T port map(A1 => n_327, A2 => n_538, B1 => n_326, B2 => framebuffer_buf_36_2928, ZN => n_329);
  g20330 : MOAI22D0BWP7T port map(A1 => n_327, A2 => n_535, B1 => n_326, B2 => framebuffer_buf_37_2929, ZN => n_328);
  g20331 : MOAI22D0BWP7T port map(A1 => n_335, A2 => n_557, B1 => n_334, B2 => framebuffer_buf_38_2930, ZN => n_325);
  g20332 : MOAI22D0BWP7T port map(A1 => n_335, A2 => n_546, B1 => n_334, B2 => framebuffer_buf_39_2931, ZN => n_324);
  g20333 : MOAI22D0BWP7T port map(A1 => n_335, A2 => n_548, B1 => n_334, B2 => framebuffer_buf_40_2932, ZN => n_323);
  g20334 : MOAI22D0BWP7T port map(A1 => n_335, A2 => n_551, B1 => n_334, B2 => framebuffer_buf_41_2933, ZN => n_322);
  g20207 : ND2D1BWP7T port map(A1 => n_257, A2 => n_125, ZN => n_321);
  g20335 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_538, B1 => n_316, B2 => framebuffer_buf_66_2958, ZN => n_320);
  g20208 : AO211D0BWP7T port map(A1 => n_13, A2 => n_221, B => n_241, C => n_108, Z => n_319);
  g20336 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_535, B1 => n_316, B2 => framebuffer_buf_67_2959, ZN => n_318);
  g20337 : MOAI22D0BWP7T port map(A1 => n_327, A2 => n_557, B1 => n_326, B2 => framebuffer_buf_32_2924, ZN => n_315);
  g20338 : MOAI22D0BWP7T port map(A1 => n_327, A2 => n_546, B1 => n_326, B2 => framebuffer_buf_33_2925, ZN => n_314);
  g20339 : MOAI22D0BWP7T port map(A1 => n_327, A2 => n_548, B1 => n_326, B2 => framebuffer_buf_34_2926, ZN => n_313);
  g20340 : MOAI22D0BWP7T port map(A1 => n_327, A2 => n_551, B1 => n_326, B2 => framebuffer_buf_35_2927, ZN => n_312);
  g20210 : AOI21D0BWP7T port map(A1 => n_215, A2 => n_102, B => n_259, ZN => n_311);
  g20341 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_557, B1 => n_316, B2 => framebuffer_buf_62_2954, ZN => n_310);
  g20342 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_546, B1 => n_316, B2 => framebuffer_buf_63_2955, ZN => n_309);
  g20343 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_548, B1 => n_316, B2 => framebuffer_buf_64_2956, ZN => n_308);
  g20344 : MOAI22D0BWP7T port map(A1 => n_317, A2 => n_551, B1 => n_316, B2 => framebuffer_buf_65_2957, ZN => n_307);
  g20214 : MOAI22D0BWP7T port map(A1 => n_404, A2 => n_546, B1 => n_403, B2 => framebuffer_buf_87_2979, ZN => n_306);
  g20351 : MOAI22D0BWP7T port map(A1 => n_508, A2 => n_490, B1 => n_447, B2 => framebuffer_buf_142_3034, ZN => n_305);
  g20346 : MOAI22D0BWP7T port map(A1 => n_506, A2 => n_420, B1 => n_419, B2 => framebuffer_buf_119_3011, ZN => n_304);
  g20345 : MOAI22D0BWP7T port map(A1 => n_508, A2 => n_420, B1 => n_419, B2 => framebuffer_buf_118_3010, ZN => n_303);
  g20348 : MOAI22D0BWP7T port map(A1 => n_500, A2 => n_420, B1 => n_419, B2 => framebuffer_buf_121_3013, ZN => n_302);
  g20350 : MOAI22D0BWP7T port map(A1 => n_496, A2 => n_420, B1 => n_419, B2 => framebuffer_buf_123_3015, ZN => n_301);
  g20218 : OAI222D0BWP7T port map(A1 => n_519, A2 => n_158, B1 => n_299, B2 => n_255, C1 => counter(0), C2 => n_298, ZN => n_300);
  g20354 : MOAI22D0BWP7T port map(A1 => n_500, A2 => n_490, B1 => n_447, B2 => framebuffer_buf_145_3037, ZN => n_297);
  g20356 : MOAI22D0BWP7T port map(A1 => n_496, A2 => n_490, B1 => n_447, B2 => framebuffer_buf_147_3039, ZN => n_296);
  g20133 : CKND4BWP7T port map(I => n_609, ZN => sqi_data_out(4));
  g20359 : MOAI22D0BWP7T port map(A1 => n_508, A2 => n_392, B1 => n_391, B2 => framebuffer_buf_20_2912, ZN => n_294);
  g20362 : MOAI22D0BWP7T port map(A1 => n_506, A2 => n_392, B1 => n_391, B2 => framebuffer_buf_21_2913, ZN => n_293);
  g20363 : MOAI22D0BWP7T port map(A1 => n_502, A2 => n_392, B1 => n_391, B2 => framebuffer_buf_22_2914, ZN => n_292);
  g20364 : MOAI22D0BWP7T port map(A1 => n_500, A2 => n_392, B1 => n_391, B2 => framebuffer_buf_23_2915, ZN => n_291);
  g20369 : AOI22D0BWP7T port map(A1 => n_494, A2 => sqi_address_9_3059, B1 => n_200, B2 => n_289, ZN => n_290);
  g20389 : ND2D1BWP7T port map(A1 => n_287, A2 => sqi_address_14_3064, ZN => n_288);
  g20390 : ND2D1BWP7T port map(A1 => n_287, A2 => sqi_address_13_3063, ZN => n_286);
  g20400 : OA33D0BWP7T port map(A1 => n_284, A2 => n_283, A3 => n_163, B1 => counter(4), B2 => n_50, B3 => n_258, Z => n_285);
  g20104 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_551, B1 => n_444, B2 => calc_buf_out_13_2881, ZN => n_282);
  g20405 : AOI32D0BWP7T port map(A1 => n_162, A2 => n_280, A3 => counter(0), B1 => n_197, B2 => n_14, ZN => n_281);
  g20105 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_548, B1 => n_444, B2 => calc_buf_out_12_2880, ZN => n_279);
  g20106 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_546, B1 => n_444, B2 => calc_buf_out_11_2879, ZN => n_277);
  single_reg : LHD1BWP7T port map(E => n_223, D => n_170, Q => UNCONNECTED0, QN => n_603);
  g20107 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_557, B1 => n_444, B2 => calc_buf_out_10_2878, ZN => n_276);
  g20435 : MOAI22D0BWP7T port map(A1 => n_530, A2 => counter(0), B1 => n_566, B2 => n_274, ZN => n_275);
  g20215 : IOA21D1BWP7T port map(A1 => n_299, A2 => n_175, B => counter(2), ZN => n_273);
  g20110 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_535, B1 => n_444, B2 => calc_buf_out_15_2883, ZN => n_272);
  g20219 : AOI32D1BWP7T port map(A1 => n_270, A2 => n_54, A3 => n_263, B1 => n_593, B2 => sqi_address_6_3056, ZN => n_271);
  g20441 : AO21D0BWP7T port map(A1 => n_566, A2 => y(0), B => n_268, Z => n_269);
  g20111 : MOAI22D0BWP7T port map(A1 => n_278, A2 => n_538, B1 => n_444, B2 => calc_buf_out_14_2882, ZN => n_267);
  g20440 : AO21D0BWP7T port map(A1 => n_566, A2 => n_265, B => n_268, Z => n_266);
  g20491 : IND3D1BWP7T port map(A1 => n_263, B1 => y(7), B2 => n_566, ZN => n_264);
  g20125 : AO211D0BWP7T port map(A1 => n_494, A2 => sqi_address_12_3062, B => n_184, C => n_194, Z => n_262);
  sqi_data_out_reg_1 : LND1BWP7T port map(EN => n_261, D => n_224, Q => UNCONNECTED1, QN => n_612);
  sqi_data_out_reg_3 : LND1BWP7T port map(EN => n_261, D => n_247, Q => UNCONNECTED2, QN => n_611);
  sqi_data_out_reg_2 : LND1BWP7T port map(EN => n_261, D => n_222, Q => UNCONNECTED3, QN => n_610);
  sqi_data_out_reg_4 : LND1BWP7T port map(EN => n_261, D => n_240, Q => UNCONNECTED4, QN => n_609);
  sqi_data_out_reg_5 : LND1BWP7T port map(EN => n_261, D => n_242, Q => UNCONNECTED5, QN => n_608);
  sqi_data_out_reg_6 : LND1BWP7T port map(EN => n_261, D => n_246, Q => UNCONNECTED6, QN => n_607);
  g20211 : AOI21D0BWP7T port map(A1 => n_123, A2 => state(1), B => n_236, ZN => n_260);
  g20446 : AOI21D0BWP7T port map(A1 => n_566, A2 => n_118, B => n_138, ZN => n_541);
  g20404 : OAI31D0BWP7T port map(A1 => counter(3), A2 => n_128, A3 => n_258, B => n_214, ZN => n_259);
  g20403 : AOI211D1BWP7T port map(A1 => n_69, A2 => n_143, B => n_177, C => n_146, ZN => n_257);
  g20408 : OA21D0BWP7T port map(A1 => n_119, A2 => n_519, B => n_299, Z => n_555);
  g20412 : ND2D1BWP7T port map(A1 => n_256, A2 => counter(0), ZN => n_528);
  g20387 : INVD1BWP7T port map(I => n_455, ZN => n_552);
  g20417 : ND2D1BWP7T port map(A1 => n_256, A2 => n_255, ZN => n_539);
  g20438 : OAI22D0BWP7T port map(A1 => n_133, A2 => n_115, B1 => n_253, B2 => n_72, ZN => n_254);
  g20439 : AOI21D0BWP7T port map(A1 => n_168, A2 => n_198, B => n_212, ZN => n_252);
  g20442 : OAI211D0BWP7T port map(A1 => n_144, A2 => n_152, B => n_161, C => n_12, ZN => n_251);
  g20206 : CKND4BWP7T port map(I => n_605, ZN => sqi_data_out(0));
  g20204 : CKND4BWP7T port map(I => n_606, ZN => sqi_data_out(7));
  g20209 : ND4D0BWP7T port map(A1 => n_171, A2 => n_176, A3 => n_160, A4 => n_141, ZN => n_248);
  g20222 : AO222D0BWP7T port map(A1 => n_245, A2 => calc_buf_in(2), B1 => n_243, B2 => edit_buf_in(3), C1 => n_244, C2 => row_buf(3), Z => n_247);
  g20225 : AO222D0BWP7T port map(A1 => n_245, A2 => calc_buf_in(5), B1 => n_244, B2 => calc_buf_in(0), C1 => n_243, C2 => edit_buf_in(6), Z => n_246);
  g20224 : AO222D0BWP7T port map(A1 => n_245, A2 => calc_buf_in(4), B1 => n_243, B2 => edit_buf_in(5), C1 => n_244, C2 => row_buf(5), Z => n_242);
  g20407 : OAI211D1BWP7T port map(A1 => state(1), A2 => n_18, B => n_145, C => n_46, ZN => n_241);
  g20223 : AO222D0BWP7T port map(A1 => n_245, A2 => calc_buf_in(3), B1 => n_244, B2 => row_buf(4), C1 => n_243, C2 => edit_buf_in(4), Z => n_240);
  g20402 : AOI211D0BWP7T port map(A1 => n_238, A2 => n_6, B => n_237, C => y(0), ZN => n_239);
  g20406 : AOI21D0BWP7T port map(A1 => n_156, A2 => n_204, B => n_519, ZN => n_236);
  g20388 : CKND1BWP7T port map(I => n_278, ZN => n_443);
  g20386 : CKND1BWP7T port map(I => n_586, ZN => n_583);
  g20397 : NR2XD0BWP7T port map(A1 => n_182, A2 => n_235, ZN => n_455);
  g20413 : ND2D1BWP7T port map(A1 => n_234, A2 => n_229, ZN => n_527);
  g20415 : ND2D1BWP7T port map(A1 => n_232, A2 => n_233, ZN => n_426);
  g20416 : ND2D1BWP7T port map(A1 => n_234, A2 => n_233, ZN => n_415);
  g20418 : ND2D1BWP7T port map(A1 => n_232, A2 => n_231, ZN => n_410);
  g20419 : ND2D1BWP7T port map(A1 => n_230, A2 => n_233, ZN => n_457);
  g20420 : ND2D1BWP7T port map(A1 => n_234, A2 => n_231, ZN => n_398);
  g20421 : ND2D1BWP7T port map(A1 => n_232, A2 => n_228, ZN => n_403);
  g20422 : ND2D1BWP7T port map(A1 => n_230, A2 => n_229, ZN => n_537);
  g20423 : ND2D1BWP7T port map(A1 => n_230, A2 => n_231, ZN => n_451);
  g20424 : ND2D1BWP7T port map(A1 => n_227, A2 => n_233, ZN => n_419);
  g20425 : ND2D1BWP7T port map(A1 => n_230, A2 => n_228, ZN => n_436);
  g20426 : ND2D1BWP7T port map(A1 => n_227, A2 => n_231, ZN => n_447);
  g20488 : AOI211D0BWP7T port map(A1 => n_225, A2 => n_7, B => n_598, C => y(3), ZN => n_226);
  g20220 : AO222D0BWP7T port map(A1 => n_245, A2 => calc_buf_in(0), B1 => n_243, B2 => edit_buf_in(1), C1 => n_244, C2 => row_buf(1), Z => n_224);
  sqi_data_out_reg_0 : LND1BWP7T port map(EN => n_261, D => n_127, Q => UNCONNECTED7, QN => n_605);
  g20485 : OAI211D0BWP7T port map(A1 => n_112, A2 => n_84, B => n_185, C => n_80, ZN => n_223);
  g20221 : AO222D0BWP7T port map(A1 => n_245, A2 => calc_buf_in(1), B1 => n_243, B2 => edit_buf_in(2), C1 => n_244, C2 => row_buf(2), Z => n_222);
  sqi_data_out_reg_7 : LND1BWP7T port map(EN => n_261, D => n_126, Q => UNCONNECTED8, QN => n_606);
  g20483 : INVD0BWP7T port map(I => n_379, ZN => n_480);
  g20447 : IND3D1BWP7T port map(A1 => n_221, B1 => n_210, B2 => n_211, ZN => n_287);
  g20449 : ND2D1BWP7T port map(A1 => n_227, A2 => n_218, ZN => n_391);
  g20450 : ND2D1BWP7T port map(A1 => n_234, A2 => n_220, ZN => n_466);
  g20452 : ND2D1BWP7T port map(A1 => n_227, A2 => n_219, ZN => n_514);
  g20427 : ND2D1BWP7T port map(A1 => n_227, A2 => n_228, ZN => n_488);
  g20454 : ND2D1BWP7T port map(A1 => n_227, A2 => n_220, ZN => n_504);
  g20455 : ND2D1BWP7T port map(A1 => n_230, A2 => n_220, ZN => n_475);
  g20456 : ND2D1BWP7T port map(A1 => n_234, A2 => n_219, ZN => n_326);
  g20429 : ND2D1BWP7T port map(A1 => n_234, A2 => n_218, ZN => n_342);
  g20430 : ND2D1BWP7T port map(A1 => n_232, A2 => n_220, ZN => n_316);
  g20431 : ND2D1BWP7T port map(A1 => n_232, A2 => n_219, ZN => n_334);
  g20432 : ND2D1BWP7T port map(A1 => n_234, A2 => n_228, ZN => n_382);
  g20453 : ND2D1BWP7T port map(A1 => n_230, A2 => n_219, ZN => n_354);
  g20428 : ND2D1BWP7T port map(A1 => n_232, A2 => n_218, ZN => n_350);
  g20433 : ND2D1BWP7T port map(A1 => n_230, A2 => n_218, ZN => n_481);
  g20437 : AOI33D1BWP7T port map(A1 => n_196, A2 => n_216, A3 => counter(1), B1 => n_215, B2 => n_58, B3 => n_280, ZN => n_217);
  g20436 : AOI32D1BWP7T port map(A1 => n_213, A2 => n_207, A3 => n_121, B1 => n_180, B2 => n_89, ZN => n_214);
  g20458 : CKAN2D1BWP7T port map(A1 => n_208, A2 => n_212, Z => n_256);
  g20448 : ND3D0BWP7T port map(A1 => n_211, A2 => n_203, A3 => n_210, ZN => n_494);
  g20414 : NR2XD0BWP7T port map(A1 => n_148, A2 => n_44, ZN => n_299);
  g20460 : ND2D1BWP7T port map(A1 => n_209, A2 => sqi_data_in(3), ZN => n_506);
  g20459 : ND2D1BWP7T port map(A1 => n_209, A2 => sqi_data_in(7), ZN => n_496);
  g20451 : ND3D0BWP7T port map(A1 => n_208, A2 => n_114, A3 => n_255, ZN => n_476);
  g20461 : ND2D1BWP7T port map(A1 => n_209, A2 => sqi_data_in(4), ZN => n_502);
  g20462 : ND2D1BWP7T port map(A1 => n_209, A2 => sqi_data_in(5), ZN => n_500);
  g20463 : ND2D1BWP7T port map(A1 => n_209, A2 => sqi_data_in(2), ZN => n_508);
  g20465 : ND2D1BWP7T port map(A1 => n_192, A2 => n_187, ZN => n_355);
  g20468 : ND2D1BWP7T port map(A1 => n_190, A2 => n_207, ZN => n_317);
  g20469 : ND2D1BWP7T port map(A1 => n_208, A2 => n_56, ZN => n_467);
  g20470 : ND2D1BWP7T port map(A1 => n_209, A2 => sqi_data_in(6), ZN => n_498);
  g20398 : ND2D1BWP7T port map(A1 => n_1807, A2 => n_206, ZN => n_278);
  g20395 : ND2D1BWP7T port map(A1 => n_1807, A2 => n_204, ZN => n_586);
  g20396 : IND2D1BWP7T port map(A1 => n_202, B1 => n_174, ZN => n_550);
  g20457 : OAI211D1BWP7T port map(A1 => n_519, A2 => n_117, B => n_203, C => n_210, ZN => n_593);
  g20394 : IND2D1BWP7T port map(A1 => n_202, B1 => n_172, ZN => n_444);
  g20501 : MOAI22D0BWP7T port map(A1 => n_183, A2 => n_57, B1 => n_200, B2 => n_255, ZN => n_201);
  g20494 : MAOI22D0BWP7T port map(A1 => n_200, A2 => n_179, B1 => n_198, B2 => n_515, ZN => n_199);
  g20484 : MOAI22D0BWP7T port map(A1 => n_258, A2 => n_235, B1 => n_196, B2 => counter(0), ZN => n_197);
  g20503 : AOI22D0BWP7T port map(A1 => n_215, A2 => n_59, B1 => n_194, B2 => counter(1), ZN => n_195);
  g20475 : ND2D1BWP7T port map(A1 => n_193, A2 => n_189, ZN => n_399);
  g20476 : ND2D1BWP7T port map(A1 => n_193, A2 => n_188, ZN => n_383);
  g20477 : ND2D1BWP7T port map(A1 => n_193, A2 => n_191, ZN => n_416);
  g20478 : ND2D1BWP7T port map(A1 => n_192, A2 => n_191, ZN => n_458);
  g20479 : ND2D1BWP7T port map(A1 => n_190, A2 => n_191, ZN => n_427);
  g20480 : ND2D1BWP7T port map(A1 => n_190, A2 => n_189, ZN => n_411);
  g20481 : ND2D1BWP7T port map(A1 => n_190, A2 => n_188, ZN => n_404);
  g20471 : ND2D1BWP7T port map(A1 => n_190, A2 => n_187, ZN => n_335);
  g20472 : ND2D1BWP7T port map(A1 => n_193, A2 => n_186, ZN => n_343);
  g20473 : ND2D1BWP7T port map(A1 => n_190, A2 => n_186, ZN => n_351);
  g20474 : ND2D1BWP7T port map(A1 => n_193, A2 => n_187, ZN => n_327);
  g20506 : ND2D1BWP7T port map(A1 => n_192, A2 => n_189, ZN => n_452);
  g20507 : ND2D1BWP7T port map(A1 => n_192, A2 => n_188, ZN => n_437);
  g20526 : NR2XD0BWP7T port map(A1 => n_185, A2 => n_147, ZN => n_566);
  g20509 : ND2D1BWP7T port map(A1 => n_192, A2 => n_186, ZN => n_379);
  g20502 : OAI22D0BWP7T port map(A1 => n_533, A2 => n_93, B1 => n_183, B2 => n_26, ZN => n_184);
  g20434 : INVD0BWP7T port map(I => n_1807, ZN => n_182);
  g20496 : ND3D0BWP7T port map(A1 => n_180, A2 => n_189, A3 => n_179, ZN => n_181);
  g20490 : ND3D0BWP7T port map(A1 => n_180, A2 => n_206, A3 => n_40, ZN => n_178);
  g20487 : OAI211D1BWP7T port map(A1 => n_519, A2 => n_176, B => n_78, C => n_70, ZN => n_177);
  g20467 : INR2D0BWP7T port map(A1 => n_175, B1 => n_173, ZN => n_227);
  g20466 : INR2D0BWP7T port map(A1 => n_174, B1 => n_173, ZN => n_232);
  g20482 : INR2D0BWP7T port map(A1 => n_172, B1 => n_173, ZN => n_234);
  g20409 : NR4D0BWP7T port map(A1 => n_110, A2 => n_4, A3 => n_66, A4 => n_154, ZN => n_261);
  g20504 : AOI211XD0BWP7T port map(A1 => n_170, A2 => sqi_finished, B => n_113, C => n_67, ZN => n_171);
  g20538 : OA21D0BWP7T port map(A1 => n_187, A2 => n_191, B => n_213, Z => n_169);
  g20534 : IOA21D0BWP7T port map(A1 => n_36, A2 => counter(0), B => n_180, ZN => n_168);
  g20511 : AOI31D0BWP7T port map(A1 => n_166, A2 => counter(3), A3 => sqi_address(13), B => n_165, ZN => n_167);
  g20532 : AOI21D0BWP7T port map(A1 => n_166, A2 => sqi_address(14), B => n_159, ZN => n_164);
  g20528 : INVD0BWP7T port map(I => n_162, ZN => n_163);
  g20530 : MAOI22D0BWP7T port map(A1 => n_140, A2 => n_157, B1 => n_160, B2 => state(2), ZN => n_161);
  g20518 : ND2D1BWP7T port map(A1 => n_215, A2 => n_216, ZN => n_253);
  g20505 : ND3D0BWP7T port map(A1 => n_159, A2 => n_255, A3 => counter(3), ZN => n_563);
  g20508 : IAO21D0BWP7T port map(A1 => n_519, A2 => n_204, B => n_173, ZN => n_230);
  new_row_buf_reg_1 : LNQD1BWP7T port map(EN => n_151, D => n_103, Q => new_row_buf(1));
  g20486 : ND4D0BWP7T port map(A1 => n_153, A2 => n_157, A3 => n_289, A4 => n_155, ZN => n_158);
  g20489 : OA211D0BWP7T port map(A1 => n_155, A2 => n_154, B => n_153, C => n_152, Z => n_156);
  new_row_buf_reg_3 : LNQD1BWP7T port map(EN => n_151, D => n_97, Q => new_row_buf(3));
  g20492 : IND3D0BWP7T port map(A1 => n_198, B1 => counter(2), B2 => n_149, ZN => n_150);
  g20495 : OAI211D1BWP7T port map(A1 => n_154, A2 => n_147, B => n_87, C => n_85, ZN => n_148);
  g20497 : OAI32D1BWP7T port map(A1 => sqi_finished, A2 => state(0), A3 => n_60, B1 => n_130, B2 => n_63, ZN => n_146);
  g20498 : AOI33D1BWP7T port map(A1 => n_132, A2 => n_124, A3 => n_144, B1 => n_143, B2 => state(0), B3 => n_21, ZN => n_145);
  g20443 : ND3D0BWP7T port map(A1 => n_109, A2 => n_53, A3 => n_141, ZN => n_142);
  g20553 : ND2D1BWP7T port map(A1 => n_140, A2 => n_116, ZN => n_185);
  g20444 : OAI21D0BWP7T port map(A1 => n_94, A2 => n_519, B => n_139, ZN => n_202);
  g20519 : IND2D1BWP7T port map(A1 => n_138, B1 => n_530, ZN => n_268);
  g20510 : INVD1BWP7T port map(I => n_270, ZN => n_598);
  new_row_buf_reg_0 : LNQD1BWP7T port map(EN => n_151, D => n_99, Q => new_row_buf(0));
  new_row_buf_reg_4 : LNQD1BWP7T port map(EN => n_151, D => n_101, Q => new_row_buf(4));
  new_row_buf_reg_2 : LNQD1BWP7T port map(EN => n_151, D => n_98, Q => new_row_buf(2));
  new_row_buf_reg_5 : LNQD1BWP7T port map(EN => n_151, D => n_96, Q => new_row_buf(5));
  g20546 : INVD0BWP7T port map(I => n_194, ZN => n_137);
  g20529 : INVD0BWP7T port map(I => n_135, ZN => n_136);
  g20544 : AOI21D0BWP7T port map(A1 => n_289, A2 => y(2), B => n_134, ZN => n_238);
  g20541 : OAI21D0BWP7T port map(A1 => n_533, A2 => y(6), B => n_133, ZN => n_162);
  g20543 : MAOI22D0BWP7T port map(A1 => n_132, A2 => n_83, B1 => n_131, B2 => n_130, ZN => n_211);
  g20520 : INR2XD0BWP7T port map(A1 => n_280, B1 => n_129, ZN => n_208);
  g20522 : NR2XD0BWP7T port map(A1 => n_129, A2 => n_283, ZN => n_193);
  g20521 : INR2XD0BWP7T port map(A1 => n_204, B1 => n_129, ZN => n_192);
  g20524 : NR2XD0BWP7T port map(A1 => n_129, A2 => n_235, ZN => n_190);
  g20525 : NR2XD0BWP7T port map(A1 => n_129, A2 => n_128, ZN => n_209);
  g20500 : AO22D0BWP7T port map(A1 => n_244, A2 => row_buf(0), B1 => edit_buf_in(0), B2 => n_243, Z => n_127);
  g20499 : AO22D0BWP7T port map(A1 => n_244, A2 => calc_buf_in(1), B1 => edit_buf_in(7), B2 => n_243, Z => n_126);
  g20493 : AOI33D1BWP7T port map(A1 => n_51, A2 => n_124, A3 => n_111, B1 => n_77, B2 => n_123, B3 => n_22, ZN => n_125);
  g20539 : IND4D0BWP7T port map(A1 => n_121, B1 => counter(0), B2 => n_207, B3 => n_107, ZN => n_122);
  g20542 : IND4D0BWP7T port map(A1 => n_298, B1 => counter(5), B2 => n_212, B3 => n_119, ZN => n_135);
  g20523 : NR2XD0BWP7T port map(A1 => n_237, A2 => n_118, ZN => n_270);
  g20548 : CKND1BWP7T port map(I => n_133, ZN => n_180);
  g20464 : AOI21D0BWP7T port map(A1 => n_68, A2 => n_20, B => n_144, ZN => n_245);
  g20567 : MAOI22D0BWP7T port map(A1 => n_92, A2 => n_116, B1 => n_130, B2 => state(0), ZN => n_117);
  g20568 : AOI21D0BWP7T port map(A1 => n_55, A2 => n_216, B => n_48, ZN => n_115);
  g20551 : INR2D0BWP7T port map(A1 => n_114, B1 => n_533, ZN => n_165);
  g20547 : INVD0BWP7T port map(I => n_183, ZN => n_159);
  g20552 : INR2XD0BWP7T port map(A1 => n_121, B1 => n_533, ZN => n_196);
  g20557 : NR2D1BWP7T port map(A1 => n_533, A2 => n_128, ZN => n_213);
  g20555 : NR2XD0BWP7T port map(A1 => n_533, A2 => n_420, ZN => n_194);
  g20556 : NR2D0BWP7T port map(A1 => n_533, A2 => n_492, ZN => n_200);
  g20549 : CKND1BWP7T port map(I => n_258, ZN => n_215);
  g20545 : OAI21D0BWP7T port map(A1 => n_104, A2 => n_519, B => n_30, ZN => n_173);
  g20537 : MOAI22D0BWP7T port map(A1 => n_11, A2 => n_112, B1 => n_73, B2 => n_111, ZN => n_113);
  g20535 : AOI21D0BWP7T port map(A1 => n_16, A2 => n_111, B => n_144, ZN => n_110);
  g20533 : OA32D1BWP7T port map(A1 => n_105, A2 => n_15, A3 => n_82, B1 => n_62, B2 => n_152, Z => n_109);
  g20531 : NR3D0BWP7T port map(A1 => n_23, A2 => n_519, A3 => n_111, ZN => n_108);
  g20554 : ND2D1BWP7T port map(A1 => n_65, A2 => n_86, ZN => n_203);
  g20558 : OR2D1BWP7T port map(A1 => n_298, A2 => n_128, Z => n_554);
  g20559 : ND2D1BWP7T port map(A1 => n_107, A2 => n_204, ZN => n_198);
  g20560 : ND2D1BWP7T port map(A1 => n_107, A2 => n_280, ZN => n_183);
  g20563 : ND2D1BWP7T port map(A1 => n_107, A2 => n_106, ZN => n_133);
  g20564 : ND2D1BWP7T port map(A1 => n_107, A2 => y(7), ZN => n_258);
  g20561 : IND2D1BWP7T port map(A1 => n_105, B1 => n_107, ZN => n_530);
  g20562 : ND2D1BWP7T port map(A1 => n_104, A2 => n_124, ZN => n_129);
  g20565 : MOAI22D0BWP7T port map(A1 => n_160, A2 => n_0, B1 => n_100, B2 => row_buf(1), ZN => n_103);
  g20570 : OAI211D1BWP7T port map(A1 => counter(0), A2 => n_492, B => n_19, C => n_42, ZN => n_102);
  g20572 : MOAI22D0BWP7T port map(A1 => n_160, A2 => n_548, B1 => n_100, B2 => row_buf(4), ZN => n_101);
  g20573 : MOAI22D0BWP7T port map(A1 => n_160, A2 => n_2, B1 => n_100, B2 => row_buf(0), ZN => n_99);
  g20574 : MOAI22D0BWP7T port map(A1 => n_160, A2 => n_557, B1 => n_100, B2 => row_buf(2), ZN => n_98);
  g20575 : MOAI22D0BWP7T port map(A1 => n_160, A2 => n_546, B1 => n_100, B2 => row_buf(3), ZN => n_97);
  g20576 : MOAI22D0BWP7T port map(A1 => n_160, A2 => n_551, B1 => n_100, B2 => row_buf(5), ZN => n_96);
  g20603 : MAOI22D0BWP7T port map(A1 => n_119, A2 => n_149, B1 => n_515, B2 => n_204, ZN => n_93);
  g20580 : CKND1BWP7T port map(I => n_132, ZN => n_140);
  g20585 : ND2D1BWP7T port map(A1 => n_92, A2 => n_157, ZN => n_176);
  g20588 : AOI21D0BWP7T port map(A1 => n_289, A2 => y(5), B => n_74, ZN => n_225);
  g20577 : IOA21D1BWP7T port map(A1 => n_289, A2 => n_91, B => n_90, ZN => n_134);
  g20594 : OAI22D0BWP7T port map(A1 => n_37, A2 => counter(3), B1 => n_88, B2 => n_289, ZN => n_89);
  g20571 : AOI32D1BWP7T port map(A1 => n_31, A2 => n_154, A3 => state(0), B1 => n_27, B2 => n_86, ZN => n_87);
  g20566 : AOI21D0BWP7T port map(A1 => n_84, A2 => n_143, B => n_83, ZN => n_85);
  g20540 : NR4D0BWP7T port map(A1 => n_82, A2 => n_392, A3 => state(2), A4 => n_17, ZN => n_94);
  g20587 : NR2XD0BWP7T port map(A1 => n_91, A2 => n_118, ZN => n_155);
  g20578 : ND3D0BWP7T port map(A1 => n_153, A2 => n_116, A3 => n_124, ZN => n_237);
  g20589 : ND2D1BWP7T port map(A1 => n_153, A2 => n_128, ZN => n_132);
  g20581 : INVD1BWP7T port map(I => n_107, ZN => n_533);
  g20582 : ND2D4BWP7T port map(A1 => n_80, A2 => n_160, ZN => sqi_enabled);
  g20599 : AOI22D0BWP7T port map(A1 => n_186, A2 => n_179, B1 => n_189, B2 => n_206, ZN => n_79);
  g20601 : AOI22D0BWP7T port map(A1 => n_77, A2 => n_221, B1 => n_28, B2 => n_123, ZN => n_78);
  g20598 : OAI32D1BWP7T port map(A1 => n_33, A2 => n_149, A3 => n_283, B1 => n_216, B2 => n_206, ZN => n_76);
  g20621 : INVD0BWP7T port map(I => n_74, ZN => n_75);
  g20604 : MOAI22D0BWP7T port map(A1 => n_29, A2 => state(1), B1 => n_73, B2 => n_86, ZN => n_138);
  g20605 : AOI22D0BWP7T port map(A1 => n_166, A2 => state(0), B1 => n_116, B2 => n_123, ZN => n_210);
  g20615 : ND2D1BWP7T port map(A1 => n_515, A2 => n_86, ZN => n_219);
  g20612 : ND2D1BWP7T port map(A1 => n_490, A2 => n_86, ZN => n_231);
  g20583 : AOI221D0BWP7T port map(A1 => n_9, A2 => y(6), B1 => n_289, B2 => n_71, C => n_204, ZN => n_72);
  g20550 : ND4D0BWP7T port map(A1 => n_69, A2 => n_105, A3 => sqi_finished, A4 => n_141, ZN => n_70);
  g20569 : MAOI22D0BWP7T port map(A1 => n_52, A2 => state(1), B1 => n_61, B2 => edit, ZN => n_68);
  g20596 : OA21D0BWP7T port map(A1 => n_105, A2 => n_45, B => n_66, Z => n_67);
  g20595 : IOA21D1BWP7T port map(A1 => n_105, A2 => n_154, B => state(2), ZN => n_65);
  g20586 : NR2XD0BWP7T port map(A1 => n_82, A2 => n_64, ZN => n_104);
  g20591 : AO211D0BWP7T port map(A1 => n_64, A2 => state(2), B => n_10, C => n_131, Z => n_298);
  g20592 : NR3D0BWP7T port map(A1 => n_160, A2 => state(2), A3 => sqi_finished, ZN => n_151);
  g20593 : NR2XD0BWP7T port map(A1 => n_82, A2 => n_63, ZN => n_107);
  g20579 : INR3D0BWP7T port map(A1 => edit, B1 => n_62, B2 => n_61, ZN => n_243);
  g20597 : AOI21D0BWP7T port map(A1 => n_105, A2 => n_124, B => n_143, ZN => n_60);
  g20602 : OAI22D0BWP7T port map(A1 => n_420, A2 => n_58, B1 => n_284, B2 => n_289, ZN => n_59);
  g20630 : AOI21D0BWP7T port map(A1 => n_255, A2 => counter(4), B => n_56, ZN => n_57);
  g20626 : OAI21D0BWP7T port map(A1 => n_283, A2 => n_71, B => n_235, ZN => n_55);
  g20625 : OAI21D0BWP7T port map(A1 => counter(1), A2 => n_106, B => n_90, ZN => n_54);
  g20633 : AOI21D0BWP7T port map(A1 => n_39, A2 => n_62, B => state(2), ZN => n_170);
  g20610 : ND2D1BWP7T port map(A1 => n_186, A2 => n_128, ZN => n_92);
  g20634 : OAI21D0BWP7T port map(A1 => counter(1), A2 => n_121, B => n_90, ZN => n_74);
  g20614 : ND2D1BWP7T port map(A1 => n_505, A2 => n_86, ZN => n_220);
  g20613 : ND2D1BWP7T port map(A1 => n_492, A2 => n_86, ZN => n_228);
  g20600 : AOI33D1BWP7T port map(A1 => n_69, A2 => n_52, A3 => sqi_finished, B1 => n_51, B2 => state(3), B3 => ce, ZN => n_53);
  g20627 : AOI21D0BWP7T port map(A1 => n_179, A2 => n_49, B => n_48, ZN => n_50);
  g20607 : AOI31D0BWP7T port map(A1 => n_289, A2 => counter(2), A3 => y(6), B => n_119, ZN => n_47);
  g20623 : OAI21D0BWP7T port map(A1 => n_69, A2 => state(3), B => n_124, ZN => n_46);
  g20609 : NR2D1BWP7T port map(A1 => n_274, A2 => y(6), ZN => n_263);
  g20611 : IND2D1BWP7T port map(A1 => n_274, B1 => n_121, ZN => n_91);
  g20590 : AOI21D0BWP7T port map(A1 => n_8, A2 => n_5, B => edit, ZN => n_111);
  g20618 : ND2D1BWP7T port map(A1 => n_420, A2 => n_86, ZN => n_233);
  g20619 : NR2XD0BWP7T port map(A1 => n_392, A2 => n_45, ZN => n_153);
  g20616 : ND2D1BWP7T port map(A1 => n_392, A2 => n_86, ZN => n_218);
  g20620 : OAI21D0BWP7T port map(A1 => n_116, A2 => state(2), B => state(3), ZN => n_100);
  g20606 : AO32D0BWP7T port map(A1 => n_69, A2 => n_38, A3 => state(3), B1 => n_116, B2 => n_52, Z => n_244);
  g20667 : INVD0BWP7T port map(I => n_63, ZN => n_44);
  g20629 : AN2D4BWP7T port map(A1 => n_24, A2 => state(3), Z => ready);
  g20631 : IOA21D1BWP7T port map(A1 => n_41, A2 => n_289, B => n_40, ZN => n_42);
  g20632 : IAO21D0BWP7T port map(A1 => n_62, A2 => state(1), B => n_52, ZN => n_80);
  g20653 : NR2D0BWP7T port map(A1 => n_39, A2 => reset, ZN => n_83);
  g20687 : ND2D1BWP7T port map(A1 => n_235, A2 => n_86, ZN => n_174);
  g20682 : ND2D1BWP7T port map(A1 => n_283, A2 => n_86, ZN => n_172);
  g20688 : NR2D0BWP7T port map(A1 => n_39, A2 => n_38, ZN => n_157);
  g20637 : INVD1BWP7T port map(I => n_505, ZN => n_207);
  g20639 : CKND1BWP7T port map(I => n_492, ZN => n_188);
  g20640 : INVD1BWP7T port map(I => n_189, ZN => n_490);
  g20641 : INVD1BWP7T port map(I => n_187, ZN => n_515);
  g20644 : INR2XD0BWP7T port map(A1 => n_36, B1 => n_179, ZN => n_37);
  g20646 : NR2XD0BWP7T port map(A1 => n_519, A2 => counter(6), ZN => n_35);
  g20624 : AN3D0BWP7T port map(A1 => n_66, A2 => n_154, A3 => n_112, Z => n_34);
  g20608 : OAI21D0BWP7T port map(A1 => n_216, A2 => counter(2), B => n_86, ZN => n_229);
  g20635 : AOI22D0BWP7T port map(A1 => n_86, A2 => state(0), B1 => n_123, B2 => state(3), ZN => n_139);
  g20617 : ND2D1BWP7T port map(A1 => n_130, A2 => n_154, ZN => n_82);
  g20638 : INVD1BWP7T port map(I => n_420, ZN => n_191);
  g20642 : CKND1BWP7T port map(I => n_392, ZN => n_186);
  g20665 : NR2D1BWP7T port map(A1 => n_88, A2 => counter(4), ZN => n_187);
  g20664 : NR2XD0BWP7T port map(A1 => n_88, A2 => n_149, ZN => n_189);
  g20660 : ND2D1BWP7T port map(A1 => n_114, A2 => n_33, ZN => n_505);
  g20663 : ND2D1BWP7T port map(A1 => n_114, A2 => counter(2), ZN => n_492);
  g20676 : OAI21D0BWP7T port map(A1 => reset, A2 => sqi_finished, B => n_30, ZN => n_31);
  g20678 : IND2D0BWP7T port map(A1 => n_66, B1 => n_143, ZN => n_29);
  g20673 : OAI21D0BWP7T port map(A1 => state(1), A2 => n_112, B => n_27, ZN => n_28);
  g20672 : AOI21D0BWP7T port map(A1 => counter(0), A2 => counter(4), B => n_114, ZN => n_26);
  g20643 : IND2D0BWP7T port map(A1 => n_40, B1 => n_284, ZN => n_25);
  g20684 : AN2D1BWP7T port map(A1 => n_114, A2 => counter(0), Z => n_56);
  g20689 : NR2D0BWP7T port map(A1 => n_519, A2 => state(2), ZN => n_221);
  g20690 : ND2D1BWP7T port map(A1 => n_66, A2 => n_86, ZN => n_63);
  g20669 : INVD1BWP7T port map(I => n_131, ZN => n_166);
  g20691 : NR2XD0BWP7T port map(A1 => n_179, A2 => n_206, ZN => n_90);
  g20661 : ND2D1BWP7T port map(A1 => n_116, A2 => state(3), ZN => n_160);
  g20679 : ND2D1BWP7T port map(A1 => n_23, A2 => n_38, ZN => n_24);
  g20645 : IND2D1BWP7T port map(A1 => n_21, B1 => mode, ZN => n_22);
  g20584 : ND2D0BWP7T port map(A1 => n_84, A2 => state(3), ZN => n_20);
  g20622 : ND3D0BWP7T port map(A1 => n_280, A2 => counter(3), A3 => y(6), ZN => n_19);
  g20628 : OAI211D1BWP7T port map(A1 => n_17, A2 => state(3), B => state(0), C => n_141, ZN => n_18);
  g20668 : INVD0BWP7T port map(I => n_130, ZN => n_45);
  row_buf_reg_0 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_buf(0), D => n_141, Q => row_buf(0));
  g20685 : OAI21D0BWP7T port map(A1 => n_154, A2 => sqi_finished, B => n_64, ZN => n_77);
  row_buf_reg_4 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_buf(4), D => n_141, Q => row_buf(4));
  row_buf_reg_3 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_buf(3), D => n_141, Q => row_buf(3));
  g20651 : INR2D1BWP7T port map(A1 => n_280, B1 => n_58, ZN => n_48);
  g20656 : OR2D1BWP7T port map(A1 => n_265, A2 => y(2), Z => n_118);
  g20657 : OR2D1BWP7T port map(A1 => n_565, A2 => y(5), Z => n_274);
  g20658 : NR2XD0BWP7T port map(A1 => n_128, A2 => n_33, ZN => n_119);
  g20659 : NR2D1BWP7T port map(A1 => n_280, A2 => n_216, ZN => n_105);
  g20662 : ND2D1BWP7T port map(A1 => n_40, A2 => counter(4), ZN => n_420);
  g20666 : ND2D1BWP7T port map(A1 => n_40, A2 => n_149, ZN => n_392);
  g20716 : INVD0BWP7T port map(I => n_15, ZN => n_16);
  g20671 : AO21D0BWP7T port map(A1 => n_33, A2 => n_149, B => n_40, Z => n_14);
  g20674 : OAI21D0BWP7T port map(A1 => n_154, A2 => n_17, B => n_144, ZN => n_13);
  g20655 : ND2D0BWP7T port map(A1 => n_69, A2 => n_52, ZN => n_12);
  g20677 : OA21D0BWP7T port map(A1 => n_154, A2 => ce, B => n_38, Z => n_11);
  g20670 : AOI21D0BWP7T port map(A1 => n_144, A2 => sqi_finished, B => state(2), ZN => n_10);
  g20675 : ND2D1BWP7T port map(A1 => n_86, A2 => n_216, ZN => n_371);
  g20683 : ND2D0BWP7T port map(A1 => n_86, A2 => n_128, ZN => n_175);
  row_buf_reg_2 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_buf(2), D => n_141, Q => row_buf(2));
  g20686 : AOI21D0BWP7T port map(A1 => state(1), A2 => state(2), B => n_84, ZN => n_61);
  g20681 : NR2D0BWP7T port map(A1 => n_23, A2 => n_38, ZN => n_73);
  row_buf_reg_1 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_buf(1), D => n_141, Q => row_buf(1));
  row_buf_reg_5 : DFKCNQD1BWP7T port map(CP => clk, CN => new_row_buf(5), D => n_141, Q => row_buf(5));
  g20719 : INVD0BWP7T port map(I => n_116, ZN => n_39);
  g20693 : ND2D1BWP7T port map(A1 => n_86, A2 => n_154, ZN => n_131);
  g20717 : CKND1BWP7T port map(I => n_147, ZN => n_124);
  g20721 : INVD1BWP7T port map(I => n_179, ZN => n_235);
  g20720 : INVD1BWP7T port map(I => n_206, ZN => n_283);
  g20718 : INVD0BWP7T port map(I => n_128, ZN => n_9);
  g20680 : NR3D0BWP7T port map(A1 => x(3), A2 => x(4), A3 => x(0), ZN => n_8);
  g20700 : CKND2D0BWP7T port map(A1 => n_289, A2 => y(4), ZN => n_7);
  g20722 : ND2D1BWP7T port map(A1 => state(2), A2 => n_112, ZN => n_15);
  g20695 : CKND1BWP7T port map(I => n_123, ZN => n_30);
  g20725 : ND2D1BWP7T port map(A1 => n_154, A2 => state(2), ZN => n_152);
  g20696 : INVD0BWP7T port map(I => n_216, ZN => n_212);
  g20728 : CKND2D1BWP7T port map(A1 => n_112, A2 => state(0), ZN => n_62);
  g20692 : NR3D0BWP7T port map(A1 => counter(5), A2 => counter(6), A3 => counter(7), ZN => n_130);
  g20737 : NR2XD0BWP7T port map(A1 => n_154, A2 => state(0), ZN => n_116);
  g20697 : INVD1BWP7T port map(I => n_86, ZN => n_519);
  g20698 : CKND2D0BWP7T port map(A1 => n_289, A2 => y(1), ZN => n_6);
  g20723 : ND2D1BWP7T port map(A1 => n_154, A2 => sqi_finished, ZN => n_27);
  g20694 : INVD0BWP7T port map(I => n_23, ZN => n_51);
  g20724 : ND2D1BWP7T port map(A1 => counter(0), A2 => n_71, ZN => n_41);
  g20735 : ND2D1BWP7T port map(A1 => state(2), A2 => n_141, ZN => n_147);
  g20729 : CKND2D1BWP7T port map(A1 => n_49, A2 => counter(2), ZN => n_88);
  g20727 : CKND2D1BWP7T port map(A1 => n_49, A2 => counter(4), ZN => n_284);
  g20732 : NR2D1BWP7T port map(A1 => n_112, A2 => reset, ZN => n_143);
  g20731 : NR2D0BWP7T port map(A1 => n_38, A2 => state(0), ZN => n_66);
  g20733 : NR2D1BWP7T port map(A1 => n_49, A2 => counter(4), ZN => n_114);
  g20738 : NR2XD0BWP7T port map(A1 => n_255, A2 => counter(1), ZN => n_206);
  g20739 : NR2D1BWP7T port map(A1 => n_289, A2 => counter(0), ZN => n_179);
  g20699 : NR2D0BWP7T port map(A1 => x(1), A2 => x(2), ZN => n_5);
  g20701 : NR2D0BWP7T port map(A1 => state(0), A2 => state(3), ZN => n_4);
  g20702 : ND2D1BWP7T port map(A1 => ce, A2 => rw, ZN => n_21);
  g20703 : ND2D1BWP7T port map(A1 => counter(1), A2 => y(6), ZN => n_36);
  g20707 : ND2D1BWP7T port map(A1 => state(0), A2 => sqi_finished, ZN => n_64);
  g20704 : ND2D1BWP7T port map(A1 => counter(0), A2 => y(6), ZN => n_58);
  g20726 : NR2D0BWP7T port map(A1 => state(1), A2 => state(2), ZN => n_84);
  g20730 : NR2D1BWP7T port map(A1 => state(1), A2 => state(0), ZN => n_69);
  g20712 : NR2D1BWP7T port map(A1 => state(2), A2 => reset, ZN => n_123);
  g20715 : NR2XD0BWP7T port map(A1 => state(3), A2 => reset, ZN => n_86);
  g20705 : OR2D1BWP7T port map(A1 => y(0), A2 => y(1), Z => n_265);
  g20706 : OR2D1BWP7T port map(A1 => y(3), A2 => y(4), Z => n_565);
  g20709 : ND2D1BWP7T port map(A1 => state(1), A2 => state(0), ZN => n_23);
  g20710 : NR2XD0BWP7T port map(A1 => y(6), A2 => y(7), ZN => n_121);
  g20708 : NR2D1BWP7T port map(A1 => state(3), A2 => state(2), ZN => n_52);
  g20711 : NR2XD0BWP7T port map(A1 => counter(2), A2 => counter(3), ZN => n_40);
  g20734 : NR2XD0BWP7T port map(A1 => counter(1), A2 => counter(0), ZN => n_204);
  g20713 : NR2XD0BWP7T port map(A1 => counter(1), A2 => counter(2), ZN => n_280);
  g20736 : ND2D1BWP7T port map(A1 => counter(1), A2 => counter(0), ZN => n_128);
  g20714 : ND2D1BWP7T port map(A1 => counter(4), A2 => counter(3), ZN => n_216);
  g20742 : INVD1BWP7T port map(I => y(7), ZN => n_106);
  g20761 : INVD1BWP7T port map(I => sqi_data_in(7), ZN => n_535);
  g20762 : INVD1BWP7T port map(I => sqi_data_in(4), ZN => n_548);
  g20752 : INVD1BWP7T port map(I => sqi_data_in(3), ZN => n_546);
  g20754 : INVD0BWP7T port map(I => sqi_data_in(0), ZN => n_2);
  g20740 : BUFFD4BWP7T port map(I => sqi_address_10_3060, Z => sqi_address(10));
  g20755 : INVD0BWP7T port map(I => sqi_data_in(1), ZN => n_0);
  g20758 : INVD1BWP7T port map(I => sqi_finished, ZN => n_17);
  g20757 : INVD1BWP7T port map(I => y(6), ZN => n_71);
  g20744 : INVD1BWP7T port map(I => reset, ZN => n_141);
  g20748 : INVD1BWP7T port map(I => sqi_data_in(6), ZN => n_538);
  g20753 : INVD1BWP7T port map(I => sqi_data_in(2), ZN => n_557);
  g20751 : INVD1BWP7T port map(I => sqi_data_in(5), ZN => n_551);
  drc_bufs20992 : INVD4BWP7T port map(I => n_645, ZN => sqi_address(14));
  drc_bufs20998 : INVD4BWP7T port map(I => n_651, ZN => sqi_address(13));
  drc_bufs21004 : INVD4BWP7T port map(I => n_657, ZN => sqi_address(6));
  drc_bufs21010 : INVD4BWP7T port map(I => n_663, ZN => sqi_address(0));
  drc_bufs21016 : INVD4BWP7T port map(I => n_669, ZN => sqi_address(3));
  drc_bufs21022 : INVD4BWP7T port map(I => n_675, ZN => calc_buf_out(7));
  drc_bufs21028 : INVD4BWP7T port map(I => n_681, ZN => calc_buf_out(15));
  drc_bufs21034 : INVD4BWP7T port map(I => n_687, ZN => framebuffer_buf(7));
  drc_bufs21040 : INVD4BWP7T port map(I => n_693, ZN => framebuffer_buf(68));
  drc_bufs21046 : INVD4BWP7T port map(I => n_699, ZN => framebuffer_buf(39));
  drc_bufs21052 : INVD4BWP7T port map(I => n_705, ZN => framebuffer_buf(103));
  drc_bufs21058 : INVD4BWP7T port map(I => n_711, ZN => framebuffer_buf(67));
  drc_bufs21064 : INVD4BWP7T port map(I => n_717, ZN => framebuffer_buf(104));
  drc_bufs21070 : INVD4BWP7T port map(I => n_723, ZN => framebuffer_buf(40));
  drc_bufs21076 : INVD4BWP7T port map(I => n_729, ZN => framebuffer_buf(65));
  drc_bufs21082 : INVD4BWP7T port map(I => n_735, ZN => framebuffer_buf(157));
  drc_bufs21088 : INVD4BWP7T port map(I => n_741, ZN => framebuffer_buf(156));
  drc_bufs21094 : INVD4BWP7T port map(I => n_747, ZN => framebuffer_buf(155));
  drc_bufs21100 : INVD4BWP7T port map(I => n_753, ZN => framebuffer_buf(154));
  drc_bufs21106 : INVD4BWP7T port map(I => n_759, ZN => framebuffer_buf(153));
  drc_bufs21112 : INVD4BWP7T port map(I => n_765, ZN => framebuffer_buf(152));
  drc_bufs21118 : INVD4BWP7T port map(I => n_771, ZN => framebuffer_buf(151));
  drc_bufs21124 : INVD4BWP7T port map(I => n_777, ZN => framebuffer_buf(150));
  drc_bufs21130 : INVD4BWP7T port map(I => n_783, ZN => framebuffer_buf(149));
  drc_bufs21136 : INVD4BWP7T port map(I => n_789, ZN => framebuffer_buf(148));
  drc_bufs21142 : INVD4BWP7T port map(I => n_795, ZN => framebuffer_buf(147));
  drc_bufs21148 : INVD4BWP7T port map(I => n_801, ZN => framebuffer_buf(146));
  drc_bufs21154 : INVD4BWP7T port map(I => n_807, ZN => framebuffer_buf(145));
  drc_bufs21160 : INVD4BWP7T port map(I => n_813, ZN => framebuffer_buf(144));
  drc_bufs21166 : INVD4BWP7T port map(I => n_819, ZN => framebuffer_buf(143));
  drc_bufs21172 : INVD4BWP7T port map(I => n_825, ZN => framebuffer_buf(142));
  drc_bufs21178 : INVD4BWP7T port map(I => n_831, ZN => framebuffer_buf(141));
  drc_bufs21184 : INVD4BWP7T port map(I => n_837, ZN => framebuffer_buf(140));
  drc_bufs21190 : INVD4BWP7T port map(I => n_843, ZN => framebuffer_buf(139));
  drc_bufs21196 : INVD4BWP7T port map(I => n_849, ZN => framebuffer_buf(105));
  drc_bufs21202 : INVD4BWP7T port map(I => n_855, ZN => framebuffer_buf(106));
  drc_bufs21208 : INVD4BWP7T port map(I => n_861, ZN => framebuffer_buf(136));
  drc_bufs21214 : INVD4BWP7T port map(I => n_867, ZN => framebuffer_buf(135));
  drc_bufs21220 : INVD4BWP7T port map(I => n_873, ZN => framebuffer_buf(134));
  drc_bufs21226 : INVD4BWP7T port map(I => n_879, ZN => framebuffer_buf(133));
  drc_bufs21232 : INVD4BWP7T port map(I => n_885, ZN => framebuffer_buf(132));
  drc_bufs21238 : INVD4BWP7T port map(I => n_891, ZN => framebuffer_buf(131));
  drc_bufs21244 : INVD4BWP7T port map(I => n_897, ZN => framebuffer_buf(130));
  drc_bufs21250 : INVD4BWP7T port map(I => n_903, ZN => framebuffer_buf(8));
  drc_bufs21256 : INVD4BWP7T port map(I => n_909, ZN => framebuffer_buf(128));
  drc_bufs21262 : INVD4BWP7T port map(I => n_915, ZN => framebuffer_buf(127));
  drc_bufs21268 : INVD4BWP7T port map(I => n_921, ZN => framebuffer_buf(126));
  drc_bufs21274 : INVD4BWP7T port map(I => n_927, ZN => framebuffer_buf(125));
  drc_bufs21280 : INVD4BWP7T port map(I => n_933, ZN => framebuffer_buf(124));
  drc_bufs21286 : INVD4BWP7T port map(I => n_939, ZN => framebuffer_buf(123));
  drc_bufs21292 : INVD4BWP7T port map(I => n_945, ZN => framebuffer_buf(122));
  drc_bufs21298 : INVD4BWP7T port map(I => n_951, ZN => framebuffer_buf(41));
  drc_bufs21304 : INVD4BWP7T port map(I => n_957, ZN => framebuffer_buf(120));
  drc_bufs21310 : INVD4BWP7T port map(I => n_963, ZN => framebuffer_buf(119));
  drc_bufs21316 : INVD4BWP7T port map(I => n_969, ZN => framebuffer_buf(118));
  drc_bufs21322 : INVD4BWP7T port map(I => n_975, ZN => framebuffer_buf(115));
  drc_bufs21328 : INVD4BWP7T port map(I => n_981, ZN => framebuffer_buf(114));
  drc_bufs21334 : INVD4BWP7T port map(I => n_987, ZN => framebuffer_buf(113));
  drc_bufs21340 : INVD4BWP7T port map(I => n_993, ZN => framebuffer_buf(112));
  drc_bufs21346 : INVD4BWP7T port map(I => n_999, ZN => framebuffer_buf(107));
  drc_bufs21352 : INVD4BWP7T port map(I => n_1005, ZN => framebuffer_buf(108));
  drc_bufs21358 : INVD4BWP7T port map(I => n_1011, ZN => framebuffer_buf(42));
  drc_bufs21364 : INVD4BWP7T port map(I => n_1017, ZN => framebuffer_buf(109));
  drc_bufs21370 : INVD4BWP7T port map(I => n_1023, ZN => framebuffer_buf(110));
  drc_bufs21376 : INVD4BWP7T port map(I => n_1029, ZN => framebuffer_buf(9));
  drc_bufs21382 : INVD4BWP7T port map(I => n_1035, ZN => framebuffer_buf(43));
  drc_bufs21388 : INVD4BWP7T port map(I => n_1041, ZN => framebuffer_buf(111));
  drc_bufs21394 : INVD4BWP7T port map(I => n_1047, ZN => framebuffer_buf(44));
  drc_bufs21400 : INVD4BWP7T port map(I => n_1053, ZN => framebuffer_buf(102));
  drc_bufs21406 : INVD4BWP7T port map(I => n_1059, ZN => framebuffer_buf(101));
  drc_bufs21412 : INVD4BWP7T port map(I => n_1065, ZN => framebuffer_buf(100));
  drc_bufs21418 : INVD4BWP7T port map(I => n_1071, ZN => framebuffer_buf(99));
  drc_bufs21424 : INVD4BWP7T port map(I => n_1077, ZN => framebuffer_buf(98));
  drc_bufs21430 : INVD4BWP7T port map(I => n_1083, ZN => framebuffer_buf(97));
  drc_bufs21436 : INVD4BWP7T port map(I => n_1089, ZN => framebuffer_buf(96));
  drc_bufs21442 : INVD4BWP7T port map(I => n_1095, ZN => framebuffer_buf(95));
  drc_bufs21448 : INVD4BWP7T port map(I => n_1101, ZN => framebuffer_buf(94));
  drc_bufs21454 : INVD4BWP7T port map(I => n_1107, ZN => framebuffer_buf(93));
  drc_bufs21460 : INVD4BWP7T port map(I => n_1113, ZN => framebuffer_buf(92));
  drc_bufs21466 : INVD4BWP7T port map(I => n_1119, ZN => framebuffer_buf(91));
  drc_bufs21472 : INVD4BWP7T port map(I => n_1125, ZN => framebuffer_buf(90));
  drc_bufs21478 : INVD4BWP7T port map(I => n_1131, ZN => framebuffer_buf(89));
  drc_bufs21484 : INVD4BWP7T port map(I => n_1137, ZN => framebuffer_buf(88));
  drc_bufs21490 : INVD4BWP7T port map(I => n_1143, ZN => framebuffer_buf(87));
  drc_bufs21496 : INVD4BWP7T port map(I => n_1149, ZN => framebuffer_buf(86));
  drc_bufs21502 : INVD4BWP7T port map(I => n_1155, ZN => framebuffer_buf(85));
  drc_bufs21508 : INVD4BWP7T port map(I => n_1161, ZN => framebuffer_buf(84));
  drc_bufs21514 : INVD4BWP7T port map(I => n_1167, ZN => framebuffer_buf(83));
  drc_bufs21520 : INVD4BWP7T port map(I => n_1173, ZN => framebuffer_buf(82));
  drc_bufs21526 : INVD4BWP7T port map(I => n_1179, ZN => framebuffer_buf(81));
  drc_bufs21532 : INVD4BWP7T port map(I => n_1185, ZN => framebuffer_buf(80));
  drc_bufs21538 : INVD4BWP7T port map(I => n_1191, ZN => framebuffer_buf(10));
  drc_bufs21544 : INVD4BWP7T port map(I => n_1197, ZN => framebuffer_buf(78));
  drc_bufs21550 : INVD4BWP7T port map(I => n_1203, ZN => framebuffer_buf(77));
  drc_bufs21556 : INVD4BWP7T port map(I => n_1209, ZN => framebuffer_buf(76));
  drc_bufs21562 : INVD4BWP7T port map(I => n_1215, ZN => framebuffer_buf(45));
  drc_bufs21568 : INVD4BWP7T port map(I => n_1221, ZN => framebuffer_buf(74));
  drc_bufs21574 : INVD4BWP7T port map(I => n_1227, ZN => framebuffer_buf(73));
  drc_bufs21580 : INVD4BWP7T port map(I => n_1233, ZN => framebuffer_buf(23));
  drc_bufs21586 : INVD4BWP7T port map(I => n_1239, ZN => framebuffer_buf(46));
  drc_bufs21592 : INVD4BWP7T port map(I => n_1245, ZN => framebuffer_buf(70));
  drc_bufs21598 : INVD4BWP7T port map(I => n_1251, ZN => framebuffer_buf(69));
  drc_bufs21604 : INVD4BWP7T port map(I => n_1257, ZN => calc_buf_out(22));
  drc_bufs21610 : INVD4BWP7T port map(I => n_1263, ZN => framebuffer_buf(21));
  drc_bufs21616 : INVD4BWP7T port map(I => n_1269, ZN => framebuffer_buf(66));
  drc_bufs21622 : INVD4BWP7T port map(I => n_1275, ZN => framebuffer_buf(20));
  drc_bufs21628 : INVD4BWP7T port map(I => n_1281, ZN => framebuffer_buf(64));
  drc_bufs21634 : INVD4BWP7T port map(I => n_1287, ZN => framebuffer_buf(63));
  drc_bufs21640 : INVD4BWP7T port map(I => n_1293, ZN => framebuffer_buf(62));
  drc_bufs21646 : INVD4BWP7T port map(I => n_1299, ZN => framebuffer_buf(61));
  drc_bufs21652 : INVD4BWP7T port map(I => n_1305, ZN => framebuffer_buf(60));
  drc_bufs21658 : INVD4BWP7T port map(I => n_1311, ZN => framebuffer_buf(59));
  drc_bufs21664 : INVD4BWP7T port map(I => n_1317, ZN => framebuffer_buf(58));
  drc_bufs21670 : INVD4BWP7T port map(I => n_1323, ZN => framebuffer_buf(57));
  drc_bufs21676 : INVD4BWP7T port map(I => n_1329, ZN => framebuffer_buf(56));
  drc_bufs21682 : INVD4BWP7T port map(I => n_1335, ZN => framebuffer_buf(138));
  drc_bufs21688 : INVD4BWP7T port map(I => n_1341, ZN => framebuffer_buf(54));
  drc_bufs21694 : INVD4BWP7T port map(I => n_1347, ZN => framebuffer_buf(53));
  drc_bufs21700 : INVD4BWP7T port map(I => n_1353, ZN => framebuffer_buf(52));
  drc_bufs21706 : INVD4BWP7T port map(I => n_1359, ZN => framebuffer_buf(129));
  drc_bufs21712 : INVD4BWP7T port map(I => n_1365, ZN => framebuffer_buf(50));
  drc_bufs21718 : INVD4BWP7T port map(I => n_1371, ZN => framebuffer_buf(49));
  drc_bufs21724 : INVD4BWP7T port map(I => n_1377, ZN => calc_buf_out(18));
  drc_bufs21730 : INVD4BWP7T port map(I => n_1383, ZN => framebuffer_buf(11));
  drc_bufs21736 : INVD4BWP7T port map(I => n_1389, ZN => framebuffer_buf(47));
  drc_bufs21742 : INVD4BWP7T port map(I => n_1395, ZN => framebuffer_buf(121));
  drc_bufs21748 : INVD4BWP7T port map(I => n_1401, ZN => framebuffer_buf(48));
  drc_bufs21754 : INVD4BWP7T port map(I => n_1407, ZN => framebuffer_buf(12));
  drc_bufs21760 : INVD4BWP7T port map(I => n_1413, ZN => framebuffer_buf(13));
  drc_bufs21766 : INVD4BWP7T port map(I => n_1419, ZN => framebuffer_buf(51));
  drc_bufs21772 : INVD4BWP7T port map(I => n_1425, ZN => framebuffer_buf(14));
  drc_bufs21778 : INVD4BWP7T port map(I => n_1431, ZN => calc_buf_out(19));
  drc_bufs21784 : INVD4BWP7T port map(I => n_1437, ZN => framebuffer_buf(38));
  drc_bufs21790 : INVD4BWP7T port map(I => n_1443, ZN => framebuffer_buf(37));
  drc_bufs21796 : INVD4BWP7T port map(I => n_1449, ZN => framebuffer_buf(36));
  drc_bufs21802 : INVD4BWP7T port map(I => n_1455, ZN => framebuffer_buf(35));
  drc_bufs21808 : INVD4BWP7T port map(I => n_1461, ZN => framebuffer_buf(34));
  drc_bufs21814 : INVD4BWP7T port map(I => n_1467, ZN => framebuffer_buf(33));
  drc_bufs21820 : INVD4BWP7T port map(I => n_1473, ZN => framebuffer_buf(32));
  drc_bufs21826 : INVD4BWP7T port map(I => n_1479, ZN => framebuffer_buf(31));
  drc_bufs21832 : INVD4BWP7T port map(I => n_1485, ZN => framebuffer_buf(30));
  drc_bufs21838 : INVD4BWP7T port map(I => n_1491, ZN => framebuffer_buf(29));
  drc_bufs21844 : INVD4BWP7T port map(I => n_1497, ZN => framebuffer_buf(28));
  drc_bufs21850 : INVD4BWP7T port map(I => n_1503, ZN => framebuffer_buf(79));
  drc_bufs21856 : INVD4BWP7T port map(I => n_1509, ZN => framebuffer_buf(26));
  drc_bufs21862 : INVD4BWP7T port map(I => n_1515, ZN => framebuffer_buf(75));
  drc_bufs21868 : INVD4BWP7T port map(I => n_1521, ZN => framebuffer_buf(24));
  drc_bufs21874 : INVD4BWP7T port map(I => n_1527, ZN => framebuffer_buf(71));
  drc_bufs21880 : INVD4BWP7T port map(I => n_1533, ZN => framebuffer_buf(22));
  drc_bufs21886 : INVD4BWP7T port map(I => n_1539, ZN => calc_buf_out(4));
  drc_bufs21892 : INVD4BWP7T port map(I => n_1545, ZN => calc_buf_out(21));
  drc_bufs21898 : INVD4BWP7T port map(I => n_1551, ZN => framebuffer_buf(19));
  drc_bufs21904 : INVD4BWP7T port map(I => n_1557, ZN => framebuffer_buf(18));
  drc_bufs21910 : INVD4BWP7T port map(I => n_1563, ZN => framebuffer_buf(17));
  drc_bufs21916 : INVD4BWP7T port map(I => n_1569, ZN => framebuffer_buf(15));
  drc_bufs21922 : INVD4BWP7T port map(I => n_1575, ZN => framebuffer_buf(55));
  drc_bufs21928 : INVD4BWP7T port map(I => n_1581, ZN => framebuffer_buf(137));
  drc_bufs21934 : INVD4BWP7T port map(I => n_1587, ZN => framebuffer_buf(16));
  drc_bufs21940 : INVD4BWP7T port map(I => n_1593, ZN => calc_buf_out(20));
  drc_bufs21946 : INVD4BWP7T port map(I => n_1599, ZN => calc_buf_out(2));
  drc_bufs21952 : INVD4BWP7T port map(I => n_1605, ZN => calc_buf_out(10));
  drc_bufs21958 : INVD4BWP7T port map(I => n_1611, ZN => calc_buf_out(3));
  drc_bufs21964 : INVD4BWP7T port map(I => n_1617, ZN => framebuffer_buf(72));
  drc_bufs21970 : INVD4BWP7T port map(I => n_1623, ZN => calc_buf_out(5));
  drc_bufs21976 : INVD4BWP7T port map(I => n_1629, ZN => framebuffer_buf(6));
  drc_bufs21982 : INVD4BWP7T port map(I => n_1635, ZN => framebuffer_buf(5));
  drc_bufs21988 : INVD4BWP7T port map(I => n_1641, ZN => framebuffer_buf(4));
  drc_bufs21994 : INVD4BWP7T port map(I => n_1647, ZN => framebuffer_buf(3));
  drc_bufs22000 : INVD4BWP7T port map(I => n_1653, ZN => framebuffer_buf(2));
  drc_bufs22006 : INVD4BWP7T port map(I => n_1659, ZN => framebuffer_buf(27));
  drc_bufs22012 : INVD4BWP7T port map(I => n_1665, ZN => calc_buf_out(11));
  drc_bufs22018 : INVD4BWP7T port map(I => n_1671, ZN => calc_buf_out(23));
  drc_bufs22024 : INVD4BWP7T port map(I => n_1677, ZN => framebuffer_buf(25));
  drc_bufs22030 : INVD4BWP7T port map(I => n_1683, ZN => calc_buf_out(12));
  drc_bufs22036 : INVD4BWP7T port map(I => n_1689, ZN => calc_buf_out(6));
  drc_bufs22042 : INVD4BWP7T port map(I => n_1695, ZN => calc_buf_out(13));
  drc_bufs22048 : INVD4BWP7T port map(I => n_1701, ZN => calc_buf_out(14));
  drc_bufs22054 : INVD4BWP7T port map(I => n_1707, ZN => calc_buf_out(0));
  drc_bufs22060 : INVD4BWP7T port map(I => n_1713, ZN => calc_buf_out(9));
  drc_bufs22066 : INVD4BWP7T port map(I => n_1719, ZN => calc_buf_out(1));
  drc_bufs22072 : INVD4BWP7T port map(I => n_1725, ZN => sqi_address(2));
  drc_bufs22078 : INVD4BWP7T port map(I => n_1731, ZN => framebuffer_buf(1));
  drc_bufs22084 : INVD4BWP7T port map(I => n_1737, ZN => calc_buf_out(8));
  drc_bufs22090 : INVD4BWP7T port map(I => n_1743, ZN => calc_buf_out(17));
  drc_bufs22096 : INVD4BWP7T port map(I => n_1749, ZN => framebuffer_buf(0));
  drc_bufs22102 : INVD4BWP7T port map(I => n_1755, ZN => calc_buf_out(16));
  drc_bufs22108 : INVD4BWP7T port map(I => n_1761, ZN => sqi_address(11));
  drc_bufs22114 : INVD4BWP7T port map(I => n_1767, ZN => sqi_address(9));
  drc_bufs22120 : INVD4BWP7T port map(I => n_1773, ZN => sqi_address(4));
  drc_bufs22126 : INVD4BWP7T port map(I => n_1779, ZN => sqi_address(12));
  drc_bufs22132 : INVD4BWP7T port map(I => n_1785, ZN => sqi_address(8));
  drc_bufs22138 : INVD4BWP7T port map(I => n_1791, ZN => sqi_address(5));
  drc_bufs22144 : INVD4BWP7T port map(I => n_1797, ZN => sqi_address(1));
  drc_bufs22150 : INVD4BWP7T port map(I => n_1803, ZN => sqi_address(7));
  counter_reg_6 : DFXD1BWP7T port map(CP => clk, DA => n_576, DB => n_136, SA => counter(6), Q => counter(6), QN => n_3);
  counter_reg_3 : DFD1BWP7T port map(CP => clk, D => n_556, Q => counter(3), QN => n_49);
  state_reg_2 : DFD1BWP7T port map(CP => clk, D => n_142, Q => state(2), QN => n_38);
  state_reg_0 : DFD1BWP7T port map(CP => clk, D => n_319, Q => state(0), QN => n_144);
  state_reg_3 : DFD1BWP7T port map(CP => clk, D => n_248, Q => state(3), QN => n_112);
  counter_reg_0 : DFD1BWP7T port map(CP => clk, D => n_300, Q => counter(0), QN => n_255);
  counter_reg_4 : DFD1BWP7T port map(CP => clk, D => n_560, Q => counter(4), QN => n_149);
  counter_reg_2 : DFD1BWP7T port map(CP => clk, D => n_524, Q => counter(2), QN => n_33);
  state_reg_1 : DFD1BWP7T port map(CP => clk, D => n_321, Q => state(1), QN => n_154);
  counter_reg_1 : DFD1BWP7T port map(CP => clk, D => n_432, Q => counter(1), QN => n_289);
  sqi_address_reg_14 : DFD0BWP7T port map(CP => clk, D => n_534, Q => sqi_address_14_3064, QN => n_645);
  sqi_address_reg_13 : DFD0BWP7T port map(CP => clk, D => n_559, Q => sqi_address_13_3063, QN => n_651);
  sqi_address_reg_6 : DFD0BWP7T port map(CP => clk, D => n_581, Q => sqi_address_6_3056, QN => n_657);
  sqi_address_reg_0 : DFD0BWP7T port map(CP => clk, D => n_434, Q => sqi_address_0_3050, QN => n_663);
  sqi_address_reg_3 : DFD0BWP7T port map(CP => clk, D => n_588, Q => sqi_address_3_3053, QN => n_669);
  calc_buf_out_reg_7 : DFD0BWP7T port map(CP => clk, D => n_585, Q => calc_buf_out_7_2875, QN => n_675);
  calc_buf_out_reg_15 : DFD0BWP7T port map(CP => clk, D => n_272, Q => calc_buf_out_15_2883, QN => n_681);
  framebuffer_buf_reg_7 : DFD0BWP7T port map(CP => clk, D => n_380, Q => framebuffer_buf_7_2899, QN => n_687);
  framebuffer_buf_reg_68 : DFD0BWP7T port map(CP => clk, D => n_509, Q => framebuffer_buf_68_2960, QN => n_693);
  framebuffer_buf_reg_39 : DFD0BWP7T port map(CP => clk, D => n_324, Q => framebuffer_buf_39_2931, QN => n_699);
  framebuffer_buf_reg_103 : DFD0BWP7T port map(CP => clk, D => n_459, Q => framebuffer_buf_103_2995, QN => n_705);
  framebuffer_buf_reg_67 : DFD0BWP7T port map(CP => clk, D => n_318, Q => framebuffer_buf_67_2959, QN => n_711);
  framebuffer_buf_reg_104 : DFD0BWP7T port map(CP => clk, D => n_395, Q => framebuffer_buf_104_2996, QN => n_717);
  framebuffer_buf_reg_40 : DFD0BWP7T port map(CP => clk, D => n_323, Q => framebuffer_buf_40_2932, QN => n_723);
  framebuffer_buf_reg_65 : DFD0BWP7T port map(CP => clk, D => n_307, Q => framebuffer_buf_65_2957, QN => n_729);
  framebuffer_buf_reg_157 : DFD0BWP7T port map(CP => clk, D => n_529, Q => framebuffer_buf_157_3049, QN => n_735);
  framebuffer_buf_reg_156 : DFD0BWP7T port map(CP => clk, D => n_521, Q => framebuffer_buf_156_3048, QN => n_741);
  framebuffer_buf_reg_155 : DFD0BWP7T port map(CP => clk, D => n_520, Q => framebuffer_buf_155_3047, QN => n_747);
  framebuffer_buf_reg_154 : DFD0BWP7T port map(CP => clk, D => n_543, Q => framebuffer_buf_154_3046, QN => n_753);
  framebuffer_buf_reg_153 : DFD0BWP7T port map(CP => clk, D => n_536, Q => framebuffer_buf_153_3045, QN => n_759);
  framebuffer_buf_reg_152 : DFD0BWP7T port map(CP => clk, D => n_540, Q => framebuffer_buf_152_3044, QN => n_765);
  framebuffer_buf_reg_151 : DFD0BWP7T port map(CP => clk, D => n_525, Q => framebuffer_buf_151_3043, QN => n_771);
  framebuffer_buf_reg_150 : DFD0BWP7T port map(CP => clk, D => n_526, Q => framebuffer_buf_150_3042, QN => n_777);
  framebuffer_buf_reg_149 : DFD0BWP7T port map(CP => clk, D => n_544, Q => framebuffer_buf_149_3041, QN => n_783);
  framebuffer_buf_reg_148 : DFD0BWP7T port map(CP => clk, D => n_531, Q => framebuffer_buf_148_3040, QN => n_789);
  framebuffer_buf_reg_147 : DFD0BWP7T port map(CP => clk, D => n_296, Q => framebuffer_buf_147_3039, QN => n_795);
  framebuffer_buf_reg_146 : DFD0BWP7T port map(CP => clk, D => n_440, Q => framebuffer_buf_146_3038, QN => n_801);
  framebuffer_buf_reg_145 : DFD0BWP7T port map(CP => clk, D => n_297, Q => framebuffer_buf_145_3037, QN => n_807);
  framebuffer_buf_reg_144 : DFD0BWP7T port map(CP => clk, D => n_491, Q => framebuffer_buf_144_3036, QN => n_813);
  framebuffer_buf_reg_143 : DFD0BWP7T port map(CP => clk, D => n_448, Q => framebuffer_buf_143_3035, QN => n_819);
  framebuffer_buf_reg_142 : DFD0BWP7T port map(CP => clk, D => n_305, Q => framebuffer_buf_142_3034, QN => n_825);
  framebuffer_buf_reg_141 : DFD0BWP7T port map(CP => clk, D => n_412, Q => framebuffer_buf_141_3033, QN => n_831);
  framebuffer_buf_reg_140 : DFD0BWP7T port map(CP => clk, D => n_414, Q => framebuffer_buf_140_3032, QN => n_837);
  framebuffer_buf_reg_139 : DFD0BWP7T port map(CP => clk, D => n_374, Q => framebuffer_buf_139_3031, QN => n_843);
  framebuffer_buf_reg_105 : DFD0BWP7T port map(CP => clk, D => n_390, Q => framebuffer_buf_105_2997, QN => n_849);
  framebuffer_buf_reg_106 : DFD0BWP7T port map(CP => clk, D => n_387, Q => framebuffer_buf_106_2998, QN => n_855);
  framebuffer_buf_reg_136 : DFD0BWP7T port map(CP => clk, D => n_378, Q => framebuffer_buf_136_3028, QN => n_861);
  framebuffer_buf_reg_135 : DFD0BWP7T port map(CP => clk, D => n_400, Q => framebuffer_buf_135_3027, QN => n_867);
  framebuffer_buf_reg_134 : DFD0BWP7T port map(CP => clk, D => n_401, Q => framebuffer_buf_134_3026, QN => n_873);
  framebuffer_buf_reg_133 : DFD0BWP7T port map(CP => clk, D => n_366, Q => framebuffer_buf_133_3025, QN => n_879);
  framebuffer_buf_reg_132 : DFD0BWP7T port map(CP => clk, D => n_367, Q => framebuffer_buf_132_3024, QN => n_885);
  framebuffer_buf_reg_131 : DFD0BWP7T port map(CP => clk, D => n_368, Q => framebuffer_buf_131_3023, QN => n_891);
  framebuffer_buf_reg_130 : DFD0BWP7T port map(CP => clk, D => n_369, Q => framebuffer_buf_130_3022, QN => n_897);
  framebuffer_buf_reg_8 : DFD0BWP7T port map(CP => clk, D => n_333, Q => framebuffer_buf_8_2900, QN => n_903);
  framebuffer_buf_reg_128 : DFD0BWP7T port map(CP => clk, D => n_454, Q => framebuffer_buf_128_3020, QN => n_909);
  framebuffer_buf_reg_127 : DFD0BWP7T port map(CP => clk, D => n_430, Q => framebuffer_buf_127_3019, QN => n_915);
  framebuffer_buf_reg_126 : DFD0BWP7T port map(CP => clk, D => n_431, Q => framebuffer_buf_126_3018, QN => n_921);
  framebuffer_buf_reg_125 : DFD0BWP7T port map(CP => clk, D => n_433, Q => framebuffer_buf_125_3017, QN => n_927);
  framebuffer_buf_reg_124 : DFD0BWP7T port map(CP => clk, D => n_435, Q => framebuffer_buf_124_3016, QN => n_933);
  framebuffer_buf_reg_123 : DFD0BWP7T port map(CP => clk, D => n_301, Q => framebuffer_buf_123_3015, QN => n_939);
  framebuffer_buf_reg_122 : DFD0BWP7T port map(CP => clk, D => n_479, Q => framebuffer_buf_122_3014, QN => n_945);
  framebuffer_buf_reg_41 : DFD0BWP7T port map(CP => clk, D => n_322, Q => framebuffer_buf_41_2933, QN => n_951);
  framebuffer_buf_reg_120 : DFD0BWP7T port map(CP => clk, D => n_421, Q => framebuffer_buf_120_3012, QN => n_957);
  framebuffer_buf_reg_119 : DFD0BWP7T port map(CP => clk, D => n_304, Q => framebuffer_buf_119_3011, QN => n_963);
  framebuffer_buf_reg_118 : DFD0BWP7T port map(CP => clk, D => n_303, Q => framebuffer_buf_118_3010, QN => n_969);
  framebuffer_buf_reg_115 : DFD0BWP7T port map(CP => clk, D => n_428, Q => framebuffer_buf_115_3007, QN => n_975);
  framebuffer_buf_reg_114 : DFD0BWP7T port map(CP => clk, D => n_429, Q => framebuffer_buf_114_3006, QN => n_981);
  framebuffer_buf_reg_113 : DFD0BWP7T port map(CP => clk, D => n_406, Q => framebuffer_buf_113_3005, QN => n_987);
  framebuffer_buf_reg_112 : DFD0BWP7T port map(CP => clk, D => n_407, Q => framebuffer_buf_112_3004, QN => n_993);
  framebuffer_buf_reg_107 : DFD0BWP7T port map(CP => clk, D => n_386, Q => framebuffer_buf_107_2999, QN => n_999);
  framebuffer_buf_reg_108 : DFD0BWP7T port map(CP => clk, D => n_418, Q => framebuffer_buf_108_3000, QN => n_1005);
  framebuffer_buf_reg_42 : DFD0BWP7T port map(CP => clk, D => n_337, Q => framebuffer_buf_42_2934, QN => n_1011);
  framebuffer_buf_reg_109 : DFD0BWP7T port map(CP => clk, D => n_417, Q => framebuffer_buf_109_3001, QN => n_1017);
  framebuffer_buf_reg_110 : DFD0BWP7T port map(CP => clk, D => n_409, Q => framebuffer_buf_110_3002, QN => n_1023);
  framebuffer_buf_reg_9 : DFD0BWP7T port map(CP => clk, D => n_332, Q => framebuffer_buf_9_2901, QN => n_1029);
  framebuffer_buf_reg_43 : DFD0BWP7T port map(CP => clk, D => n_336, Q => framebuffer_buf_43_2935, QN => n_1035);
  framebuffer_buf_reg_111 : DFD0BWP7T port map(CP => clk, D => n_408, Q => framebuffer_buf_111_3003, QN => n_1041);
  framebuffer_buf_reg_44 : DFD0BWP7T port map(CP => clk, D => n_517, Q => framebuffer_buf_44_2936, QN => n_1047);
  framebuffer_buf_reg_102 : DFD0BWP7T port map(CP => clk, D => n_460, Q => framebuffer_buf_102_2994, QN => n_1053);
  framebuffer_buf_reg_101 : DFD0BWP7T port map(CP => clk, D => n_441, Q => framebuffer_buf_101_2993, QN => n_1059);
  framebuffer_buf_reg_100 : DFD0BWP7T port map(CP => clk, D => n_442, Q => framebuffer_buf_100_2992, QN => n_1065);
  framebuffer_buf_reg_99 : DFD0BWP7T port map(CP => clk, D => n_446, Q => framebuffer_buf_99_2991, QN => n_1071);
  framebuffer_buf_reg_98 : DFD0BWP7T port map(CP => clk, D => n_449, Q => framebuffer_buf_98_2990, QN => n_1077);
  framebuffer_buf_reg_97 : DFD0BWP7T port map(CP => clk, D => n_373, Q => framebuffer_buf_97_2989, QN => n_1083);
  framebuffer_buf_reg_96 : DFD0BWP7T port map(CP => clk, D => n_484, Q => framebuffer_buf_96_2988, QN => n_1089);
  framebuffer_buf_reg_95 : DFD0BWP7T port map(CP => clk, D => n_485, Q => framebuffer_buf_95_2987, QN => n_1095);
  framebuffer_buf_reg_94 : DFD0BWP7T port map(CP => clk, D => n_487, Q => framebuffer_buf_94_2986, QN => n_1101);
  framebuffer_buf_reg_93 : DFD0BWP7T port map(CP => clk, D => n_489, Q => framebuffer_buf_93_2985, QN => n_1107);
  framebuffer_buf_reg_92 : DFD0BWP7T port map(CP => clk, D => n_493, Q => framebuffer_buf_92_2984, QN => n_1113);
  framebuffer_buf_reg_91 : DFD0BWP7T port map(CP => clk, D => n_402, Q => framebuffer_buf_91_2983, QN => n_1119);
  framebuffer_buf_reg_90 : DFD0BWP7T port map(CP => clk, D => n_405, Q => framebuffer_buf_90_2982, QN => n_1125);
  framebuffer_buf_reg_89 : DFD0BWP7T port map(CP => clk, D => n_370, Q => framebuffer_buf_89_2981, QN => n_1131);
  framebuffer_buf_reg_88 : DFD0BWP7T port map(CP => clk, D => n_483, Q => framebuffer_buf_88_2980, QN => n_1137);
  framebuffer_buf_reg_87 : DFD0BWP7T port map(CP => clk, D => n_306, Q => framebuffer_buf_87_2979, QN => n_1143);
  framebuffer_buf_reg_86 : DFD0BWP7T port map(CP => clk, D => n_375, Q => framebuffer_buf_86_2978, QN => n_1149);
  framebuffer_buf_reg_85 : DFD0BWP7T port map(CP => clk, D => n_384, Q => framebuffer_buf_85_2977, QN => n_1155);
  framebuffer_buf_reg_84 : DFD0BWP7T port map(CP => clk, D => n_385, Q => framebuffer_buf_84_2976, QN => n_1161);
  framebuffer_buf_reg_83 : DFD0BWP7T port map(CP => clk, D => n_362, Q => framebuffer_buf_83_2975, QN => n_1167);
  framebuffer_buf_reg_82 : DFD0BWP7T port map(CP => clk, D => n_363, Q => framebuffer_buf_82_2974, QN => n_1173);
  framebuffer_buf_reg_81 : DFD0BWP7T port map(CP => clk, D => n_364, Q => framebuffer_buf_81_2973, QN => n_1179);
  framebuffer_buf_reg_80 : DFD0BWP7T port map(CP => clk, D => n_365, Q => framebuffer_buf_80_2972, QN => n_1185);
  framebuffer_buf_reg_10 : DFD0BWP7T port map(CP => clk, D => n_331, Q => framebuffer_buf_10_2902, QN => n_1191);
  framebuffer_buf_reg_78 : DFD0BWP7T port map(CP => clk, D => n_439, Q => framebuffer_buf_78_2970, QN => n_1197);
  framebuffer_buf_reg_77 : DFD0BWP7T port map(CP => clk, D => n_422, Q => framebuffer_buf_77_2969, QN => n_1203);
  framebuffer_buf_reg_76 : DFD0BWP7T port map(CP => clk, D => n_423, Q => framebuffer_buf_76_2968, QN => n_1209);
  framebuffer_buf_reg_45 : DFD0BWP7T port map(CP => clk, D => n_516, Q => framebuffer_buf_45_2937, QN => n_1215);
  framebuffer_buf_reg_74 : DFD0BWP7T port map(CP => clk, D => n_425, Q => framebuffer_buf_74_2966, QN => n_1221);
  framebuffer_buf_reg_73 : DFD0BWP7T port map(CP => clk, D => n_497, Q => framebuffer_buf_73_2965, QN => n_1227);
  framebuffer_buf_reg_23 : DFD0BWP7T port map(CP => clk, D => n_291, Q => framebuffer_buf_23_2915, QN => n_1233);
  framebuffer_buf_reg_46 : DFD0BWP7T port map(CP => clk, D => n_513, Q => framebuffer_buf_46_2938, QN => n_1239);
  framebuffer_buf_reg_70 : DFD0BWP7T port map(CP => clk, D => n_503, Q => framebuffer_buf_70_2962, QN => n_1245);
  framebuffer_buf_reg_69 : DFD0BWP7T port map(CP => clk, D => n_507, Q => framebuffer_buf_69_2961, QN => n_1251);
  calc_buf_out_reg_22 : DFD0BWP7T port map(CP => clk, D => n_523, Q => calc_buf_out_22_2890, QN => n_1257);
  framebuffer_buf_reg_21 : DFD0BWP7T port map(CP => clk, D => n_293, Q => framebuffer_buf_21_2913, QN => n_1263);
  framebuffer_buf_reg_66 : DFD0BWP7T port map(CP => clk, D => n_320, Q => framebuffer_buf_66_2958, QN => n_1269);
  framebuffer_buf_reg_20 : DFD0BWP7T port map(CP => clk, D => n_294, Q => framebuffer_buf_20_2912, QN => n_1275);
  framebuffer_buf_reg_64 : DFD0BWP7T port map(CP => clk, D => n_308, Q => framebuffer_buf_64_2956, QN => n_1281);
  framebuffer_buf_reg_63 : DFD0BWP7T port map(CP => clk, D => n_309, Q => framebuffer_buf_63_2955, QN => n_1287);
  framebuffer_buf_reg_62 : DFD0BWP7T port map(CP => clk, D => n_310, Q => framebuffer_buf_62_2954, QN => n_1293);
  framebuffer_buf_reg_61 : DFD0BWP7T port map(CP => clk, D => n_468, Q => framebuffer_buf_61_2953, QN => n_1299);
  framebuffer_buf_reg_60 : DFD0BWP7T port map(CP => clk, D => n_469, Q => framebuffer_buf_60_2952, QN => n_1305);
  framebuffer_buf_reg_59 : DFD0BWP7T port map(CP => clk, D => n_462, Q => framebuffer_buf_59_2951, QN => n_1311);
  framebuffer_buf_reg_58 : DFD0BWP7T port map(CP => clk, D => n_463, Q => framebuffer_buf_58_2950, QN => n_1317);
  framebuffer_buf_reg_57 : DFD0BWP7T port map(CP => clk, D => n_464, Q => framebuffer_buf_57_2949, QN => n_1323);
  framebuffer_buf_reg_56 : DFD0BWP7T port map(CP => clk, D => n_465, Q => framebuffer_buf_56_2948, QN => n_1329);
  framebuffer_buf_reg_138 : DFD0BWP7T port map(CP => clk, D => n_376, Q => framebuffer_buf_138_3030, QN => n_1335);
  framebuffer_buf_reg_54 : DFD0BWP7T port map(CP => clk, D => n_478, Q => framebuffer_buf_54_2946, QN => n_1341);
  framebuffer_buf_reg_53 : DFD0BWP7T port map(CP => clk, D => n_470, Q => framebuffer_buf_53_2945, QN => n_1347);
  framebuffer_buf_reg_52 : DFD0BWP7T port map(CP => clk, D => n_472, Q => framebuffer_buf_52_2944, QN => n_1353);
  framebuffer_buf_reg_129 : DFD0BWP7T port map(CP => clk, D => n_453, Q => framebuffer_buf_129_3021, QN => n_1359);
  framebuffer_buf_reg_50 : DFD0BWP7T port map(CP => clk, D => n_474, Q => framebuffer_buf_50_2942, QN => n_1365);
  framebuffer_buf_reg_49 : DFD0BWP7T port map(CP => clk, D => n_510, Q => framebuffer_buf_49_2941, QN => n_1371);
  calc_buf_out_reg_18 : DFD0BWP7T port map(CP => clk, D => n_558, Q => calc_buf_out_18_2886, QN => n_1377);
  framebuffer_buf_reg_11 : DFD0BWP7T port map(CP => clk, D => n_330, Q => framebuffer_buf_11_2903, QN => n_1383);
  framebuffer_buf_reg_47 : DFD0BWP7T port map(CP => clk, D => n_512, Q => framebuffer_buf_47_2939, QN => n_1389);
  framebuffer_buf_reg_121 : DFD0BWP7T port map(CP => clk, D => n_302, Q => framebuffer_buf_121_3013, QN => n_1395);
  framebuffer_buf_reg_48 : DFD0BWP7T port map(CP => clk, D => n_511, Q => framebuffer_buf_48_2940, QN => n_1401);
  framebuffer_buf_reg_12 : DFD0BWP7T port map(CP => clk, D => n_345, Q => framebuffer_buf_12_2904, QN => n_1407);
  framebuffer_buf_reg_13 : DFD0BWP7T port map(CP => clk, D => n_344, Q => framebuffer_buf_13_2905, QN => n_1413);
  framebuffer_buf_reg_51 : DFD0BWP7T port map(CP => clk, D => n_473, Q => framebuffer_buf_51_2943, QN => n_1419);
  framebuffer_buf_reg_14 : DFD0BWP7T port map(CP => clk, D => n_341, Q => framebuffer_buf_14_2906, QN => n_1425);
  calc_buf_out_reg_19 : DFD0BWP7T port map(CP => clk, D => n_547, Q => calc_buf_out_19_2887, QN => n_1431);
  framebuffer_buf_reg_38 : DFD0BWP7T port map(CP => clk, D => n_325, Q => framebuffer_buf_38_2930, QN => n_1437);
  framebuffer_buf_reg_37 : DFD0BWP7T port map(CP => clk, D => n_328, Q => framebuffer_buf_37_2929, QN => n_1443);
  framebuffer_buf_reg_36 : DFD0BWP7T port map(CP => clk, D => n_329, Q => framebuffer_buf_36_2928, QN => n_1449);
  framebuffer_buf_reg_35 : DFD0BWP7T port map(CP => clk, D => n_312, Q => framebuffer_buf_35_2927, QN => n_1455);
  framebuffer_buf_reg_34 : DFD0BWP7T port map(CP => clk, D => n_313, Q => framebuffer_buf_34_2926, QN => n_1461);
  framebuffer_buf_reg_33 : DFD0BWP7T port map(CP => clk, D => n_314, Q => framebuffer_buf_33_2925, QN => n_1467);
  framebuffer_buf_reg_32 : DFD0BWP7T port map(CP => clk, D => n_315, Q => framebuffer_buf_32_2924, QN => n_1473);
  framebuffer_buf_reg_31 : DFD0BWP7T port map(CP => clk, D => n_356, Q => framebuffer_buf_31_2923, QN => n_1479);
  framebuffer_buf_reg_30 : DFD0BWP7T port map(CP => clk, D => n_357, Q => framebuffer_buf_30_2922, QN => n_1485);
  framebuffer_buf_reg_29 : DFD0BWP7T port map(CP => clk, D => n_346, Q => framebuffer_buf_29_2921, QN => n_1491);
  framebuffer_buf_reg_28 : DFD0BWP7T port map(CP => clk, D => n_347, Q => framebuffer_buf_28_2920, QN => n_1497);
  framebuffer_buf_reg_79 : DFD0BWP7T port map(CP => clk, D => n_438, Q => framebuffer_buf_79_2971, QN => n_1503);
  framebuffer_buf_reg_26 : DFD0BWP7T port map(CP => clk, D => n_349, Q => framebuffer_buf_26_2918, QN => n_1509);
  framebuffer_buf_reg_75 : DFD0BWP7T port map(CP => clk, D => n_424, Q => framebuffer_buf_75_2967, QN => n_1515);
  framebuffer_buf_reg_24 : DFD0BWP7T port map(CP => clk, D => n_393, Q => framebuffer_buf_24_2916, QN => n_1521);
  framebuffer_buf_reg_71 : DFD0BWP7T port map(CP => clk, D => n_501, Q => framebuffer_buf_71_2963, QN => n_1527);
  framebuffer_buf_reg_22 : DFD0BWP7T port map(CP => clk, D => n_292, Q => framebuffer_buf_22_2914, QN => n_1533);
  calc_buf_out_reg_4 : DFD0BWP7T port map(CP => clk, D => n_582, Q => calc_buf_out_4_2872, QN => n_1539);
  calc_buf_out_reg_21 : DFD0BWP7T port map(CP => clk, D => n_553, Q => calc_buf_out_21_2889, QN => n_1545);
  framebuffer_buf_reg_19 : DFD0BWP7T port map(CP => clk, D => n_352, Q => framebuffer_buf_19_2911, QN => n_1551);
  framebuffer_buf_reg_18 : DFD0BWP7T port map(CP => clk, D => n_353, Q => framebuffer_buf_18_2910, QN => n_1557);
  framebuffer_buf_reg_17 : DFD0BWP7T port map(CP => clk, D => n_338, Q => framebuffer_buf_17_2909, QN => n_1563);
  framebuffer_buf_reg_15 : DFD0BWP7T port map(CP => clk, D => n_340, Q => framebuffer_buf_15_2907, QN => n_1569);
  framebuffer_buf_reg_55 : DFD0BWP7T port map(CP => clk, D => n_477, Q => framebuffer_buf_55_2947, QN => n_1575);
  framebuffer_buf_reg_137 : DFD0BWP7T port map(CP => clk, D => n_377, Q => framebuffer_buf_137_3029, QN => n_1581);
  framebuffer_buf_reg_16 : DFD0BWP7T port map(CP => clk, D => n_339, Q => framebuffer_buf_16_2908, QN => n_1587);
  calc_buf_out_reg_20 : DFD0BWP7T port map(CP => clk, D => n_549, Q => calc_buf_out_20_2888, QN => n_1593);
  calc_buf_out_reg_2 : DFD0BWP7T port map(CP => clk, D => n_587, Q => calc_buf_out_2_2870, QN => n_1599);
  calc_buf_out_reg_10 : DFD0BWP7T port map(CP => clk, D => n_276, Q => calc_buf_out_10_2878, QN => n_1605);
  calc_buf_out_reg_3 : DFD0BWP7T port map(CP => clk, D => n_580, Q => calc_buf_out_3_2871, QN => n_1611);
  framebuffer_buf_reg_72 : DFD0BWP7T port map(CP => clk, D => n_499, Q => framebuffer_buf_72_2964, QN => n_1617);
  calc_buf_out_reg_5 : DFD0BWP7T port map(CP => clk, D => n_578, Q => calc_buf_out_5_2873, QN => n_1623);
  framebuffer_buf_reg_6 : DFD0BWP7T port map(CP => clk, D => n_381, Q => framebuffer_buf_6_2898, QN => n_1629);
  framebuffer_buf_reg_5 : DFD0BWP7T port map(CP => clk, D => n_358, Q => framebuffer_buf_5_2897, QN => n_1635);
  framebuffer_buf_reg_4 : DFD0BWP7T port map(CP => clk, D => n_359, Q => framebuffer_buf_4_2896, QN => n_1641);
  framebuffer_buf_reg_3 : DFD0BWP7T port map(CP => clk, D => n_360, Q => framebuffer_buf_3_2895, QN => n_1647);
  framebuffer_buf_reg_2 : DFD0BWP7T port map(CP => clk, D => n_361, Q => framebuffer_buf_2_2894, QN => n_1653);
  framebuffer_buf_reg_27 : DFD0BWP7T port map(CP => clk, D => n_348, Q => framebuffer_buf_27_2919, QN => n_1659);
  calc_buf_out_reg_11 : DFD0BWP7T port map(CP => clk, D => n_277, Q => calc_buf_out_11_2879, QN => n_1665);
  calc_buf_out_reg_23 : DFD0BWP7T port map(CP => clk, D => n_532, Q => calc_buf_out_23_2891, QN => n_1671);
  framebuffer_buf_reg_25 : DFD0BWP7T port map(CP => clk, D => n_394, Q => framebuffer_buf_25_2917, QN => n_1677);
  calc_buf_out_reg_12 : DFD0BWP7T port map(CP => clk, D => n_279, Q => calc_buf_out_12_2880, QN => n_1683);
  calc_buf_out_reg_6 : DFD0BWP7T port map(CP => clk, D => n_590, Q => calc_buf_out_6_2874, QN => n_1689);
  calc_buf_out_reg_13 : DFD0BWP7T port map(CP => clk, D => n_282, Q => calc_buf_out_13_2881, QN => n_1695);
  calc_buf_out_reg_14 : DFD0BWP7T port map(CP => clk, D => n_267, Q => calc_buf_out_14_2882, QN => n_1701);
  calc_buf_out_reg_0 : DFD0BWP7T port map(CP => clk, D => n_584, Q => calc_buf_out_0_2868, QN => n_1707);
  calc_buf_out_reg_9 : DFD0BWP7T port map(CP => clk, D => n_450, Q => calc_buf_out_9_2877, QN => n_1713);
  calc_buf_out_reg_1 : DFD0BWP7T port map(CP => clk, D => n_591, Q => calc_buf_out_1_2869, QN => n_1719);
  sqi_address_reg_2 : DFD0BWP7T port map(CP => clk, D => n_571, Q => sqi_address_2_3052, QN => n_1725);
  framebuffer_buf_reg_1 : DFD0BWP7T port map(CP => clk, D => n_486, Q => framebuffer_buf_1_2893, QN => n_1731);
  calc_buf_out_reg_8 : DFD0BWP7T port map(CP => clk, D => n_445, Q => calc_buf_out_8_2876, QN => n_1737);
  calc_buf_out_reg_17 : DFD0BWP7T port map(CP => clk, D => n_461, Q => calc_buf_out_17_2885, QN => n_1743);
  framebuffer_buf_reg_0 : DFD0BWP7T port map(CP => clk, D => n_482, Q => framebuffer_buf_0_2892, QN => n_1749);
  calc_buf_out_reg_16 : DFD0BWP7T port map(CP => clk, D => n_456, Q => calc_buf_out_16_2884, QN => n_1755);
  sqi_address_reg_11 : DFD0BWP7T port map(CP => clk, D => n_564, Q => sqi_address_11_3061, QN => n_1761);
  sqi_address_reg_9 : DFD0BWP7T port map(CP => clk, D => n_573, Q => sqi_address_9_3059, QN => n_1767);
  sqi_address_reg_4 : DFD0BWP7T port map(CP => clk, D => n_599, Q => sqi_address_4_3054, QN => n_1773);
  sqi_address_reg_12 : DFD0BWP7T port map(CP => clk, D => n_262, Q => sqi_address_12_3062, QN => n_1779);
  sqi_address_reg_8 : DFD0BWP7T port map(CP => clk, D => n_575, Q => sqi_address_8_3058, QN => n_1785);
  sqi_address_reg_5 : DFD0BWP7T port map(CP => clk, D => n_600, Q => sqi_address_5_3055, QN => n_1791);
  sqi_address_reg_1 : DFD0BWP7T port map(CP => clk, D => n_574, Q => sqi_address_1_3051, QN => n_1797);
  sqi_address_reg_7 : DFD0BWP7T port map(CP => clk, D => n_597, Q => sqi_address_7_3057, QN => n_1803);
  g2 : INR3D0BWP7T port map(A1 => n_94, B1 => n_519, B2 => state(0), ZN => n_1807);
  g22563 : INR4D0BWP7T port map(A1 => n_119, B1 => n_298, B2 => n_216, B3 => counter(5), ZN => n_1808);
  tie_0_cell : TIELBWP7T port map(ZN => framebuffer_buf(117));

end synthesised;
