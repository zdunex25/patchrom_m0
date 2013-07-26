.class Lnu/xom/Latin7Writer;
.super Lnu/xom/TextWriter;


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/TextWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method needsEscaping(C)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v2

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v2

    goto :goto_0

    :pswitch_b
    move v0, v2

    goto :goto_0

    :pswitch_c
    move v0, v2

    goto :goto_0

    :pswitch_d
    move v0, v2

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v2

    goto :goto_0

    :pswitch_10
    move v0, v2

    goto :goto_0

    :pswitch_11
    move v0, v2

    goto :goto_0

    :pswitch_12
    move v0, v2

    goto :goto_0

    :pswitch_13
    move v0, v1

    goto :goto_0

    :pswitch_14
    move v0, v2

    goto :goto_0

    :pswitch_15
    move v0, v2

    goto :goto_0

    :pswitch_16
    move v0, v2

    goto :goto_0

    :pswitch_17
    move v0, v1

    goto :goto_0

    :pswitch_18
    move v0, v2

    goto :goto_0

    :pswitch_19
    move v0, v1

    goto :goto_0

    :pswitch_1a
    move v0, v2

    goto :goto_0

    :pswitch_1b
    move v0, v2

    goto :goto_0

    :pswitch_1c
    move v0, v2

    goto :goto_0

    :pswitch_1d
    move v0, v2

    goto :goto_0

    :pswitch_1e
    move v0, v1

    goto :goto_0

    :pswitch_1f
    move v0, v1

    goto :goto_0

    :pswitch_20
    move v0, v1

    goto :goto_0

    :pswitch_21
    move v0, v1

    goto :goto_0

    :pswitch_22
    move v0, v1

    goto :goto_0

    :pswitch_23
    move v0, v2

    goto :goto_0

    :pswitch_24
    move v0, v2

    goto :goto_0

    :pswitch_25
    move v0, v2

    goto :goto_0

    :pswitch_26
    move v0, v1

    goto :goto_0

    :pswitch_27
    move v0, v1

    goto :goto_0

    :pswitch_28
    move v0, v2

    goto :goto_0

    :pswitch_29
    move v0, v1

    goto :goto_0

    :pswitch_2a
    move v0, v1

    goto :goto_0

    :pswitch_2b
    move v0, v1

    goto :goto_0

    :pswitch_2c
    move v0, v1

    goto :goto_0

    :pswitch_2d
    move v0, v1

    goto :goto_0

    :pswitch_2e
    move v0, v1

    goto :goto_0

    :pswitch_2f
    move v0, v1

    goto :goto_0

    :pswitch_30
    move v0, v1

    goto :goto_0

    :pswitch_31
    move v0, v1

    goto :goto_0

    :pswitch_32
    move v0, v2

    goto :goto_0

    :pswitch_33
    move v0, v1

    goto :goto_0

    :pswitch_34
    move v0, v2

    goto :goto_0

    :pswitch_35
    move v0, v2

    goto :goto_0

    :pswitch_36
    move v0, v2

    goto :goto_0

    :pswitch_37
    move v0, v2

    goto :goto_0

    :pswitch_38
    move v0, v1

    goto :goto_0

    :pswitch_39
    move v0, v1

    goto :goto_0

    :pswitch_3a
    move v0, v1

    goto :goto_0

    :pswitch_3b
    move v0, v2

    goto :goto_0

    :pswitch_3c
    move v0, v1

    goto/16 :goto_0

    :pswitch_3d
    move v0, v1

    goto/16 :goto_0

    :pswitch_3e
    move v0, v2

    goto/16 :goto_0

    :pswitch_3f
    move v0, v1

    goto/16 :goto_0

    :pswitch_40
    move v0, v1

    goto/16 :goto_0

    :pswitch_41
    move v0, v1

    goto/16 :goto_0

    :pswitch_42
    move v0, v1

    goto/16 :goto_0

    :pswitch_43
    move v0, v2

    goto/16 :goto_0

    :pswitch_44
    move v0, v2

    goto/16 :goto_0

    :pswitch_45
    move v0, v2

    goto/16 :goto_0

    :pswitch_46
    move v0, v1

    goto/16 :goto_0

    :pswitch_47
    move v0, v1

    goto/16 :goto_0

    :pswitch_48
    move v0, v2

    goto/16 :goto_0

    :pswitch_49
    move v0, v1

    goto/16 :goto_0

    :pswitch_4a
    move v0, v1

    goto/16 :goto_0

    :pswitch_4b
    move v0, v1

    goto/16 :goto_0

    :pswitch_4c
    move v0, v1

    goto/16 :goto_0

    :pswitch_4d
    move v0, v1

    goto/16 :goto_0

    :pswitch_4e
    move v0, v1

    goto/16 :goto_0

    :pswitch_4f
    move v0, v1

    goto/16 :goto_0

    :pswitch_50
    move v0, v1

    goto/16 :goto_0

    :pswitch_51
    move v0, v1

    goto/16 :goto_0

    :pswitch_52
    move v0, v2

    goto/16 :goto_0

    :pswitch_53
    move v0, v1

    goto/16 :goto_0

    :pswitch_54
    move v0, v2

    goto/16 :goto_0

    :pswitch_55
    move v0, v2

    goto/16 :goto_0

    :pswitch_56
    move v0, v2

    goto/16 :goto_0

    :pswitch_57
    move v0, v2

    goto/16 :goto_0

    :pswitch_58
    move v0, v1

    goto/16 :goto_0

    :pswitch_59
    move v0, v1

    goto/16 :goto_0

    :pswitch_5a
    move v0, v1

    goto/16 :goto_0

    :pswitch_5b
    move v0, v2

    goto/16 :goto_0

    :pswitch_5c
    move v0, v1

    goto/16 :goto_0

    :pswitch_5d
    move v0, v1

    goto/16 :goto_0

    :pswitch_5e
    move v0, v1

    goto/16 :goto_0

    :pswitch_5f
    move v0, v2

    goto/16 :goto_0

    :pswitch_60
    move v0, v2

    goto/16 :goto_0

    :pswitch_61
    move v0, v1

    goto/16 :goto_0

    :pswitch_62
    move v0, v1

    goto/16 :goto_0

    :pswitch_63
    move v0, v2

    goto/16 :goto_0

    :pswitch_64
    move v0, v2

    goto/16 :goto_0

    :pswitch_65
    move v0, v2

    goto/16 :goto_0

    :pswitch_66
    move v0, v2

    goto/16 :goto_0

    :pswitch_67
    move v0, v1

    goto/16 :goto_0

    :pswitch_68
    move v0, v1

    goto/16 :goto_0

    :pswitch_69
    move v0, v1

    goto/16 :goto_0

    :pswitch_6a
    move v0, v1

    goto/16 :goto_0

    :pswitch_6b
    move v0, v2

    goto/16 :goto_0

    :pswitch_6c
    move v0, v2

    goto/16 :goto_0

    :pswitch_6d
    move v0, v1

    goto/16 :goto_0

    :pswitch_6e
    move v0, v1

    goto/16 :goto_0

    :pswitch_6f
    move v0, v1

    goto/16 :goto_0

    :pswitch_70
    move v0, v1

    goto/16 :goto_0

    :pswitch_71
    move v0, v2

    goto/16 :goto_0

    :pswitch_72
    move v0, v2

    goto/16 :goto_0

    :pswitch_73
    move v0, v1

    goto/16 :goto_0

    :pswitch_74
    move v0, v1

    goto/16 :goto_0

    :pswitch_75
    move v0, v2

    goto/16 :goto_0

    :pswitch_76
    move v0, v2

    goto/16 :goto_0

    :pswitch_77
    move v0, v2

    goto/16 :goto_0

    :pswitch_78
    move v0, v2

    goto/16 :goto_0

    :pswitch_79
    move v0, v1

    goto/16 :goto_0

    :pswitch_7a
    move v0, v1

    goto/16 :goto_0

    :pswitch_7b
    move v0, v1

    goto/16 :goto_0

    :pswitch_7c
    move v0, v1

    goto/16 :goto_0

    :pswitch_7d
    move v0, v1

    goto/16 :goto_0

    :pswitch_7e
    move v0, v1

    goto/16 :goto_0

    :pswitch_7f
    move v0, v1

    goto/16 :goto_0

    :pswitch_80
    move v0, v1

    goto/16 :goto_0

    :pswitch_81
    move v0, v2

    goto/16 :goto_0

    :pswitch_82
    move v0, v2

    goto/16 :goto_0

    :pswitch_83
    move v0, v1

    goto/16 :goto_0

    :pswitch_84
    move v0, v1

    goto/16 :goto_0

    :pswitch_85
    move v0, v1

    goto/16 :goto_0

    :pswitch_86
    move v0, v1

    goto/16 :goto_0

    :pswitch_87
    move v0, v1

    goto/16 :goto_0

    :pswitch_88
    move v0, v1

    goto/16 :goto_0

    :pswitch_89
    move v0, v2

    goto/16 :goto_0

    :pswitch_8a
    move v0, v2

    goto/16 :goto_0

    :pswitch_8b
    move v0, v1

    goto/16 :goto_0

    :pswitch_8c
    move v0, v1

    goto/16 :goto_0

    :pswitch_8d
    move v0, v2

    goto/16 :goto_0

    :pswitch_8e
    move v0, v2

    goto/16 :goto_0

    :pswitch_8f
    move v0, v1

    goto/16 :goto_0

    :pswitch_90
    move v0, v1

    goto/16 :goto_0

    :pswitch_91
    move v0, v1

    goto/16 :goto_0

    :pswitch_92
    move v0, v1

    goto/16 :goto_0

    :pswitch_93
    move v0, v1

    goto/16 :goto_0

    :pswitch_94
    move v0, v1

    goto/16 :goto_0

    :pswitch_95
    move v0, v2

    goto/16 :goto_0

    :pswitch_96
    move v0, v2

    goto/16 :goto_0

    :pswitch_97
    move v0, v1

    goto/16 :goto_0

    :pswitch_98
    move v0, v1

    goto/16 :goto_0

    :pswitch_99
    move v0, v1

    goto/16 :goto_0

    :pswitch_9a
    move v0, v2

    goto/16 :goto_0

    :pswitch_9b
    move v0, v2

    goto/16 :goto_0

    :pswitch_9c
    move v0, v1

    goto/16 :goto_0

    :pswitch_9d
    move v0, v1

    goto/16 :goto_0

    :pswitch_9e
    move v0, v1

    goto/16 :goto_0

    :pswitch_9f
    move v0, v1

    goto/16 :goto_0

    :pswitch_a0
    move v0, v2

    goto/16 :goto_0

    :pswitch_a1
    move v0, v2

    goto/16 :goto_0

    :pswitch_a2
    move v0, v2

    goto/16 :goto_0

    :pswitch_a3
    move v0, v2

    goto/16 :goto_0

    :pswitch_a4
    move v0, v2

    goto/16 :goto_0

    :pswitch_a5
    move v0, v2

    goto/16 :goto_0

    :pswitch_a6
    move v0, v1

    goto/16 :goto_0

    :pswitch_a7
    move v0, v1

    goto/16 :goto_0

    :pswitch_a8
    move v0, v1

    goto/16 :goto_0

    :pswitch_a9
    move v0, v1

    goto/16 :goto_0

    :pswitch_aa
    move v0, v1

    goto/16 :goto_0

    :pswitch_ab
    move v0, v2

    goto/16 :goto_0

    :pswitch_ac
    move v0, v2

    goto/16 :goto_0

    :pswitch_ad
    move v0, v1

    goto/16 :goto_0

    :pswitch_ae
    move v0, v1

    goto/16 :goto_0

    :pswitch_af
    move v0, v1

    goto/16 :goto_0

    :pswitch_b0
    move v0, v1

    goto/16 :goto_0

    :pswitch_b1
    move v0, v1

    goto/16 :goto_0

    :pswitch_b2
    move v0, v1

    goto/16 :goto_0

    :pswitch_b3
    move v0, v1

    goto/16 :goto_0

    :pswitch_b4
    move v0, v1

    goto/16 :goto_0

    :pswitch_b5
    move v0, v2

    goto/16 :goto_0

    :pswitch_b6
    move v0, v2

    goto/16 :goto_0

    :pswitch_b7
    move v0, v1

    goto/16 :goto_0

    :pswitch_b8
    move v0, v1

    goto/16 :goto_0

    :pswitch_b9
    move v0, v2

    goto/16 :goto_0

    :pswitch_ba
    move v0, v2

    goto/16 :goto_0

    :pswitch_bb
    move v0, v1

    goto/16 :goto_0

    :pswitch_bc
    move v0, v1

    goto/16 :goto_0

    :pswitch_bd
    move v0, v1

    goto/16 :goto_0

    :pswitch_be
    move v0, v1

    goto/16 :goto_0

    :pswitch_bf
    move v0, v2

    goto/16 :goto_0

    :pswitch_c0
    move v0, v2

    goto/16 :goto_0

    :pswitch_c1
    move v0, v1

    goto/16 :goto_0

    :pswitch_c2
    move v0, v1

    goto/16 :goto_0

    :pswitch_c3
    move v0, v1

    goto/16 :goto_0

    :pswitch_c4
    move v0, v1

    goto/16 :goto_0

    :pswitch_c5
    move v0, v1

    goto/16 :goto_0

    :pswitch_c6
    move v0, v1

    goto/16 :goto_0

    :pswitch_c7
    move v0, v1

    goto/16 :goto_0

    :pswitch_c8
    move v0, v1

    goto/16 :goto_0

    :pswitch_c9
    move v0, v2

    goto/16 :goto_0

    :pswitch_ca
    move v0, v2

    goto/16 :goto_0

    :pswitch_cb
    move v0, v1

    goto/16 :goto_0

    :pswitch_cc
    move v0, v1

    goto/16 :goto_0

    :pswitch_cd
    move v0, v1

    goto/16 :goto_0

    :pswitch_ce
    move v0, v1

    goto/16 :goto_0

    :pswitch_cf
    move v0, v1

    goto/16 :goto_0

    :pswitch_d0
    move v0, v1

    goto/16 :goto_0

    :pswitch_d1
    move v0, v2

    goto/16 :goto_0

    :pswitch_d2
    move v0, v2

    goto/16 :goto_0

    :pswitch_d3
    move v0, v1

    goto/16 :goto_0

    :pswitch_d4
    move v0, v1

    goto/16 :goto_0

    :pswitch_d5
    move v0, v1

    goto/16 :goto_0

    :pswitch_d6
    move v0, v1

    goto/16 :goto_0

    :pswitch_d7
    move v0, v1

    goto/16 :goto_0

    :pswitch_d8
    move v0, v2

    goto/16 :goto_0

    :pswitch_d9
    move v0, v2

    goto/16 :goto_0

    :pswitch_da
    move v0, v2

    goto/16 :goto_0

    :pswitch_db
    move v0, v2

    goto/16 :goto_0

    :pswitch_dc
    move v0, v2

    goto/16 :goto_0

    :pswitch_dd
    move v0, v2

    goto/16 :goto_0

    :pswitch_de
    move v0, v2

    goto/16 :goto_0

    :pswitch_df
    move v0, v1

    goto/16 :goto_0

    :pswitch_e0
    move v0, v1

    goto/16 :goto_0

    :pswitch_e1
    move v0, v2

    goto/16 :goto_0

    :pswitch_e2
    move v0, v2

    goto/16 :goto_0

    :pswitch_e3
    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_dd
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2019
        :pswitch_de
        :pswitch_df
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
    .end packed-switch
.end method
