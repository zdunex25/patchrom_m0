.class final Lnu/xom/jaxen/saxpath/base/Verifier;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isXMLCombiningChar(C)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x300

    if-ge p0, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x345

    if-gt p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x360

    if-ge p0, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x361

    if-gt p0, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x483

    if-ge p0, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v0, 0x486

    if-gt p0, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const/16 v0, 0x591

    if-ge p0, v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    const/16 v0, 0x5a1

    if-gt p0, v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const/16 v0, 0x5a3

    if-ge p0, v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    const/16 v0, 0x5b9

    if-gt p0, v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    const/16 v0, 0x5bb

    if-ge p0, v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    const/16 v0, 0x5bd

    if-gt p0, v0, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    const/16 v0, 0x5bf

    if-ne p0, v0, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    const/16 v0, 0x5c1

    if-ge p0, v0, :cond_d

    move v0, v2

    goto :goto_0

    :cond_d
    const/16 v0, 0x5c2

    if-gt p0, v0, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    const/16 v0, 0x5c4

    if-ne p0, v0, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    const/16 v0, 0x64b

    if-ge p0, v0, :cond_10

    move v0, v2

    goto :goto_0

    :cond_10
    const/16 v0, 0x652

    if-gt p0, v0, :cond_11

    move v0, v1

    goto :goto_0

    :cond_11
    const/16 v0, 0x670

    if-ne p0, v0, :cond_12

    move v0, v1

    goto :goto_0

    :cond_12
    const/16 v0, 0x6d6

    if-ge p0, v0, :cond_13

    move v0, v2

    goto :goto_0

    :cond_13
    const/16 v0, 0x6dc

    if-gt p0, v0, :cond_14

    move v0, v1

    goto :goto_0

    :cond_14
    const/16 v0, 0x6dd

    if-ge p0, v0, :cond_15

    move v0, v2

    goto :goto_0

    :cond_15
    const/16 v0, 0x6df

    if-gt p0, v0, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x6e0

    if-ge p0, v0, :cond_17

    move v0, v2

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x6e4

    if-gt p0, v0, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x6e7

    if-ge p0, v0, :cond_19

    move v0, v2

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x6e8

    if-gt p0, v0, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x6ea

    if-ge p0, v0, :cond_1b

    move v0, v2

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x6ed

    if-gt p0, v0, :cond_1c

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x901

    if-ge p0, v0, :cond_1d

    move v0, v2

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x903

    if-gt p0, v0, :cond_1e

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0x93c

    if-ne p0, v0, :cond_1f

    move v0, v1

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x93e

    if-ge p0, v0, :cond_20

    move v0, v2

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0x94c

    if-gt p0, v0, :cond_21

    move v0, v1

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x94d

    if-ne p0, v0, :cond_22

    move v0, v1

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x951

    if-ge p0, v0, :cond_23

    move v0, v2

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x954

    if-gt p0, v0, :cond_24

    move v0, v1

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x962

    if-ge p0, v0, :cond_25

    move v0, v2

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x963

    if-gt p0, v0, :cond_26

    move v0, v1

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x981

    if-ge p0, v0, :cond_27

    move v0, v2

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x983

    if-gt p0, v0, :cond_28

    move v0, v1

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0x9bc

    if-ne p0, v0, :cond_29

    move v0, v1

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x9be

    if-ne p0, v0, :cond_2a

    move v0, v1

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0x9bf

    if-ne p0, v0, :cond_2b

    move v0, v1

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0x9c0

    if-ge p0, v0, :cond_2c

    move v0, v2

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0x9c4

    if-gt p0, v0, :cond_2d

    move v0, v1

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0x9c7

    if-ge p0, v0, :cond_2e

    move v0, v2

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0x9c8

    if-gt p0, v0, :cond_2f

    move v0, v1

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0x9cb

    if-ge p0, v0, :cond_30

    move v0, v2

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0x9cd

    if-gt p0, v0, :cond_31

    move v0, v1

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0x9d7

    if-ne p0, v0, :cond_32

    move v0, v1

    goto/16 :goto_0

    :cond_32
    const/16 v0, 0x9e2

    if-ge p0, v0, :cond_33

    move v0, v2

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0x9e3

    if-gt p0, v0, :cond_34

    move v0, v1

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0xa02

    if-ne p0, v0, :cond_35

    move v0, v1

    goto/16 :goto_0

    :cond_35
    const/16 v0, 0xa3c

    if-ne p0, v0, :cond_36

    move v0, v1

    goto/16 :goto_0

    :cond_36
    const/16 v0, 0xa3e

    if-ne p0, v0, :cond_37

    move v0, v1

    goto/16 :goto_0

    :cond_37
    const/16 v0, 0xa3f

    if-ne p0, v0, :cond_38

    move v0, v1

    goto/16 :goto_0

    :cond_38
    const/16 v0, 0xa40

    if-ge p0, v0, :cond_39

    move v0, v2

    goto/16 :goto_0

    :cond_39
    const/16 v0, 0xa42

    if-gt p0, v0, :cond_3a

    move v0, v1

    goto/16 :goto_0

    :cond_3a
    const/16 v0, 0xa47

    if-ge p0, v0, :cond_3b

    move v0, v2

    goto/16 :goto_0

    :cond_3b
    const/16 v0, 0xa48

    if-gt p0, v0, :cond_3c

    move v0, v1

    goto/16 :goto_0

    :cond_3c
    const/16 v0, 0xa4b

    if-ge p0, v0, :cond_3d

    move v0, v2

    goto/16 :goto_0

    :cond_3d
    const/16 v0, 0xa4d

    if-gt p0, v0, :cond_3e

    move v0, v1

    goto/16 :goto_0

    :cond_3e
    const/16 v0, 0xa70

    if-ge p0, v0, :cond_3f

    move v0, v2

    goto/16 :goto_0

    :cond_3f
    const/16 v0, 0xa71

    if-gt p0, v0, :cond_40

    move v0, v1

    goto/16 :goto_0

    :cond_40
    const/16 v0, 0xa81

    if-ge p0, v0, :cond_41

    move v0, v2

    goto/16 :goto_0

    :cond_41
    const/16 v0, 0xa83

    if-gt p0, v0, :cond_42

    move v0, v1

    goto/16 :goto_0

    :cond_42
    const/16 v0, 0xabc

    if-ne p0, v0, :cond_43

    move v0, v1

    goto/16 :goto_0

    :cond_43
    const/16 v0, 0xabe

    if-ge p0, v0, :cond_44

    move v0, v2

    goto/16 :goto_0

    :cond_44
    const/16 v0, 0xac5

    if-gt p0, v0, :cond_45

    move v0, v1

    goto/16 :goto_0

    :cond_45
    const/16 v0, 0xac7

    if-ge p0, v0, :cond_46

    move v0, v2

    goto/16 :goto_0

    :cond_46
    const/16 v0, 0xac9

    if-gt p0, v0, :cond_47

    move v0, v1

    goto/16 :goto_0

    :cond_47
    const/16 v0, 0xacb

    if-ge p0, v0, :cond_48

    move v0, v2

    goto/16 :goto_0

    :cond_48
    const/16 v0, 0xacd

    if-gt p0, v0, :cond_49

    move v0, v1

    goto/16 :goto_0

    :cond_49
    const/16 v0, 0xb01

    if-ge p0, v0, :cond_4a

    move v0, v2

    goto/16 :goto_0

    :cond_4a
    const/16 v0, 0xb03

    if-gt p0, v0, :cond_4b

    move v0, v1

    goto/16 :goto_0

    :cond_4b
    const/16 v0, 0xb3c

    if-ne p0, v0, :cond_4c

    move v0, v1

    goto/16 :goto_0

    :cond_4c
    const/16 v0, 0xb3e

    if-ge p0, v0, :cond_4d

    move v0, v2

    goto/16 :goto_0

    :cond_4d
    const/16 v0, 0xb43

    if-gt p0, v0, :cond_4e

    move v0, v1

    goto/16 :goto_0

    :cond_4e
    const/16 v0, 0xb47

    if-ge p0, v0, :cond_4f

    move v0, v2

    goto/16 :goto_0

    :cond_4f
    const/16 v0, 0xb48

    if-gt p0, v0, :cond_50

    move v0, v1

    goto/16 :goto_0

    :cond_50
    const/16 v0, 0xb4b

    if-ge p0, v0, :cond_51

    move v0, v2

    goto/16 :goto_0

    :cond_51
    const/16 v0, 0xb4d

    if-gt p0, v0, :cond_52

    move v0, v1

    goto/16 :goto_0

    :cond_52
    const/16 v0, 0xb56

    if-ge p0, v0, :cond_53

    move v0, v2

    goto/16 :goto_0

    :cond_53
    const/16 v0, 0xb57

    if-gt p0, v0, :cond_54

    move v0, v1

    goto/16 :goto_0

    :cond_54
    const/16 v0, 0xb82

    if-ge p0, v0, :cond_55

    move v0, v2

    goto/16 :goto_0

    :cond_55
    const/16 v0, 0xb83

    if-gt p0, v0, :cond_56

    move v0, v1

    goto/16 :goto_0

    :cond_56
    const/16 v0, 0xbbe

    if-ge p0, v0, :cond_57

    move v0, v2

    goto/16 :goto_0

    :cond_57
    const/16 v0, 0xbc2

    if-gt p0, v0, :cond_58

    move v0, v1

    goto/16 :goto_0

    :cond_58
    const/16 v0, 0xbc6

    if-ge p0, v0, :cond_59

    move v0, v2

    goto/16 :goto_0

    :cond_59
    const/16 v0, 0xbc8

    if-gt p0, v0, :cond_5a

    move v0, v1

    goto/16 :goto_0

    :cond_5a
    const/16 v0, 0xbca

    if-ge p0, v0, :cond_5b

    move v0, v2

    goto/16 :goto_0

    :cond_5b
    const/16 v0, 0xbcd

    if-gt p0, v0, :cond_5c

    move v0, v1

    goto/16 :goto_0

    :cond_5c
    const/16 v0, 0xbd7

    if-ne p0, v0, :cond_5d

    move v0, v1

    goto/16 :goto_0

    :cond_5d
    const/16 v0, 0xc01

    if-ge p0, v0, :cond_5e

    move v0, v2

    goto/16 :goto_0

    :cond_5e
    const/16 v0, 0xc03

    if-gt p0, v0, :cond_5f

    move v0, v1

    goto/16 :goto_0

    :cond_5f
    const/16 v0, 0xc3e

    if-ge p0, v0, :cond_60

    move v0, v2

    goto/16 :goto_0

    :cond_60
    const/16 v0, 0xc44

    if-gt p0, v0, :cond_61

    move v0, v1

    goto/16 :goto_0

    :cond_61
    const/16 v0, 0xc46

    if-ge p0, v0, :cond_62

    move v0, v2

    goto/16 :goto_0

    :cond_62
    const/16 v0, 0xc48

    if-gt p0, v0, :cond_63

    move v0, v1

    goto/16 :goto_0

    :cond_63
    const/16 v0, 0xc4a

    if-ge p0, v0, :cond_64

    move v0, v2

    goto/16 :goto_0

    :cond_64
    const/16 v0, 0xc4d

    if-gt p0, v0, :cond_65

    move v0, v1

    goto/16 :goto_0

    :cond_65
    const/16 v0, 0xc55

    if-ge p0, v0, :cond_66

    move v0, v2

    goto/16 :goto_0

    :cond_66
    const/16 v0, 0xc56

    if-gt p0, v0, :cond_67

    move v0, v1

    goto/16 :goto_0

    :cond_67
    const/16 v0, 0xc82

    if-ge p0, v0, :cond_68

    move v0, v2

    goto/16 :goto_0

    :cond_68
    const/16 v0, 0xc83

    if-gt p0, v0, :cond_69

    move v0, v1

    goto/16 :goto_0

    :cond_69
    const/16 v0, 0xcbe

    if-ge p0, v0, :cond_6a

    move v0, v2

    goto/16 :goto_0

    :cond_6a
    const/16 v0, 0xcc4

    if-gt p0, v0, :cond_6b

    move v0, v1

    goto/16 :goto_0

    :cond_6b
    const/16 v0, 0xcc6

    if-ge p0, v0, :cond_6c

    move v0, v2

    goto/16 :goto_0

    :cond_6c
    const/16 v0, 0xcc8

    if-gt p0, v0, :cond_6d

    move v0, v1

    goto/16 :goto_0

    :cond_6d
    const/16 v0, 0xcca

    if-ge p0, v0, :cond_6e

    move v0, v2

    goto/16 :goto_0

    :cond_6e
    const/16 v0, 0xccd

    if-gt p0, v0, :cond_6f

    move v0, v1

    goto/16 :goto_0

    :cond_6f
    const/16 v0, 0xcd5

    if-ge p0, v0, :cond_70

    move v0, v2

    goto/16 :goto_0

    :cond_70
    const/16 v0, 0xcd6

    if-gt p0, v0, :cond_71

    move v0, v1

    goto/16 :goto_0

    :cond_71
    const/16 v0, 0xd02

    if-ge p0, v0, :cond_72

    move v0, v2

    goto/16 :goto_0

    :cond_72
    const/16 v0, 0xd03

    if-gt p0, v0, :cond_73

    move v0, v1

    goto/16 :goto_0

    :cond_73
    const/16 v0, 0xd3e

    if-ge p0, v0, :cond_74

    move v0, v2

    goto/16 :goto_0

    :cond_74
    const/16 v0, 0xd43

    if-gt p0, v0, :cond_75

    move v0, v1

    goto/16 :goto_0

    :cond_75
    const/16 v0, 0xd46

    if-ge p0, v0, :cond_76

    move v0, v2

    goto/16 :goto_0

    :cond_76
    const/16 v0, 0xd48

    if-gt p0, v0, :cond_77

    move v0, v1

    goto/16 :goto_0

    :cond_77
    const/16 v0, 0xd4a

    if-ge p0, v0, :cond_78

    move v0, v2

    goto/16 :goto_0

    :cond_78
    const/16 v0, 0xd4d

    if-gt p0, v0, :cond_79

    move v0, v1

    goto/16 :goto_0

    :cond_79
    const/16 v0, 0xd57

    if-ne p0, v0, :cond_7a

    move v0, v1

    goto/16 :goto_0

    :cond_7a
    const/16 v0, 0xe31

    if-ne p0, v0, :cond_7b

    move v0, v1

    goto/16 :goto_0

    :cond_7b
    const/16 v0, 0xe34

    if-ge p0, v0, :cond_7c

    move v0, v2

    goto/16 :goto_0

    :cond_7c
    const/16 v0, 0xe3a

    if-gt p0, v0, :cond_7d

    move v0, v1

    goto/16 :goto_0

    :cond_7d
    const/16 v0, 0xe47

    if-ge p0, v0, :cond_7e

    move v0, v2

    goto/16 :goto_0

    :cond_7e
    const/16 v0, 0xe4e

    if-gt p0, v0, :cond_7f

    move v0, v1

    goto/16 :goto_0

    :cond_7f
    const/16 v0, 0xeb1

    if-ne p0, v0, :cond_80

    move v0, v1

    goto/16 :goto_0

    :cond_80
    const/16 v0, 0xeb4

    if-ge p0, v0, :cond_81

    move v0, v2

    goto/16 :goto_0

    :cond_81
    const/16 v0, 0xeb9

    if-gt p0, v0, :cond_82

    move v0, v1

    goto/16 :goto_0

    :cond_82
    const/16 v0, 0xebb

    if-ge p0, v0, :cond_83

    move v0, v2

    goto/16 :goto_0

    :cond_83
    const/16 v0, 0xebc

    if-gt p0, v0, :cond_84

    move v0, v1

    goto/16 :goto_0

    :cond_84
    const/16 v0, 0xec8

    if-ge p0, v0, :cond_85

    move v0, v2

    goto/16 :goto_0

    :cond_85
    const/16 v0, 0xecd

    if-gt p0, v0, :cond_86

    move v0, v1

    goto/16 :goto_0

    :cond_86
    const/16 v0, 0xf18

    if-ge p0, v0, :cond_87

    move v0, v2

    goto/16 :goto_0

    :cond_87
    const/16 v0, 0xf19

    if-gt p0, v0, :cond_88

    move v0, v1

    goto/16 :goto_0

    :cond_88
    const/16 v0, 0xf35

    if-ne p0, v0, :cond_89

    move v0, v1

    goto/16 :goto_0

    :cond_89
    const/16 v0, 0xf37

    if-ne p0, v0, :cond_8a

    move v0, v1

    goto/16 :goto_0

    :cond_8a
    const/16 v0, 0xf39

    if-ne p0, v0, :cond_8b

    move v0, v1

    goto/16 :goto_0

    :cond_8b
    const/16 v0, 0xf3e

    if-ne p0, v0, :cond_8c

    move v0, v1

    goto/16 :goto_0

    :cond_8c
    const/16 v0, 0xf3f

    if-ne p0, v0, :cond_8d

    move v0, v1

    goto/16 :goto_0

    :cond_8d
    const/16 v0, 0xf71

    if-ge p0, v0, :cond_8e

    move v0, v2

    goto/16 :goto_0

    :cond_8e
    const/16 v0, 0xf84

    if-gt p0, v0, :cond_8f

    move v0, v1

    goto/16 :goto_0

    :cond_8f
    const/16 v0, 0xf86

    if-ge p0, v0, :cond_90

    move v0, v2

    goto/16 :goto_0

    :cond_90
    const/16 v0, 0xf8b

    if-gt p0, v0, :cond_91

    move v0, v1

    goto/16 :goto_0

    :cond_91
    const/16 v0, 0xf90

    if-ge p0, v0, :cond_92

    move v0, v2

    goto/16 :goto_0

    :cond_92
    const/16 v0, 0xf95

    if-gt p0, v0, :cond_93

    move v0, v1

    goto/16 :goto_0

    :cond_93
    const/16 v0, 0xf97

    if-ne p0, v0, :cond_94

    move v0, v1

    goto/16 :goto_0

    :cond_94
    const/16 v0, 0xf99

    if-ge p0, v0, :cond_95

    move v0, v2

    goto/16 :goto_0

    :cond_95
    const/16 v0, 0xfad

    if-gt p0, v0, :cond_96

    move v0, v1

    goto/16 :goto_0

    :cond_96
    const/16 v0, 0xfb1

    if-ge p0, v0, :cond_97

    move v0, v2

    goto/16 :goto_0

    :cond_97
    const/16 v0, 0xfb7

    if-gt p0, v0, :cond_98

    move v0, v1

    goto/16 :goto_0

    :cond_98
    const/16 v0, 0xfb9

    if-ne p0, v0, :cond_99

    move v0, v1

    goto/16 :goto_0

    :cond_99
    const/16 v0, 0x20d0

    if-ge p0, v0, :cond_9a

    move v0, v2

    goto/16 :goto_0

    :cond_9a
    const/16 v0, 0x20dc

    if-gt p0, v0, :cond_9b

    move v0, v1

    goto/16 :goto_0

    :cond_9b
    const/16 v0, 0x20e1

    if-ne p0, v0, :cond_9c

    move v0, v1

    goto/16 :goto_0

    :cond_9c
    const/16 v0, 0x302a

    if-ge p0, v0, :cond_9d

    move v0, v2

    goto/16 :goto_0

    :cond_9d
    const/16 v0, 0x302f

    if-gt p0, v0, :cond_9e

    move v0, v1

    goto/16 :goto_0

    :cond_9e
    const/16 v0, 0x3099

    if-ne p0, v0, :cond_9f

    move v0, v1

    goto/16 :goto_0

    :cond_9f
    const/16 v0, 0x309a

    if-ne p0, v0, :cond_a0

    move v0, v1

    goto/16 :goto_0

    :cond_a0
    move v0, v2

    goto/16 :goto_0
