-- HOTAS data from AquilaZGame's Modern Missile Mod 1.1.0 (MIT).
-- Each field lists its stock value on Steam Build 26002268 and the HOTAS value.
return {
    weapons = {
        -- MSL
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Msl/BP_plwp_msl_a0.BP_plwp_msl_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Msl/BP_plwp_msl_a1.BP_plwp_msl_a1_C",
                "/Game/Blueprints/Weapons/MSL/Player/Msl/BP_plwp_msl_f0.BP_plwp_msl_f0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Msl/BP_plwp_msl_j0.BP_plwp_msl_j0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Msl/BP_plwp_msl_r0.BP_plwp_msl_r0_C",
            },
            fields = {
                {"LockonRange", 200000, 500000},
                {"damage", 40, 100},
            },
        },
        -- 2AAM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/2aam/BP_plwp_2aam_a0.BP_plwp_2aam_a0_C",
            },
            fields = {
                {"LockonRange", 300000, 800000},
                {"damage", 60, 150},
            },
        },
        -- 4AAM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/4aam/BP_plwp_4aam_a0.BP_plwp_4aam_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/4aam/BP_plwp_4aam_f0.BP_plwp_4aam_f0_C",
            },
            fields = {
                {"LockonRange", 400000, 1000000},
                {"damage", 80, 200},
            },
        },
        -- 6AAM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/6aam/BP_plwp_6aam_a0.BP_plwp_6aam_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/6aam/BP_plwp_6aam_r0.BP_plwp_6aam_r0_C",
            },
            fields = {
                {"LockonRange", 500000, 1000000},
                {"damage", 80, 200},
            },
        },
        -- HCAA
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Hcaa/BP_plwp_hcaa_a0.BP_plwp_hcaa_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Hcaa/BP_plwp_hcaa_f0.BP_plwp_hcaa_f0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Hcaa/BP_plwp_hcaa_j0.BP_plwp_hcaa_j0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Hcaa/BP_plwp_hcaa_r0.BP_plwp_hcaa_r0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Hcaa/BP_plwp_hcaa_r1.BP_plwp_hcaa_r1_C",
            },
            fields = {
                {"LockonRange", 220000, 1000000},
                {"damage", 60, 150},
            },
        },
        -- HPAA
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Hpaa/BP_plwp_hpaa_a0.BP_plwp_hpaa_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Hpaa/BP_plwp_hpaa_j0.BP_plwp_hpaa_j0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Hpaa/BP_plwp_hpaa_r0.BP_plwp_hpaa_r0_C",
            },
            fields = {
                {"LockonRange", 375000, 1200000},
                {"damage", 160, 400},
            },
        },
        -- HVAA
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Hvaa/BP_plwp_hvaa_a0.BP_plwp_hvaa_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Hvaa/BP_plwp_hvaa_r0.BP_plwp_hvaa_r0_C",
            },
            fields = {
                {"LockonRange", 500000, 4000000},
                {"damage", 80, 200},
            },
        },
        -- LAAM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Laam/BP_plwp_laam_a0.BP_plwp_laam_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Laam/BP_plwp_laam_e0.BP_plwp_laam_e0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Laam/BP_plwp_laam_r0.BP_plwp_laam_r0_C",
            },
            fields = {
                {"LockonRange", 1000000, 6000000},
                {"damage", 80, 400},
            },
        },
        -- QAAM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Qaam/BP_plwp_qaam_a0.BP_plwp_qaam_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Qaam/BP_plwp_qaam_r0.BP_plwp_qaam_r0_C",
            },
            fields = {
                {"LockonRange", 240000, 500000},
                {"damage", 80, 200},
            },
        },
        -- SAAM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Saam/BP_plwp_saam_a0.BP_plwp_saam_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Saam/BP_plwp_saam_r0.BP_plwp_saam_r0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Saam/BP_plwp_saam_r1.BP_plwp_saam_r1_C",
            },
            fields = {
                {"LockonRange", 600000, 1200000},
                {"damage", 80, 200},
            },
        },
        -- SASM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Sasm/BP_plwp_sasm_a0.BP_plwp_sasm_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Sasm/BP_plwp_sasm_r0.BP_plwp_sasm_r0_C",
            },
            fields = {
                {"LockonRange", 240000, 800000},
                {"damage", 50, 125},
                {"AreaOfEffectDamage", 30, 60},
            },
        },
        -- 4AGM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/4agm/BP_plwp_4agm_a0.BP_plwp_4agm_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/4agm/BP_plwp_4agm_r0.BP_plwp_4agm_r0_C",
            },
            fields = {
                {"LockonRange", 300000, 1000000},
                {"damage", 80, 160},
            },
        },
        -- 6AGM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/6agm/BP_plwp_6agm_a0.BP_plwp_6agm_a0_C",
            },
            fields = {
                {"LockonRange", 350000, 1000000},
            },
        },
        -- 8AGM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/8agm/BP_plwp_8agm_a0.BP_plwp_8agm_a0_C",
            },
            fields = {
                {"LockonRange", 400000, 1000000},
            },
        },
        -- LACM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Lacm/BP_plwp_lacm_a0.BP_plwp_lacm_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Lacm/BP_plwp_lacm_a1.BP_plwp_lacm_a1_C",
                "/Game/Blueprints/Weapons/MSL/Player/Lacm/BP_plwp_lacm_f0.BP_plwp_lacm_f0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Lacm/BP_plwp_lacm_r0.BP_plwp_lacm_r0_C",
            },
            fields = {
                {"LockonRange", 1000000, 15000000},
                {"damage", 100, 300},
                {"AreaOfEffectDamage", 100, 200},
            },
        },
        -- LAGM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Lagm/BP_plwp_lagm_a0.BP_plwp_lagm_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Lagm/BP_plwp_lagm_r0.BP_plwp_lagm_r0_C",
            },
            fields = {
                {"LockonRange", 600000, 10000000},
                {"damage", 60, 180},
                {"AreaOfEffectDamage", 60, 120},
            },
        },
        -- LASM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Lasm/BP_plwp_lasm_a0.BP_plwp_lasm_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Lasm/BP_plwp_lasm_f0.BP_plwp_lasm_f0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Lasm/BP_plwp_lasm_j0.BP_plwp_lasm_j0_C",
            },
            fields = {
                {"LockonRange", 600000, 10000000},
                {"damage", 80, 400},
                {"AreaOfEffectDamage", 80, 160},
            },
        },
        -- GPB
        {
            paths = {
                "/Game/Blueprints/Weapons/BOMB/GPB/Player/BP_plwp_gpb_a1.BP_plwp_gpb_a1_C",
            },
            fields = {
                {"LockonRange", 250000, 625000},
                {"damage", 120, 500},
            },
        },
        -- SFFS
        {
            paths = {
                "/Game/Blueprints/Weapons/BOMB/SFFS/Player/BP_plwp_sffs_a0.BP_plwp_sffs_a0_C",
                "/Game/Blueprints/Weapons/BOMB/SFFS/Player/BP_plwp_sffs_r0.BP_plwp_sffs_r0_C",
            },
            fields = {
                {"damage", 40, 100},
            },
        },
        -- SOD
        {
            paths = {
                "/Game/Blueprints/Weapons/BOMB/SOD/Player/BP_plwp_sod_a0.BP_plwp_sod_a0_C",
            },
            fields = {
                {"LockonRange", 500000, 1250000},
                {"damage", 100, 150},
            },
        },
        -- UGB
        {
            paths = {
                "/Game/Blueprints/Weapons/BOMB/UGB/Player/BP_plwp_ugb_a0.BP_plwp_ugb_a0_C",
                "/Game/Blueprints/Weapons/BOMB/UGB/Player/BP_plwp_ugb_a1.BP_plwp_ugb_a1_C",
                "/Game/Blueprints/Weapons/BOMB/UGB/Player/BP_plwp_ugb_r0.BP_plwp_ugb_r0_C",
            },
            fields = {
                {"damage", 75, 200},
            },
        },
        -- UGBL
        {
            paths = {
                "/Game/Blueprints/Weapons/BOMB/UGB/Player/UgbL/BP_plwp_ugbl_r0.BP_plwp_ugbl_r0_C",
            },
            fields = {
                {"damage", 90, 700},
            },
        },
        -- XSDB
        {
            paths = {
                "/Game/Blueprints/Weapons/BOMB/XSDB/Player/BP_plwp_xsdb_a0.BP_plwp_xsdb_a0_C",
            },
            fields = {
                {"LockonRange", 300000, 750000},
                {"damage", 60, 100},
            },
        },
        -- RKT
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Rkt/BP_plwp_rkt_a0.BP_plwp_rkt_a0_C",
                "/Game/Blueprints/Weapons/MSL/Player/Rkt/BP_plwp_rkt_r1.BP_plwp_rkt_r1_C",
            },
            fields = {
                {"damage", 40, 50},
            },
        },
        -- GUN_5
        {
            paths = {
                "/Game/Blueprints/Weapons/GUN/GUN/Player/BP_plwp_gun_x0.BP_plwp_gun_x0_C",
            },
            fields = {
                {"damage", 5, 12.5},
                {"AntiShipDamageRate", 20, 50},
            },
        },
        -- GUN_10
        {
            paths = {
                "/Game/Blueprints/Weapons/GUN/GUN/Player/BP_plwp_gun_x2.BP_plwp_gun_x2_C",
            },
            fields = {
                {"damage", 10, 25},
                {"AntiShipDamageRate", 20, 50},
            },
        },
        -- GUN_15
        {
            paths = {
                "/Game/Blueprints/Weapons/GUN/GUN/Player/BP_plwp_gun_x1.BP_plwp_gun_x1_C",
            },
            fields = {
                {"damage", 15, 37.5},
                {"AntiShipDamageRate", 20, 50},
            },
        },
        -- MGP
        {
            paths = {
                "/Game/Blueprints/Weapons/GUN/MGP/Player/BP_plwp_mgp_a0.BP_plwp_mgp_a0_C",
                "/Game/Blueprints/Weapons/GUN/MGP/Player/BP_plwp_mgp_r0.BP_plwp_mgp_r0_C",
            },
            fields = {
                {"damage", 5, 12.5},
                {"AntiShipDamageRate", 100, 200},
            },
        },
        -- MPBM
        {
            paths = {
                "/Game/Blueprints/Weapons/MSL/Player/Mpbm/BP_plwp_mpbm_x0.BP_plwp_mpbm_x0_C",
            },
            fields = {
                {"LockonRange", 360000, 2000000},
                {"damage", 100, 4000},
            },
        },
        -- EMLB
        {
            paths = {
                "/Game/Blueprints/Weapons/EML/Player/BP_plwp_eml_x3.BP_plwp_eml_x3_C",
            },
            fields = {
                {"LockonRange", 100, 250},
                {"damage", 80, 100},
                {"AntiShipDamageRate", 100, 200},
            },
        },
        -- TLS
        {
            paths = {
                "/Game/Blueprints/Weapons/Laser/Tls/Player/BP_plwp_tls_x0.BP_plwp_tls_x0_C",
            },
            fields = {
                {"damage", 40, 50},
                {"SlipDamage", 18, 45},
            },
        },
    },
    difficulty = {
        {row = "C.STORY", fields = {
            {"LockonRangeInMeters", 2850, 5000},
            {"damage", 56, 100},
        }},
        {row = "EASY", fields = {
            {"LockonRangeInMeters", 2000, 5000},
            {"damage", 40, 100},
        }},
    },
    gunAmmo = 2.0,
    specialAmmo = {
        [4] = {2.0, 2.0}, -- 4AAM
        [5] = {3.0, 3.0}, -- 4AGM
        [6] = {2.0, 2.0}, -- 6AAM
        [7] = {3.0, 3.0}, -- 6AGM
        [9] = {3.0, 3.0}, -- 8AGM
        [11] = {2.0, 3.0}, -- GPB
        [13] = {2.0, 2.0}, -- HCAA
        [14] = {2.0, 2.0}, -- HPAA
        [15] = {2.0, 2.0}, -- HVAA
        [16] = {2.0, 2.0}, -- LAAM
        [17] = {2.0, 2.0}, -- LACM
        [18] = {2.0, 2.0}, -- LAGM
        [19] = {2.0, 2.0}, -- LASM
        [20] = {2.0, 2.0}, -- MGP
        [21] = {2.0, 2.0}, -- QAAM
        [22] = {4.0, 4.0}, -- RKT
        [23] = {2.0, 2.0}, -- SAAM
        [24] = {2.0, 2.0}, -- SASM
        [26] = {2.0, 2.0}, -- SFFS
        [27] = {2.0, 2.0}, -- SOD
        [28] = {10.0, 10.0}, -- TLS
        [30] = {2.0, 2.0}, -- UGB
        [31] = {3.0, 3.0}, -- XSDB
        [33] = {3.0, 6.0}, -- MPBM
        [34] = {10.0, 10.0}, -- ESM
        [40] = {10.0, 10.0}, -- ECM
        [41] = {10.0, 10.0}, -- IEWS
        [43] = {2.0, 2.0}, -- UGBL
        [45] = {10.0, 10.0}, -- EMLB
        [103] = {15, 30}, -- UAVT
    },
}
