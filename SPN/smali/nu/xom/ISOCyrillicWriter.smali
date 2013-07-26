.class Lnu/xom/ISOCyrillicWriter;
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

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xa0

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v2

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    :pswitch_12
    move v0, v1

    goto :goto_0

    :pswitch_13
    move v0, v1

    goto :goto_0

    :pswitch_14
    move v0, v1

    goto :goto_0

    :pswitch_15
    move v0, v1

    goto :goto_0

    :pswitch_16
    move v0, v1

    goto :goto_0

    :pswitch_17
    move v0, v1

    goto :goto_0

    :pswitch_18
    move v0, v1

    goto :goto_0

    :pswitch_19
    move v0, v1

    goto :goto_0

    :pswitch_1a
    move v0, v1

    goto :goto_0

    :pswitch_1b
    move v0, v1

    goto :goto_0

    :pswitch_1c
    move v0, v1

    goto :goto_0

    :pswitch_1d
    move v0, v1

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
    move v0, v1

    goto :goto_0

    :pswitch_24
    move v0, v1

    goto :goto_0

    :pswitch_25
    move v0, v1

    goto :goto_0

    :pswitch_26
    move v0, v1

    goto :goto_0

    :pswitch_27
    move v0, v1

    goto :goto_0

    :pswitch_28
    move v0, v1

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
    move v0, v1

    goto :goto_0

    :pswitch_33
    move v0, v1

    goto :goto_0

    :pswitch_34
    move v0, v1

    goto :goto_0

    :pswitch_35
    move v0, v1

    goto :goto_0

    :pswitch_36
    move v0, v1

    goto :goto_0

    :pswitch_37
    move v0, v1

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
    move v0, v1

    goto :goto_0

    :pswitch_3c
    move v0, v1

    goto/16 :goto_0

    :pswitch_3d
    move v0, v1

    goto/16 :goto_0

    :pswitch_3e
    move v0, v1

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
    move v0, v1

    goto/16 :goto_0

    :pswitch_44
    move v0, v1

    goto/16 :goto_0

    :pswitch_45
    move v0, v1

    goto/16 :goto_0

    :pswitch_46
    move v0, v1

    goto/16 :goto_0

    :pswitch_47
    move v0, v1

    goto/16 :goto_0

    :pswitch_48
    move v0, v1

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
    move v0, v2

    goto/16 :goto_0

    :pswitch_50
    move v0, v1

    goto/16 :goto_0

    :pswitch_51
    move v0, v1

    goto/16 :goto_0

    :pswitch_52
    move v0, v1

    goto/16 :goto_0

    :pswitch_53
    move v0, v1

    goto/16 :goto_0

    :pswitch_54
    move v0, v1

    goto/16 :goto_0

    :pswitch_55
    move v0, v1

    goto/16 :goto_0

    :pswitch_56
    move v0, v1

    goto/16 :goto_0

    :pswitch_57
    move v0, v1

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
    move v0, v1

    goto/16 :goto_0

    :pswitch_5c
    move v0, v2

    goto/16 :goto_0

    :pswitch_5d
    move v0, v1

    goto/16 :goto_0

    :pswitch_5e
    move v0, v1

    goto/16 :goto_0

    :sswitch_0
    move v0, v1

    goto/16 :goto_0

    :sswitch_1
    move v0, v1

    goto/16 :goto_0

    :sswitch_2
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x401
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
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xa7 -> :sswitch_1
        0xad -> :sswitch_0
        0x2116 -> :sswitch_2
    .end sparse-switch
.end method