.end method

.method static isXMLDigit(C)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x30

    if-ge p0, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x660

    if-ge p0, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x669

    if-gt p0, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x6f0

    if-ge p0, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x6f9

    if-gt p0, v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v0, 0x966

    if-ge p0, v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const/16 v0, 0x96f

    if-gt p0, v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    const/16 v0, 0x9e6

    if-ge p0, v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    const/16 v0, 0x9ef

    if-gt p0, v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    const/16 v0, 0xa66

    if-ge p0, v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    const/16 v0, 0xa6f

    if-gt p0, v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    const/16 v0, 0xae6

    if-ge p0, v0, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    const/16 v0, 0xaef

    if-gt p0, v0, :cond_d

    move v0, v2

    goto :goto_0

    :cond_d
    const/16 v0, 0xb66

    if-ge p0, v0, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    const/16 v0, 0xb6f

    if-gt p0, v0, :cond_f

    move v0, v2

    goto :goto_0

    :cond_f
    const/16 v0, 0xbe7

    if-ge p0, v0, :cond_10

    move v0, v1

    goto :goto_0

    :cond_10
    const/16 v0, 0xbef

    if-gt p0, v0, :cond_11

    move v0, v2

    goto :goto_0

    :cond_11
    const/16 v0, 0xc66

    if-ge p0, v0, :cond_12

    move v0, v1

    goto :goto_0

    :cond_12
    const/16 v0, 0xc6f

    if-gt p0, v0, :cond_13

    move v0, v2

    goto :goto_0

    :cond_13
    const/16 v0, 0xce6

    if-ge p0, v0, :cond_14

    move v0, v1

    goto :goto_0

    :cond_14
    const/16 v0, 0xcef

    if-gt p0, v0, :cond_15

    move v0, v2

    goto :goto_0

    :cond_15
    const/16 v0, 0xd66

    if-ge p0, v0, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0xd6f

    if-gt p0, v0, :cond_17

    move v0, v2

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0xe50

    if-ge p0, v0, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0xe59

    if-gt p0, v0, :cond_19

    move v0, v2

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0xed0

    if-ge p0, v0, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0xed9

    if-gt p0, v0, :cond_1b

    move v0, v2

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0xf20

    if-ge p0, v0, :cond_1c

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0xf29

    if-gt p0, v0, :cond_1d

    move v0, v2

    goto/16 :goto_0

    :cond_1d
    move v0, v1

    goto/16 :goto_0
.end method

.method static isXMLExtender(C)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xb6

    if-ge p0, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb7

    if-ne p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d0

    if-ne p0, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x2d1

    if-ne p0, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x387

    if-ne p0, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x640

    if-ne p0, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const/16 v0, 0xe46

    if-ne p0, v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const/16 v0, 0xec6

    if-ne p0, v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const/16 v0, 0x3005

    if-ne p0, v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    const/16 v0, 0x3031

    if-ge p0, v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    const/16 v0, 0x3035

    if-gt p0, v0, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    const/16 v0, 0x309d

    if-ge p0, v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    const/16 v0, 0x309e

    if-gt p0, v0, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    const/16 v0, 0x30fc

    if-ge p0, v0, :cond_d

    move v0, v2

    goto :goto_0

    :cond_d
    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    move v0, v2

    goto :goto_0
.end method

.method static isXMLLetter(C)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x41

    if-ge p0, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-ge p0, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0xc0

    if-ge p0, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v0, 0xd6

    if-gt p0, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    const/16 v0, 0xd8

    if-ge p0, v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    const/16 v0, 0xf6

    if-gt p0, v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    const/16 v0, 0xf8

    if-ge p0, v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    const/16 v0, 0xff

    if-gt p0, v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    const/16 v0, 0x100

    if-ge p0, v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    const/16 v0, 0x131

    if-gt p0, v0, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    const/16 v0, 0x134

    if-ge p0, v0, :cond_c

    move v0, v2

    goto :goto_0

    :cond_c
    const/16 v0, 0x13e

    if-gt p0, v0, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    const/16 v0, 0x141

    if-ge p0, v0, :cond_e

    move v0, v2

    goto :goto_0

    :cond_e
    const/16 v0, 0x148

    if-gt p0, v0, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    const/16 v0, 0x14a

    if-ge p0, v0, :cond_10

    move v0, v2

    goto :goto_0

    :cond_10
    const/16 v0, 0x17e

    if-gt p0, v0, :cond_11

    move v0, v1

    goto :goto_0

    :cond_11
    const/16 v0, 0x180

    if-ge p0, v0, :cond_12

    move v0, v2

    goto :goto_0

    :cond_12
    const/16 v0, 0x1c3

    if-gt p0, v0, :cond_13

    move v0, v1

    goto :goto_0

    :cond_13
    const/16 v0, 0x1cd

    if-ge p0, v0, :cond_14

    move v0, v2

    goto :goto_0

    :cond_14
    const/16 v0, 0x1f0

    if-gt p0, v0, :cond_15

    move v0, v1

    goto :goto_0

    :cond_15
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_16

    move v0, v2

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x1f5

    if-gt p0, v0, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x1fa

    if-ge p0, v0, :cond_18

    move v0, v2

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x217

    if-gt p0, v0, :cond_19

    move v0, v1

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x250

    if-ge p0, v0, :cond_1a

    move v0, v2

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x2a8

    if-gt p0, v0, :cond_1b

    move v0, v1

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x2bb

    if-ge p0, v0, :cond_1c

    move v0, v2

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x2c1

    if-gt p0, v0, :cond_1d

    move v0, v1

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x386

    if-ne p0, v0, :cond_1e

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0x388

    if-ge p0, v0, :cond_1f

    move v0, v2

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x38a

    if-gt p0, v0, :cond_20

    move v0, v1

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0x38c

    if-ne p0, v0, :cond_21

    move v0, v1

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x38e

    if-ge p0, v0, :cond_22

    move v0, v2

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x3a1

    if-gt p0, v0, :cond_23

    move v0, v1

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x3a3

    if-ge p0, v0, :cond_24

    move v0, v2

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x3ce

    if-gt p0, v0, :cond_25

    move v0, v1

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x3d0

    if-ge p0, v0, :cond_26

    move v0, v2

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x3d6

    if-gt p0, v0, :cond_27

    move v0, v1

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x3da

    if-ne p0, v0, :cond_28

    move v0, v1

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0x3dc

    if-ne p0, v0, :cond_29

    move v0, v1

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x3de

    if-ne p0, v0, :cond_2a

    move v0, v1

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0x3e0

    if-ne p0, v0, :cond_2b

    move v0, v1

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0x3e2

    if-ge p0, v0, :cond_2c

    move v0, v2

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0x3f3

    if-gt p0, v0, :cond_2d

    move v0, v1

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0x401

    if-ge p0, v0, :cond_2e

    move v0, v2

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0x40c

    if-gt p0, v0, :cond_2f

    move v0, v1

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0x40e

    if-ge p0, v0, :cond_30

    move v0, v2

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0x44f

    if-gt p0, v0, :cond_31

    move v0, v1

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0x451

    if-ge p0, v0, :cond_32

    move v0, v2

    goto/16 :goto_0

    :cond_32
    const/16 v0, 0x45c

    if-gt p0, v0, :cond_33

    move v0, v1

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0x45e

    if-ge p0, v0, :cond_34

    move v0, v2

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0x481

    if-gt p0, v0, :cond_35

    move v0, v1

    goto/16 :goto_0

    :cond_35
    const/16 v0, 0x490

    if-ge p0, v0, :cond_36

    move v0, v2

    goto/16 :goto_0

    :cond_36
    const/16 v0, 0x4c4

    if-gt p0, v0, :cond_37

    move v0, v1

    goto/16 :goto_0

    :cond_37
    const/16 v0, 0x4c7

    if-ge p0, v0, :cond_38

    move v0, v2

    goto/16 :goto_0

    :cond_38
    const/16 v0, 0x4c8

    if-gt p0, v0, :cond_39

    move v0, v1

    goto/16 :goto_0

    :cond_39
    const/16 v0, 0x4cb

    if-ge p0, v0, :cond_3a

    move v0, v2

    goto/16 :goto_0

    :cond_3a
    const/16 v0, 0x4cc

    if-gt p0, v0, :cond_3b

    move v0, v1

    goto/16 :goto_0

    :cond_3b
    const/16 v0, 0x4d0

    if-ge p0, v0, :cond_3c

    move v0, v2

    goto/16 :goto_0

    :cond_3c
    const/16 v0, 0x4eb

    if-gt p0, v0, :cond_3d

    move v0, v1

    goto/16 :goto_0

    :cond_3d
    const/16 v0, 0x4ee

    if-ge p0, v0, :cond_3e

    move v0, v2

    goto/16 :goto_0

    :cond_3e
    const/16 v0, 0x4f5

    if-gt p0, v0, :cond_3f

    move v0, v1

    goto/16 :goto_0

    :cond_3f
    const/16 v0, 0x4f8

    if-ge p0, v0, :cond_40

    move v0, v2

    goto/16 :goto_0

    :cond_40
    const/16 v0, 0x4f9

    if-gt p0, v0, :cond_41

    move v0, v1

    goto/16 :goto_0

    :cond_41
    const/16 v0, 0x531

    if-ge p0, v0, :cond_42

    move v0, v2

    goto/16 :goto_0

    :cond_42
    const/16 v0, 0x556

    if-gt p0, v0, :cond_43

    move v0, v1

    goto/16 :goto_0

    :cond_43
    const/16 v0, 0x559

    if-ne p0, v0, :cond_44

    move v0, v1

    goto/16 :goto_0

    :cond_44
    const/16 v0, 0x561

    if-ge p0, v0, :cond_45

    move v0, v2

    goto/16 :goto_0

    :cond_45
    const/16 v0, 0x586

    if-gt p0, v0, :cond_46

    move v0, v1

    goto/16 :goto_0

    :cond_46
    const/16 v0, 0x5d0

    if-ge p0, v0, :cond_47

    move v0, v2

    goto/16 :goto_0

    :cond_47
    const/16 v0, 0x5ea

    if-gt p0, v0, :cond_48

    move v0, v1

    goto/16 :goto_0

    :cond_48
    const/16 v0, 0x5f0

    if-ge p0, v0, :cond_49

    move v0, v2

    goto/16 :goto_0

    :cond_49
    const/16 v0, 0x5f2

    if-gt p0, v0, :cond_4a

    move v0, v1

    goto/16 :goto_0

    :cond_4a
    const/16 v0, 0x621

    if-ge p0, v0, :cond_4b

    move v0, v2

    goto/16 :goto_0

    :cond_4b
    const/16 v0, 0x63a

    if-gt p0, v0, :cond_4c

    move v0, v1

    goto/16 :goto_0

    :cond_4c
    const/16 v0, 0x641

    if-ge p0, v0, :cond_4d

    move v0, v2

    goto/16 :goto_0

    :cond_4d
    const/16 v0, 0x64a

    if-gt p0, v0, :cond_4e

    move v0, v1

    goto/16 :goto_0

    :cond_4e
    const/16 v0, 0x671

    if-ge p0, v0, :cond_4f

    move v0, v2

    goto/16 :goto_0

    :cond_4f
    const/16 v0, 0x6b7

    if-gt p0, v0, :cond_50

    move v0, v1

    goto/16 :goto_0

    :cond_50
    const/16 v0, 0x6ba

    if-ge p0, v0, :cond_51

    move v0, v2

    goto/16 :goto_0

    :cond_51
    const/16 v0, 0x6be

    if-gt p0, v0, :cond_52

    move v0, v1

    goto/16 :goto_0

    :cond_52
    const/16 v0, 0x6c0

    if-ge p0, v0, :cond_53

    move v0, v2

    goto/16 :goto_0

    :cond_53
    const/16 v0, 0x6ce

    if-gt p0, v0, :cond_54

    move v0, v1

    goto/16 :goto_0

    :cond_54
    const/16 v0, 0x6d0

    if-ge p0, v0, :cond_55

    move v0, v2

    goto/16 :goto_0

    :cond_55
    const/16 v0, 0x6d3

    if-gt p0, v0, :cond_56

    move v0, v1

    goto/16 :goto_0

    :cond_56
    const/16 v0, 0x6d5

    if-ne p0, v0, :cond_57

    move v0, v1

    goto/16 :goto_0

    :cond_57
    const/16 v0, 0x6e5

    if-ge p0, v0, :cond_58

    move v0, v2

    goto/16 :goto_0

    :cond_58
    const/16 v0, 0x6e6

    if-gt p0, v0, :cond_59

    move v0, v1

    goto/16 :goto_0

    :cond_59
    const/16 v0, 0x905

    if-ge p0, v0, :cond_5a

    move v0, v2

    goto/16 :goto_0

    :cond_5a
    const/16 v0, 0x939

    if-gt p0, v0, :cond_5b

    move v0, v1

    goto/16 :goto_0

    :cond_5b
    const/16 v0, 0x93d

    if-ne p0, v0, :cond_5c

    move v0, v1

    goto/16 :goto_0

    :cond_5c
    const/16 v0, 0x958

    if-ge p0, v0, :cond_5d

    move v0, v2

    goto/16 :goto_0

    :cond_5d
    const/16 v0, 0x961

    if-gt p0, v0, :cond_5e

    move v0, v1

    goto/16 :goto_0

    :cond_5e
    const/16 v0, 0x985

    if-ge p0, v0, :cond_5f

    move v0, v2

    goto/16 :goto_0

    :cond_5f
    const/16 v0, 0x98c

    if-gt p0, v0, :cond_60

    move v0, v1

    goto/16 :goto_0

    :cond_60
    const/16 v0, 0x98f

    if-ge p0, v0, :cond_61

    move v0, v2

    goto/16 :goto_0

    :cond_61
    const/16 v0, 0x990

    if-gt p0, v0, :cond_62

    move v0, v1

    goto/16 :goto_0

    :cond_62
    const/16 v0, 0x993

    if-ge p0, v0, :cond_63

    move v0, v2

    goto/16 :goto_0

    :cond_63
    const/16 v0, 0x9a8

    if-gt p0, v0, :cond_64

    move v0, v1

    goto/16 :goto_0

    :cond_64
    const/16 v0, 0x9aa

    if-ge p0, v0, :cond_65

    move v0, v2

    goto/16 :goto_0

    :cond_65
    const/16 v0, 0x9b0

    if-gt p0, v0, :cond_66

    move v0, v1

    goto/16 :goto_0

    :cond_66
    const/16 v0, 0x9b2

    if-ne p0, v0, :cond_67

    move v0, v1

    goto/16 :goto_0

    :cond_67
    const/16 v0, 0x9b6

    if-ge p0, v0, :cond_68

    move v0, v2

    goto/16 :goto_0

    :cond_68
    const/16 v0, 0x9b9

    if-gt p0, v0, :cond_69

    move v0, v1

    goto/16 :goto_0

    :cond_69
    const/16 v0, 0x9dc

    if-ge p0, v0, :cond_6a

    move v0, v2

    goto/16 :goto_0

    :cond_6a
    const/16 v0, 0x9dd

    if-gt p0, v0, :cond_6b

    move v0, v1

    goto/16 :goto_0

    :cond_6b
    const/16 v0, 0x9df

    if-ge p0, v0, :cond_6c

    move v0, v2

    goto/16 :goto_0

    :cond_6c
    const/16 v0, 0x9e1

    if-gt p0, v0, :cond_6d

    move v0, v1

    goto/16 :goto_0

    :cond_6d
    const/16 v0, 0x9f0

    if-ge p0, v0, :cond_6e

    move v0, v2

    goto/16 :goto_0

    :cond_6e
    const/16 v0, 0x9f1

    if-gt p0, v0, :cond_6f

    move v0, v1

    goto/16 :goto_0

    :cond_6f
    const/16 v0, 0xa05

    if-ge p0, v0, :cond_70

    move v0, v2

    goto/16 :goto_0

    :cond_70
    const/16 v0, 0xa0a

    if-gt p0, v0, :cond_71

    move v0, v1

    goto/16 :goto_0

    :cond_71
    const/16 v0, 0xa0f

    if-ge p0, v0, :cond_72

    move v0, v2

    goto/16 :goto_0

    :cond_72
    const/16 v0, 0xa10

    if-gt p0, v0, :cond_73

    move v0, v1

    goto/16 :goto_0

    :cond_73
    const/16 v0, 0xa13

    if-ge p0, v0, :cond_74

    move v0, v2

    goto/16 :goto_0

    :cond_74
    const/16 v0, 0xa28

    if-gt p0, v0, :cond_75

    move v0, v1

    goto/16 :goto_0

    :cond_75
    const/16 v0, 0xa2a

    if-ge p0, v0, :cond_76

    move v0, v2

    goto/16 :goto_0

    :cond_76
    const/16 v0, 0xa30

    if-gt p0, v0, :cond_77

    move v0, v1

    goto/16 :goto_0

    :cond_77
    const/16 v0, 0xa32

    if-ge p0, v0, :cond_78

    move v0, v2

    goto/16 :goto_0

    :cond_78
    const/16 v0, 0xa33

    if-gt p0, v0, :cond_79

    move v0, v1

    goto/16 :goto_0

    :cond_79
    const/16 v0, 0xa35

    if-ge p0, v0, :cond_7a

    move v0, v2

    goto/16 :goto_0

    :cond_7a
    const/16 v0, 0xa36

    if-gt p0, v0, :cond_7b

    move v0, v1

    goto/16 :goto_0

    :cond_7b
    const/16 v0, 0xa38

    if-ge p0, v0, :cond_7c

    move v0, v2

    goto/16 :goto_0

    :cond_7c
    const/16 v0, 0xa39

    if-gt p0, v0, :cond_7d

    move v0, v1

    goto/16 :goto_0

    :cond_7d
    const/16 v0, 0xa59

    if-ge p0, v0, :cond_7e

    move v0, v2

    goto/16 :goto_0

    :cond_7e
    const/16 v0, 0xa5c

    if-gt p0, v0, :cond_7f

    move v0, v1

    goto/16 :goto_0

    :cond_7f
    const/16 v0, 0xa5e

    if-ne p0, v0, :cond_80

    move v0, v1

    goto/16 :goto_0

    :cond_80
    const/16 v0, 0xa72

    if-ge p0, v0, :cond_81

    move v0, v2

    goto/16 :goto_0

    :cond_81
    const/16 v0, 0xa74

    if-gt p0, v0, :cond_82

    move v0, v1

    goto/16 :goto_0

    :cond_82
    const/16 v0, 0xa85

    if-ge p0, v0, :cond_83

    move v0, v2

    goto/16 :goto_0

    :cond_83
    const/16 v0, 0xa8b

    if-gt p0, v0, :cond_84

    move v0, v1

    goto/16 :goto_0

    :cond_84
    const/16 v0, 0xa8d

    if-ne p0, v0, :cond_85

    move v0, v1

    goto/16 :goto_0

    :cond_85
    const/16 v0, 0xa8f

    if-ge p0, v0, :cond_86

    move v0, v2

    goto/16 :goto_0

    :cond_86
    const/16 v0, 0xa91

    if-gt p0, v0, :cond_87

    move v0, v1

    goto/16 :goto_0

    :cond_87
    const/16 v0, 0xa93

    if-ge p0, v0, :cond_88

    move v0, v2

    goto/16 :goto_0

    :cond_88
    const/16 v0, 0xaa8

    if-gt p0, v0, :cond_89

    move v0, v1

    goto/16 :goto_0

    :cond_89
    const/16 v0, 0xaaa

    if-ge p0, v0, :cond_8a

    move v0, v2

    goto/16 :goto_0

    :cond_8a
    const/16 v0, 0xab0

    if-gt p0, v0, :cond_8b

    move v0, v1

    goto/16 :goto_0

    :cond_8b
    const/16 v0, 0xab2

    if-ge p0, v0, :cond_8c

    move v0, v2

    goto/16 :goto_0

    :cond_8c
    const/16 v0, 0xab3

    if-gt p0, v0, :cond_8d

    move v0, v1

    goto/16 :goto_0

    :cond_8d
    const/16 v0, 0xab5

    if-ge p0, v0, :cond_8e

    move v0, v2

    goto/16 :goto_0

    :cond_8e
    const/16 v0, 0xab9

    if-gt p0, v0, :cond_8f

    move v0, v1

    goto/16 :goto_0

    :cond_8f
    const/16 v0, 0xabd

    if-ne p0, v0, :cond_90

    move v0, v1

    goto/16 :goto_0

    :cond_90
    const/16 v0, 0xae0

    if-ne p0, v0, :cond_91

    move v0, v1

    goto/16 :goto_0

    :cond_91
    const/16 v0, 0xb05

    if-ge p0, v0, :cond_92

    move v0, v2

    goto/16 :goto_0

    :cond_92
    const/16 v0, 0xb0c

    if-gt p0, v0, :cond_93

    move v0, v1

    goto/16 :goto_0

    :cond_93
    const/16 v0, 0xb0f

    if-ge p0, v0, :cond_94

    move v0, v2

    goto/16 :goto_0

    :cond_94
    const/16 v0, 0xb10

    if-gt p0, v0, :cond_95

    move v0, v1

    goto/16 :goto_0

    :cond_95
    const/16 v0, 0xb13

    if-ge p0, v0, :cond_96

    move v0, v2

    goto/16 :goto_0

    :cond_96
    const/16 v0, 0xb28

    if-gt p0, v0, :cond_97

    move v0, v1

    goto/16 :goto_0

    :cond_97
    const/16 v0, 0xb2a

    if-ge p0, v0, :cond_98

    move v0, v2

    goto/16 :goto_0

    :cond_98
    const/16 v0, 0xb30

    if-gt p0, v0, :cond_99

    move v0, v1

    goto/16 :goto_0

    :cond_99
    const/16 v0, 0xb32

    if-ge p0, v0, :cond_9a

    move v0, v2

    goto/16 :goto_0

    :cond_9a
    const/16 v0, 0xb33

    if-gt p0, v0, :cond_9b

    move v0, v1

    goto/16 :goto_0

    :cond_9b
    const/16 v0, 0xb36

    if-ge p0, v0, :cond_9c

    move v0, v2

    goto/16 :goto_0

    :cond_9c
    const/16 v0, 0xb39

    if-gt p0, v0, :cond_9d

    move v0, v1

    goto/16 :goto_0

    :cond_9d
    const/16 v0, 0xb3d

    if-ne p0, v0, :cond_9e

    move v0, v1

    goto/16 :goto_0

    :cond_9e
    const/16 v0, 0xb5c

    if-ge p0, v0, :cond_9f

    move v0, v2

    goto/16 :goto_0

    :cond_9f
    const/16 v0, 0xb5d

    if-gt p0, v0, :cond_a0

    move v0, v1

    goto/16 :goto_0

    :cond_a0
    const/16 v0, 0xb5f

    if-ge p0, v0, :cond_a1

    move v0, v2

    goto/16 :goto_0

    :cond_a1
    const/16 v0, 0xb61

    if-gt p0, v0, :cond_a2

    move v0, v1

    goto/16 :goto_0

    :cond_a2
    const/16 v0, 0xb85

    if-ge p0, v0, :cond_a3

    move v0, v2

    goto/16 :goto_0

    :cond_a3
    const/16 v0, 0xb8a

    if-gt p0, v0, :cond_a4

    move v0, v1

    goto/16 :goto_0

    :cond_a4
    const/16 v0, 0xb8e

    if-ge p0, v0, :cond_a5

    move v0, v2

    goto/16 :goto_0

    :cond_a5
    const/16 v0, 0xb90

    if-gt p0, v0, :cond_a6

    move v0, v1

    goto/16 :goto_0

    :cond_a6
    const/16 v0, 0xb92

    if-ge p0, v0, :cond_a7

    move v0, v2

    goto/16 :goto_0

    :cond_a7
    const/16 v0, 0xb95

    if-gt p0, v0, :cond_a8

    move v0, v1

    goto/16 :goto_0

    :cond_a8
    const/16 v0, 0xb99

    if-ge p0, v0, :cond_a9

    move v0, v2

    goto/16 :goto_0

    :cond_a9
    const/16 v0, 0xb9a

    if-gt p0, v0, :cond_aa

    move v0, v1

    goto/16 :goto_0

    :cond_aa
    const/16 v0, 0xb9c

    if-ne p0, v0, :cond_ab

    move v0, v1

    goto/16 :goto_0

    :cond_ab
    const/16 v0, 0xb9e

    if-ge p0, v0, :cond_ac

    move v0, v2

    goto/16 :goto_0

    :cond_ac
    const/16 v0, 0xb9f

    if-gt p0, v0, :cond_ad

    move v0, v1

    goto/16 :goto_0

    :cond_ad
    const/16 v0, 0xba3

    if-ge p0, v0, :cond_ae

    move v0, v2

    goto/16 :goto_0

    :cond_ae
    const/16 v0, 0xba4

    if-gt p0, v0, :cond_af

    move v0, v1

    goto/16 :goto_0

    :cond_af
    const/16 v0, 0xba8

    if-ge p0, v0, :cond_b0

    move v0, v2

    goto/16 :goto_0

    :cond_b0
    const/16 v0, 0xbaa

    if-gt p0, v0, :cond_b1

    move v0, v1

    goto/16 :goto_0

    :cond_b1
    const/16 v0, 0xbae

    if-ge p0, v0, :cond_b2

    move v0, v2

    goto/16 :goto_0

    :cond_b2
    const/16 v0, 0xbb5

    if-gt p0, v0, :cond_b3

    move v0, v1

    goto/16 :goto_0

    :cond_b3
    const/16 v0, 0xbb7

    if-ge p0, v0, :cond_b4

    move v0, v2

    goto/16 :goto_0

    :cond_b4
    const/16 v0, 0xbb9

    if-gt p0, v0, :cond_b5

    move v0, v1

    goto/16 :goto_0

    :cond_b5
    const/16 v0, 0xc05

    if-ge p0, v0, :cond_b6

    move v0, v2

    goto/16 :goto_0

    :cond_b6
    const/16 v0, 0xc0c

    if-gt p0, v0, :cond_b7

    move v0, v1

    goto/16 :goto_0

    :cond_b7
    const/16 v0, 0xc0e

    if-ge p0, v0, :cond_b8

    move v0, v2

    goto/16 :goto_0

    :cond_b8
    const/16 v0, 0xc10

    if-gt p0, v0, :cond_b9

    move v0, v1

    goto/16 :goto_0

    :cond_b9
    const/16 v0, 0xc12

    if-ge p0, v0, :cond_ba

    move v0, v2

    goto/16 :goto_0

    :cond_ba
    const/16 v0, 0xc28

    if-gt p0, v0, :cond_bb

    move v0, v1

    goto/16 :goto_0

    :cond_bb
    const/16 v0, 0xc2a

    if-ge p0, v0, :cond_bc

    move v0, v2

    goto/16 :goto_0

    :cond_bc
    const/16 v0, 0xc33

    if-gt p0, v0, :cond_bd

    move v0, v1

    goto/16 :goto_0

    :cond_bd
    const/16 v0, 0xc35

    if-ge p0, v0, :cond_be

    move v0, v2

    goto/16 :goto_0

    :cond_be
    const/16 v0, 0xc39

    if-gt p0, v0, :cond_bf

    move v0, v1

    goto/16 :goto_0

    :cond_bf
    const/16 v0, 0xc60

    if-ge p0, v0, :cond_c0

    move v0, v2

    goto/16 :goto_0

    :cond_c0
    const/16 v0, 0xc61

    if-gt p0, v0, :cond_c1

    move v0, v1

    goto/16 :goto_0

    :cond_c1
    const/16 v0, 0xc85

    if-ge p0, v0, :cond_c2

    move v0, v2

    goto/16 :goto_0

    :cond_c2
    const/16 v0, 0xc8c

    if-gt p0, v0, :cond_c3

    move v0, v1

    goto/16 :goto_0

    :cond_c3
    const/16 v0, 0xc8e

    if-ge p0, v0, :cond_c4

    move v0, v2

    goto/16 :goto_0

    :cond_c4
    const/16 v0, 0xc90

    if-gt p0, v0, :cond_c5

    move v0, v1

    goto/16 :goto_0

    :cond_c5
    const/16 v0, 0xc92

    if-ge p0, v0, :cond_c6

    move v0, v2

    goto/16 :goto_0

    :cond_c6
    const/16 v0, 0xca8

    if-gt p0, v0, :cond_c7

    move v0, v1

    goto/16 :goto_0

    :cond_c7
    const/16 v0, 0xcaa

    if-ge p0, v0, :cond_c8

    move v0, v2

    goto/16 :goto_0

    :cond_c8
    const/16 v0, 0xcb3

    if-gt p0, v0, :cond_c9

    move v0, v1

    goto/16 :goto_0

    :cond_c9
    const/16 v0, 0xcb5

    if-ge p0, v0, :cond_ca

    move v0, v2

    goto/16 :goto_0

    :cond_ca
    const/16 v0, 0xcb9

    if-gt p0, v0, :cond_cb

    move v0, v1

    goto/16 :goto_0

    :cond_cb
    const/16 v0, 0xcde

    if-ne p0, v0, :cond_cc

    move v0, v1

    goto/16 :goto_0

    :cond_cc
    const/16 v0, 0xce0

    if-ge p0, v0, :cond_cd

    move v0, v2

    goto/16 :goto_0

    :cond_cd
    const/16 v0, 0xce1

    if-gt p0, v0, :cond_ce

    move v0, v1

    goto/16 :goto_0

    :cond_ce
    const/16 v0, 0xd05

    if-ge p0, v0, :cond_cf

    move v0, v2

    goto/16 :goto_0

    :cond_cf
    const/16 v0, 0xd0c

    if-gt p0, v0, :cond_d0

    move v0, v1

    goto/16 :goto_0

    :cond_d0
    const/16 v0, 0xd0e

    if-ge p0, v0, :cond_d1

    move v0, v2

    goto/16 :goto_0

    :cond_d1
    const/16 v0, 0xd10

    if-gt p0, v0, :cond_d2

    move v0, v1

    goto/16 :goto_0

    :cond_d2
    const/16 v0, 0xd12

    if-ge p0, v0, :cond_d3

    move v0, v2

    goto/16 :goto_0

    :cond_d3
    const/16 v0, 0xd28

    if-gt p0, v0, :cond_d4

    move v0, v1

    goto/16 :goto_0

    :cond_d4
    const/16 v0, 0xd2a

    if-ge p0, v0, :cond_d5

    move v0, v2

    goto/16 :goto_0

    :cond_d5
    const/16 v0, 0xd39

    if-gt p0, v0, :cond_d6

    move v0, v1

    goto/16 :goto_0

    :cond_d6
    const/16 v0, 0xd60

    if-ge p0, v0, :cond_d7

    move v0, v2

    goto/16 :goto_0

    :cond_d7
    const/16 v0, 0xd61

    if-gt p0, v0, :cond_d8

    move v0, v1

    goto/16 :goto_0

    :cond_d8
    const/16 v0, 0xe01

    if-ge p0, v0, :cond_d9

    move v0, v2

    goto/16 :goto_0

    :cond_d9
    const/16 v0, 0xe2e

    if-gt p0, v0, :cond_da

    move v0, v1

    goto/16 :goto_0

    :cond_da
    const/16 v0, 0xe30

    if-ne p0, v0, :cond_db

    move v0, v1

    goto/16 :goto_0

    :cond_db
    const/16 v0, 0xe32

    if-ge p0, v0, :cond_dc

    move v0, v2

    goto/16 :goto_0

    :cond_dc
    const/16 v0, 0xe33

    if-gt p0, v0, :cond_dd

    move v0, v1

    goto/16 :goto_0

    :cond_dd
    const/16 v0, 0xe40

    if-ge p0, v0, :cond_de

    move v0, v2

    goto/16 :goto_0

    :cond_de
    const/16 v0, 0xe45

    if-gt p0, v0, :cond_df

    move v0, v1

    goto/16 :goto_0

    :cond_df
    const/16 v0, 0xe81

    if-ge p0, v0, :cond_e0

    move v0, v2

    goto/16 :goto_0

    :cond_e0
    const/16 v0, 0xe82

    if-gt p0, v0, :cond_e1

    move v0, v1

    goto/16 :goto_0

    :cond_e1
    const/16 v0, 0xe84

    if-ne p0, v0, :cond_e2

    move v0, v1

    goto/16 :goto_0

    :cond_e2
    const/16 v0, 0xe87

    if-ge p0, v0, :cond_e3

    move v0, v2

    goto/16 :goto_0

    :cond_e3
    const/16 v0, 0xe88

    if-gt p0, v0, :cond_e4

    move v0, v1

    goto/16 :goto_0

    :cond_e4
    const/16 v0, 0xe8a

    if-ne p0, v0, :cond_e5

    move v0, v1

    goto/16 :goto_0

    :cond_e5
    const/16 v0, 0xe8d

    if-ne p0, v0, :cond_e6

    move v0, v1

    goto/16 :goto_0

    :cond_e6
    const/16 v0, 0xe94

    if-ge p0, v0, :cond_e7

    move v0, v2

    goto/16 :goto_0

    :cond_e7
    const/16 v0, 0xe97

    if-gt p0, v0, :cond_e8

    move v0, v1

    goto/16 :goto_0

    :cond_e8
    const/16 v0, 0xe99

    if-ge p0, v0, :cond_e9

    move v0, v2

    goto/16 :goto_0

    :cond_e9
    const/16 v0, 0xe9f

    if-gt p0, v0, :cond_ea

    move v0, v1

    goto/16 :goto_0

    :cond_ea
    const/16 v0, 0xea1

    if-ge p0, v0, :cond_eb

    move v0, v2

    goto/16 :goto_0

    :cond_eb
    const/16 v0, 0xea3

    if-gt p0, v0, :cond_ec

    move v0, v1

    goto/16 :goto_0

    :cond_ec
    const/16 v0, 0xea5

    if-ne p0, v0, :cond_ed

    move v0, v1

    goto/16 :goto_0

    :cond_ed
    const/16 v0, 0xea7

    if-ne p0, v0, :cond_ee

    move v0, v1

    goto/16 :goto_0

    :cond_ee
    const/16 v0, 0xeaa

    if-ge p0, v0, :cond_ef

    move v0, v2

    goto/16 :goto_0

    :cond_ef
    const/16 v0, 0xeab

    if-gt p0, v0, :cond_f0

    move v0, v1

    goto/16 :goto_0

    :cond_f0
    const/16 v0, 0xead

    if-ge p0, v0, :cond_f1

    move v0, v2

    goto/16 :goto_0

    :cond_f1
    const/16 v0, 0xeae

    if-gt p0, v0, :cond_f2

    move v0, v1

    goto/16 :goto_0

    :cond_f2
    const/16 v0, 0xeb0

    if-ne p0, v0, :cond_f3

    move v0, v1

    goto/16 :goto_0

    :cond_f3
    const/16 v0, 0xeb2

    if-ge p0, v0, :cond_f4

    move v0, v2

    goto/16 :goto_0

    :cond_f4
    const/16 v0, 0xeb3

    if-gt p0, v0, :cond_f5

    move v0, v1

    goto/16 :goto_0

    :cond_f5
    const/16 v0, 0xebd

    if-ne p0, v0, :cond_f6

    move v0, v1

    goto/16 :goto_0

    :cond_f6
    const/16 v0, 0xec0

    if-ge p0, v0, :cond_f7

    move v0, v2

    goto/16 :goto_0

    :cond_f7
    const/16 v0, 0xec4

    if-gt p0, v0, :cond_f8

    move v0, v1

    goto/16 :goto_0

    :cond_f8
    const/16 v0, 0xf40

    if-ge p0, v0, :cond_f9

    move v0, v2

    goto/16 :goto_0

    :cond_f9
    const/16 v0, 0xf47

    if-gt p0, v0, :cond_fa

    move v0, v1

    goto/16 :goto_0

    :cond_fa
    const/16 v0, 0xf49

    if-ge p0, v0, :cond_fb

    move v0, v2

    goto/16 :goto_0

    :cond_fb
    const/16 v0, 0xf69

    if-gt p0, v0, :cond_fc

    move v0, v1

    goto/16 :goto_0

    :cond_fc
    const/16 v0, 0x10a0

    if-ge p0, v0, :cond_fd

    move v0, v2

    goto/16 :goto_0

    :cond_fd
    const/16 v0, 0x10c5

    if-gt p0, v0, :cond_fe

    move v0, v1

    goto/16 :goto_0

    :cond_fe
    const/16 v0, 0x10d0

    if-ge p0, v0, :cond_ff

    move v0, v2

    goto/16 :goto_0

    :cond_ff
    const/16 v0, 0x10f6

    if-gt p0, v0, :cond_100

    move v0, v1

    goto/16 :goto_0

    :cond_100
    const/16 v0, 0x1100

    if-ne p0, v0, :cond_101

    move v0, v1

    goto/16 :goto_0

    :cond_101
    const/16 v0, 0x1102

    if-ge p0, v0, :cond_102

    move v0, v2

    goto/16 :goto_0

    :cond_102
    const/16 v0, 0x1103

    if-gt p0, v0, :cond_103

    move v0, v1

    goto/16 :goto_0

    :cond_103
    const/16 v0, 0x1105

    if-ge p0, v0, :cond_104

    move v0, v2

    goto/16 :goto_0

    :cond_104
    const/16 v0, 0x1107

    if-gt p0, v0, :cond_105

    move v0, v1

    goto/16 :goto_0

    :cond_105
    const/16 v0, 0x1109

    if-ne p0, v0, :cond_106

    move v0, v1

    goto/16 :goto_0

    :cond_106
    const/16 v0, 0x110b

    if-ge p0, v0, :cond_107

    move v0, v2

    goto/16 :goto_0

    :cond_107
    const/16 v0, 0x110c

    if-gt p0, v0, :cond_108

    move v0, v1

    goto/16 :goto_0

    :cond_108
    const/16 v0, 0x110e

    if-ge p0, v0, :cond_109

    move v0, v2

    goto/16 :goto_0

    :cond_109
    const/16 v0, 0x1112

    if-gt p0, v0, :cond_10a

    move v0, v1

    goto/16 :goto_0

    :cond_10a
    const/16 v0, 0x113c

    if-ne p0, v0, :cond_10b

    move v0, v1

    goto/16 :goto_0

    :cond_10b
    const/16 v0, 0x113e

    if-ne p0, v0, :cond_10c

    move v0, v1

    goto/16 :goto_0

    :cond_10c
    const/16 v0, 0x1140

    if-ne p0, v0, :cond_10d

    move v0, v1

    goto/16 :goto_0

    :cond_10d
    const/16 v0, 0x114c

    if-ne p0, v0, :cond_10e

    move v0, v1

    goto/16 :goto_0

    :cond_10e
    const/16 v0, 0x114e

    if-ne p0, v0, :cond_10f

    move v0, v1

    goto/16 :goto_0

    :cond_10f
    const/16 v0, 0x1150

    if-ne p0, v0, :cond_110

    move v0, v1

    goto/16 :goto_0

    :cond_110
    const/16 v0, 0x1154

    if-ge p0, v0, :cond_111

    move v0, v2

    goto/16 :goto_0

    :cond_111
    const/16 v0, 0x1155

    if-gt p0, v0, :cond_112

    move v0, v1

    goto/16 :goto_0

    :cond_112
    const/16 v0, 0x1159

    if-ne p0, v0, :cond_113

    move v0, v1

    goto/16 :goto_0

    :cond_113
    const/16 v0, 0x115f

    if-ge p0, v0, :cond_114

    move v0, v2

    goto/16 :goto_0

    :cond_114
    const/16 v0, 0x1161

    if-gt p0, v0, :cond_115

    move v0, v1

    goto/16 :goto_0

    :cond_115
    const/16 v0, 0x1163

    if-ne p0, v0, :cond_116

    move v0, v1

    goto/16 :goto_0

    :cond_116
    const/16 v0, 0x1165

    if-ne p0, v0, :cond_117

    move v0, v1

    goto/16 :goto_0

    :cond_117
    const/16 v0, 0x1167

    if-ne p0, v0, :cond_118

    move v0, v1

    goto/16 :goto_0

    :cond_118
    const/16 v0, 0x1169

    if-ne p0, v0, :cond_119

    move v0, v1

    goto/16 :goto_0

    :cond_119
    const/16 v0, 0x116d

    if-ge p0, v0, :cond_11a

    move v0, v2

    goto/16 :goto_0

    :cond_11a
    const/16 v0, 0x116e

    if-gt p0, v0, :cond_11b

    move v0, v1

    goto/16 :goto_0

    :cond_11b
    const/16 v0, 0x1172

    if-ge p0, v0, :cond_11c

    move v0, v2

    goto/16 :goto_0

    :cond_11c
    const/16 v0, 0x1173

    if-gt p0, v0, :cond_11d

    move v0, v1

    goto/16 :goto_0

    :cond_11d
    const/16 v0, 0x1175

    if-ne p0, v0, :cond_11e

    move v0, v1

    goto/16 :goto_0

    :cond_11e
    const/16 v0, 0x119e

    if-ne p0, v0, :cond_11f

    move v0, v1

    goto/16 :goto_0

    :cond_11f
    const/16 v0, 0x11a8

    if-ne p0, v0, :cond_120

    move v0, v1

    goto/16 :goto_0

    :cond_120
    const/16 v0, 0x11ab

    if-ne p0, v0, :cond_121

    move v0, v1

    goto/16 :goto_0

    :cond_121
    const/16 v0, 0x11ae

    if-ge p0, v0, :cond_122

    move v0, v2

    goto/16 :goto_0

    :cond_122
    const/16 v0, 0x11af

    if-gt p0, v0, :cond_123

    move v0, v1

    goto/16 :goto_0

    :cond_123
    const/16 v0, 0x11b7

    if-ge p0, v0, :cond_124

    move v0, v2

    goto/16 :goto_0

    :cond_124
    const/16 v0, 0x11b8

    if-gt p0, v0, :cond_125

    move v0, v1

    goto/16 :goto_0

    :cond_125
    const/16 v0, 0x11ba

    if-ne p0, v0, :cond_126

    move v0, v1

    goto/16 :goto_0

    :cond_126
    const/16 v0, 0x11bc

    if-ge p0, v0, :cond_127

    move v0, v2

    goto/16 :goto_0

    :cond_127
    const/16 v0, 0x11c2

    if-gt p0, v0, :cond_128

    move v0, v1

    goto/16 :goto_0

    :cond_128
    const/16 v0, 0x11eb

    if-ne p0, v0, :cond_129

    move v0, v1

    goto/16 :goto_0

    :cond_129
    const/16 v0, 0x11f0

    if-ne p0, v0, :cond_12a

    move v0, v1

    goto/16 :goto_0

    :cond_12a
    const/16 v0, 0x11f9

    if-ne p0, v0, :cond_12b

    move v0, v1

    goto/16 :goto_0

    :cond_12b
    const/16 v0, 0x1e00

    if-ge p0, v0, :cond_12c

    move v0, v2

    goto/16 :goto_0

    :cond_12c
    const/16 v0, 0x1e9b

    if-gt p0, v0, :cond_12d

    move v0, v1

    goto/16 :goto_0

    :cond_12d
    const/16 v0, 0x1ea0

    if-ge p0, v0, :cond_12e

    move v0, v2

    goto/16 :goto_0

    :cond_12e
    const/16 v0, 0x1ef9

    if-gt p0, v0, :cond_12f

    move v0, v1

    goto/16 :goto_0

    :cond_12f
    const/16 v0, 0x1f00

    if-ge p0, v0, :cond_130

    move v0, v2

    goto/16 :goto_0

    :cond_130
    const/16 v0, 0x1f15

    if-gt p0, v0, :cond_131

    move v0, v1

    goto/16 :goto_0

    :cond_131
    const/16 v0, 0x1f18

    if-ge p0, v0, :cond_132

    move v0, v2

    goto/16 :goto_0

    :cond_132
    const/16 v0, 0x1f1d

    if-gt p0, v0, :cond_133

    move v0, v1

    goto/16 :goto_0

    :cond_133
    const/16 v0, 0x1f20

    if-ge p0, v0, :cond_134

    move v0, v2

    goto/16 :goto_0

    :cond_134
    const/16 v0, 0x1f45

    if-gt p0, v0, :cond_135

    move v0, v1

    goto/16 :goto_0

    :cond_135
    const/16 v0, 0x1f48

    if-ge p0, v0, :cond_136

    move v0, v2

    goto/16 :goto_0

    :cond_136
    const/16 v0, 0x1f4d

    if-gt p0, v0, :cond_137

    move v0, v1

    goto/16 :goto_0

    :cond_137
    const/16 v0, 0x1f50

    if-ge p0, v0, :cond_138

    move v0, v2

    goto/16 :goto_0

    :cond_138
    const/16 v0, 0x1f57

    if-gt p0, v0, :cond_139

    move v0, v1

    goto/16 :goto_0

    :cond_139
    const/16 v0, 0x1f59

    if-ne p0, v0, :cond_13a

    move v0, v1

    goto/16 :goto_0

    :cond_13a
    const/16 v0, 0x1f5b

    if-ne p0, v0, :cond_13b

    move v0, v1

    goto/16 :goto_0

    :cond_13b
    const/16 v0, 0x1f5d

    if-ne p0, v0, :cond_13c

    move v0, v1

    goto/16 :goto_0

    :cond_13c
    const/16 v0, 0x1f5f

    if-ge p0, v0, :cond_13d

    move v0, v2

    goto/16 :goto_0

    :cond_13d
    const/16 v0, 0x1f7d

    if-gt p0, v0, :cond_13e

    move v0, v1

    goto/16 :goto_0

    :cond_13e
    const/16 v0, 0x1f80

    if-ge p0, v0, :cond_13f

    move v0, v2

    goto/16 :goto_0

    :cond_13f
    const/16 v0, 0x1fb4

    if-gt p0, v0, :cond_140

    move v0, v1

    goto/16 :goto_0

    :cond_140
    const/16 v0, 0x1fb6

    if-ge p0, v0, :cond_141

    move v0, v2

    goto/16 :goto_0

    :cond_141
    const/16 v0, 0x1fbc

    if-gt p0, v0, :cond_142

    move v0, v1

    goto/16 :goto_0

    :cond_142
    const/16 v0, 0x1fbe

    if-ne p0, v0, :cond_143

    move v0, v1

    goto/16 :goto_0

    :cond_143
    const/16 v0, 0x1fc2

    if-ge p0, v0, :cond_144

    move v0, v2

    goto/16 :goto_0

    :cond_144
    const/16 v0, 0x1fc4

    if-gt p0, v0, :cond_145

    move v0, v1

    goto/16 :goto_0

    :cond_145
    const/16 v0, 0x1fc6

    if-ge p0, v0, :cond_146

    move v0, v2

    goto/16 :goto_0

    :cond_146
    const/16 v0, 0x1fcc

    if-gt p0, v0, :cond_147

    move v0, v1

    goto/16 :goto_0

    :cond_147
    const/16 v0, 0x1fd0

    if-ge p0, v0, :cond_148

    move v0, v2

    goto/16 :goto_0

    :cond_148
    const/16 v0, 0x1fd3

    if-gt p0, v0, :cond_149

    move v0, v1

    goto/16 :goto_0

    :cond_149
    const/16 v0, 0x1fd6

    if-ge p0, v0, :cond_14a

    move v0, v2

    goto/16 :goto_0

    :cond_14a
    const/16 v0, 0x1fdb

    if-gt p0, v0, :cond_14b

    move v0, v1

    goto/16 :goto_0

    :cond_14b
    const/16 v0, 0x1fe0

    if-ge p0, v0, :cond_14c

    move v0, v2

    goto/16 :goto_0

    :cond_14c
    const/16 v0, 0x1fec

    if-gt p0, v0, :cond_14d

    move v0, v1

    goto/16 :goto_0

    :cond_14d
    const/16 v0, 0x1ff2

    if-ge p0, v0, :cond_14e

    move v0, v2

    goto/16 :goto_0

    :cond_14e
    const/16 v0, 0x1ff4

    if-gt p0, v0, :cond_14f

    move v0, v1

    goto/16 :goto_0

    :cond_14f
    const/16 v0, 0x1ff6

    if-ge p0, v0, :cond_150

    move v0, v2

    goto/16 :goto_0

    :cond_150
    const/16 v0, 0x1ffc

    if-gt p0, v0, :cond_151

    move v0, v1

    goto/16 :goto_0

    :cond_151
    const/16 v0, 0x2126

    if-ne p0, v0, :cond_152

    move v0, v1

    goto/16 :goto_0

    :cond_152
    const/16 v0, 0x212a

    if-ge p0, v0, :cond_153

    move v0, v2

    goto/16 :goto_0

    :cond_153
    const/16 v0, 0x212b

    if-gt p0, v0, :cond_154

    move v0, v1

    goto/16 :goto_0

    :cond_154
    const/16 v0, 0x212e

    if-ne p0, v0, :cond_155

    move v0, v1

    goto/16 :goto_0

    :cond_155
    const/16 v0, 0x2180

    if-ge p0, v0, :cond_156

    move v0, v2

    goto/16 :goto_0

    :cond_156
    const/16 v0, 0x2182

    if-gt p0, v0, :cond_157

    move v0, v1

    goto/16 :goto_0

    :cond_157
    const/16 v0, 0x3007

    if-ne p0, v0, :cond_158

    move v0, v1

    goto/16 :goto_0

    :cond_158
    const/16 v0, 0x3021

    if-ge p0, v0, :cond_159

    move v0, v2

    goto/16 :goto_0

    :cond_159
    const/16 v0, 0x3029

    if-gt p0, v0, :cond_15a

    move v0, v1

    goto/16 :goto_0

    :cond_15a
    const/16 v0, 0x3041

    if-ge p0, v0, :cond_15b

    move v0, v2

    goto/16 :goto_0

    :cond_15b
    const/16 v0, 0x3094

    if-gt p0, v0, :cond_15c

    move v0, v1

    goto/16 :goto_0

    :cond_15c
    const/16 v0, 0x30a1

    if-ge p0, v0, :cond_15d

    move v0, v2

    goto/16 :goto_0

    :cond_15d
    const/16 v0, 0x30fa

    if-gt p0, v0, :cond_15e

    move v0, v1

    goto/16 :goto_0

    :cond_15e
    const/16 v0, 0x3105

    if-ge p0, v0, :cond_15f

    move v0, v2

    goto/16 :goto_0

    :cond_15f
    const/16 v0, 0x312c

    if-gt p0, v0, :cond_160

    move v0, v1

    goto/16 :goto_0

    :cond_160
    const/16 v0, 0x4e00

    if-ge p0, v0, :cond_161

    move v0, v2

    goto/16 :goto_0

    :cond_161
    const v0, 0x9fa5

    if-gt p0, v0, :cond_162

    move v0, v1

    goto/16 :goto_0

    :cond_162
    const v0, 0xac00

    if-ge p0, v0, :cond_163

    move v0, v2

    goto/16 :goto_0

    :cond_163
    const v0, 0xd7a3

    if-gt p0, v0, :cond_164

    move v0, v1

    goto/16 :goto_0

    :cond_164
    move v0, v2

    goto/16 :goto_0
.end method

.method static isXMLNCNameCharacter(C)Z
    .locals 1

    invoke-static {p0}, Lnu/xom/jaxen/saxpath/base/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnu/xom/jaxen/saxpath/base/Verifier;->isXMLDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lnu/xom/jaxen/saxpath/base/Verifier;->isXMLCombiningChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnu/xom/jaxen/saxpath/base/Verifier;->isXMLExtender(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isXMLNCNameStartCharacter(C)Z
    .locals 1

    invoke-static {p0}, Lnu/xom/jaxen/saxpath/base/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
