.class public Lcom/android/internal/telephony/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static operatorReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 21
    const-string v0, "41201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "AWCC"

    .line 1507
    :cond_0
    :goto_0
    return-object p0

    .line 22
    :cond_1
    const-string v0, "41240"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Areeba"

    goto :goto_0

    .line 23
    :cond_2
    const-string v0, "41250"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Etisalat"

    goto :goto_0

    .line 24
    :cond_3
    const-string v0, "41220"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Roshan"

    goto :goto_0

    .line 25
    :cond_4
    const-string v0, "27601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "AMC"

    goto :goto_0

    .line 26
    :cond_5
    const-string v0, "27603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Eagle Mobile"

    goto :goto_0

    .line 27
    :cond_6
    const-string v0, "27604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Plus Communication"

    goto :goto_0

    .line 28
    :cond_7
    const-string v0, "27602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "Vodafone"

    goto :goto_0

    .line 29
    :cond_8
    const-string v0, "60302"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "Djezzy"

    goto :goto_0

    .line 30
    :cond_9
    const-string v0, "60301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "Mobilis"

    goto :goto_0

    .line 31
    :cond_a
    const-string v0, "60303"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "Nedjma"

    goto :goto_0

    .line 32
    :cond_b
    const-string v0, "54411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Bluesky"

    goto :goto_0

    .line 33
    :cond_c
    const-string v0, "21303"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "Mobiland"

    goto/16 :goto_0

    .line 34
    :cond_d
    const-string v0, "63104"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "MOVICEL"

    goto/16 :goto_0

    .line 35
    :cond_e
    const-string v0, "63102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "UNITEL"

    goto/16 :goto_0

    .line 36
    :cond_f
    const-string v0, "365840"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 37
    :cond_10
    const-string v0, "365010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "Weblinks Limited"

    goto/16 :goto_0

    .line 38
    :cond_11
    const-string v0, "344030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "APUA"

    goto/16 :goto_0

    .line 39
    :cond_12
    const-string v0, "344920"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "bmobile"

    goto/16 :goto_0

    .line 40
    :cond_13
    const-string v0, "344930"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 41
    :cond_14
    const-string v0, "722310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 42
    :cond_15
    const-string v0, "722320"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 43
    :cond_16
    const-string v0, "722330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 44
    :cond_17
    const-string v0, "722350"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Hutchinson (PORT HABLE)"

    goto/16 :goto_0

    .line 45
    :cond_18
    const-string v0, "722010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Movistar"

    goto/16 :goto_0

    .line 46
    :cond_19
    const-string v0, "722070"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "Movistar"

    goto/16 :goto_0

    .line 47
    :cond_1a
    const-string v0, "722020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 48
    :cond_1b
    const-string v0, "72234"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "Personal"

    goto/16 :goto_0

    .line 49
    :cond_1c
    const-string v0, "722341"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "Telecom Personal SA"

    goto/16 :goto_0

    .line 50
    :cond_1d
    const-string v0, "72236"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "Telecom Personal SA"

    goto/16 :goto_0

    .line 51
    :cond_1e
    const-string v0, "28301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 52
    :cond_1f
    const-string v0, "28310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 53
    :cond_20
    const-string v0, "28305"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "VivaCell-MTS"

    goto/16 :goto_0

    .line 54
    :cond_21
    const-string v0, "36302"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 55
    :cond_22
    const-string v0, "36320"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "Digicell"

    goto/16 :goto_0

    .line 56
    :cond_23
    const-string v0, "36301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "SETAR"

    goto/16 :goto_0

    .line 57
    :cond_24
    const-string v0, "50506"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p0, "3"

    goto/16 :goto_0

    .line 58
    :cond_25
    const-string v0, "50512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string p0, "3"

    goto/16 :goto_0

    .line 59
    :cond_26
    const-string v0, "50515"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string p0, "3GIS"

    goto/16 :goto_0

    .line 60
    :cond_27
    const-string v0, "50514"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string p0, "AAPT"

    goto/16 :goto_0

    .line 61
    :cond_28
    const-string v0, "50524"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string p0, "Advanced Communications Technologies"

    goto/16 :goto_0

    .line 62
    :cond_29
    const-string v0, "50509"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string p0, "Airnet"

    goto/16 :goto_0

    .line 63
    :cond_2a
    const-string v0, "50538"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p0, "Crazy John\'s"

    goto/16 :goto_0

    .line 64
    :cond_2b
    const-string v0, "50504"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "Department of Defence"

    goto/16 :goto_0

    .line 65
    :cond_2c
    const-string v0, "50588"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p0, "Localstar"

    goto/16 :goto_0

    .line 66
    :cond_2d
    const-string v0, "50510"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p0, "Norfolk Telecom"

    goto/16 :goto_0

    .line 67
    :cond_2e
    const-string v0, "50508"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string p0, "One. Tel"

    goto/16 :goto_0

    .line 68
    :cond_2f
    const-string v0, "50599"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string p0, "One. Tel"

    goto/16 :goto_0

    .line 69
    :cond_30
    const-string v0, "50502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string p0, "OPTUS / Virgin Mobile"

    goto/16 :goto_0

    .line 70
    :cond_31
    const-string v0, "50505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p0, "Ozitel"

    goto/16 :goto_0

    .line 71
    :cond_32
    const-string v0, "50513"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p0, "Railcorp"

    goto/16 :goto_0

    .line 72
    :cond_33
    const-string v0, "50521"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string p0, "SOUL"

    goto/16 :goto_0

    .line 73
    :cond_34
    const-string v0, "50501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string p0, "Telstra"

    goto/16 :goto_0

    .line 74
    :cond_35
    const-string v0, "50511"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string p0, "Telstra"

    goto/16 :goto_0

    .line 75
    :cond_36
    const-string v0, "50571"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "Telstra"

    goto/16 :goto_0

    .line 76
    :cond_37
    const-string v0, "50572"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string p0, "Telstra"

    goto/16 :goto_0

    .line 77
    :cond_38
    const-string v0, "50516"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string p0, "Victorian Rail Track"

    goto/16 :goto_0

    .line 78
    :cond_39
    const-string v0, "50503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 79
    :cond_3a
    const-string v0, "50507"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 80
    :cond_3b
    const-string v0, "50590"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string p0, "YES OPTUS"

    goto/16 :goto_0

    .line 81
    :cond_3c
    const-string v0, "23210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string p0, "3"

    goto/16 :goto_0

    .line 82
    :cond_3d
    const-string v0, "23214"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string p0, "3"

    goto/16 :goto_0

    .line 83
    :cond_3e
    const-string v0, "23201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string p0, "A1"

    goto/16 :goto_0

    .line 84
    :cond_3f
    const-string v0, "23209"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string p0, "A1"

    goto/16 :goto_0

    .line 85
    :cond_40
    const-string v0, "23215"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string p0, "Barablu"

    goto/16 :goto_0

    .line 86
    :cond_41
    const-string v0, "23211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "bob"

    goto/16 :goto_0

    .line 87
    :cond_42
    const-string v0, "23291"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string p0, "GSM-R A"

    goto/16 :goto_0

    .line 88
    :cond_43
    const-string v0, "23205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 89
    :cond_44
    const-string v0, "23203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 90
    :cond_45
    const-string v0, "23207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 91
    :cond_46
    const-string v0, "23212"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string p0, "yesss"

    goto/16 :goto_0

    .line 92
    :cond_47
    const-string v0, "40001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string p0, "Azercell"

    goto/16 :goto_0

    .line 93
    :cond_48
    const-string v0, "40002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p0, "Bakcell"

    goto/16 :goto_0

    .line 94
    :cond_49
    const-string v0, "40003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string p0, "FONEX"

    goto/16 :goto_0

    .line 95
    :cond_4a
    const-string v0, "40004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string p0, "Nar Mobile"

    goto/16 :goto_0

    .line 96
    :cond_4b
    const-string v0, "364390"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string p0, "BaTelCo"

    goto/16 :goto_0

    .line 97
    :cond_4c
    const-string v0, "42601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "Batelco"

    goto/16 :goto_0

    .line 98
    :cond_4d
    const-string v0, "42602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string p0, "MTC-VFBH"

    goto/16 :goto_0

    .line 99
    :cond_4e
    const-string v0, "42604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string p0, "VIVA"

    goto/16 :goto_0

    .line 100
    :cond_4f
    const-string v0, "47002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string p0, "Aktel"

    goto/16 :goto_0

    .line 101
    :cond_50
    const-string v0, "47003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string p0, "Banglalink"

    goto/16 :goto_0

    .line 102
    :cond_51
    const-string v0, "47005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string p0, "Citycell"

    goto/16 :goto_0

    .line 103
    :cond_52
    const-string v0, "47006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string p0, "Citycell"

    goto/16 :goto_0

    .line 104
    :cond_53
    const-string v0, "47001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string p0, "Grameenphone"

    goto/16 :goto_0

    .line 105
    :cond_54
    const-string v0, "47004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string p0, "TeleTalk"

    goto/16 :goto_0

    .line 106
    :cond_55
    const-string v0, "47007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string p0, "Warid"

    goto/16 :goto_0

    .line 107
    :cond_56
    const-string v0, "342600"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string p0, "bmobile"

    goto/16 :goto_0

    .line 108
    :cond_57
    const-string v0, "342750"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 109
    :cond_58
    const-string v0, "342820"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string p0, "Sunbeach Communications"

    goto/16 :goto_0

    .line 110
    :cond_59
    const-string v0, "257501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string p0, "BelCel JV"

    goto/16 :goto_0

    .line 111
    :cond_5a
    const-string v0, "25703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string p0, "DIALLOG"

    goto/16 :goto_0

    .line 112
    :cond_5b
    const-string v0, "25704"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string p0, "life:)"

    goto/16 :goto_0

    .line 113
    :cond_5c
    const-string v0, "25702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string p0, "MTS"

    goto/16 :goto_0

    .line 114
    :cond_5d
    const-string v0, "25701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p0, "Velcom"

    goto/16 :goto_0

    .line 115
    :cond_5e
    const-string v0, "20620"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string p0, "BASE"

    goto/16 :goto_0

    .line 116
    :cond_5f
    const-string v0, "20610"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string p0, "Mobistar"

    goto/16 :goto_0

    .line 117
    :cond_60
    const-string v0, "20601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string p0, "Proximus"

    goto/16 :goto_0

    .line 118
    :cond_61
    const-string v0, "20605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string p0, "Telenet"

    goto/16 :goto_0

    .line 119
    :cond_62
    const-string v0, "70267"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string p0, "Belize Telemedia"

    goto/16 :goto_0

    .line 120
    :cond_63
    const-string v0, "70268"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string p0, "International Telecommunications Ltd."

    goto/16 :goto_0

    .line 121
    :cond_64
    const-string v0, "70299"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string p0, "Smart"

    goto/16 :goto_0

    .line 122
    :cond_65
    const-string v0, "61603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string p0, "Areeba"

    goto/16 :goto_0

    .line 123
    :cond_66
    const-string v0, "61600"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string p0, "BBCOM"

    goto/16 :goto_0

    .line 124
    :cond_67
    const-string v0, "61604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string p0, "BBCOM"

    goto/16 :goto_0

    .line 125
    :cond_68
    const-string v0, "61605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string p0, "Glo"

    goto/16 :goto_0

    .line 126
    :cond_69
    const-string v0, "61601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string p0, "Libercom"

    goto/16 :goto_0

    .line 127
    :cond_6a
    const-string v0, "61602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string p0, "Telecel"

    goto/16 :goto_0

    .line 128
    :cond_6b
    const-string v0, "31038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 129
    :cond_6c
    const-string v0, "35001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const-string p0, "Digicel Bermuda"

    goto/16 :goto_0

    .line 130
    :cond_6d
    const-string v0, "35002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string p0, "Mobility"

    goto/16 :goto_0

    .line 131
    :cond_6e
    const-string v0, "40211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string p0, "B-Mobile"

    goto/16 :goto_0

    .line 132
    :cond_6f
    const-string v0, "40277"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string p0, "TashiCell"

    goto/16 :goto_0

    .line 133
    :cond_70
    const-string v0, "73602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string p0, "Entel"

    goto/16 :goto_0

    .line 134
    :cond_71
    const-string v0, "73601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string p0, "Nuevatel"

    goto/16 :goto_0

    .line 135
    :cond_72
    const-string v0, "73603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string p0, "Tigo"

    goto/16 :goto_0

    .line 136
    :cond_73
    const-string v0, "21890"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string p0, "BH Mobile"

    goto/16 :goto_0

    .line 137
    :cond_74
    const-string v0, "21803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string p0, "ERONET"

    goto/16 :goto_0

    .line 138
    :cond_75
    const-string v0, "21805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string p0, "m:tel"

    goto/16 :goto_0

    .line 139
    :cond_76
    const-string v0, "65204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string p0, "BTC Mobile"

    goto/16 :goto_0

    .line 140
    :cond_77
    const-string v0, "65201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string p0, "Mascom"

    goto/16 :goto_0

    .line 141
    :cond_78
    const-string v0, "65202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 142
    :cond_79
    const-string v0, "72437"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string p0, "aiou"

    goto/16 :goto_0

    .line 143
    :cond_7a
    const-string v0, "72424"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string p0, "Amazonia Celular"

    goto/16 :goto_0

    .line 144
    :cond_7b
    const-string v0, "72416"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    const-string p0, "Brasil Telecom"

    goto/16 :goto_0

    .line 145
    :cond_7c
    const-string v0, "72405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 146
    :cond_7d
    const-string v0, "72432"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string p0, "CTBC Cellular"

    goto/16 :goto_0

    .line 147
    :cond_7e
    const-string v0, "72433"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string p0, "CTBC Cellular"

    goto/16 :goto_0

    .line 148
    :cond_7f
    const-string v0, "72434"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    const-string p0, "CTBC Cellular"

    goto/16 :goto_0

    .line 149
    :cond_80
    const-string v0, "72407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    const-string p0, "CTBC Celular"

    goto/16 :goto_0

    .line 150
    :cond_81
    const-string v0, "72400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 151
    :cond_82
    const-string v0, "72439"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 152
    :cond_83
    const-string v0, "72415"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string p0, "Sercomtel"

    goto/16 :goto_0

    .line 153
    :cond_84
    const-string v0, "72402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-string p0, "TIM"

    goto/16 :goto_0

    .line 154
    :cond_85
    const-string v0, "72403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string p0, "TIM"

    goto/16 :goto_0

    .line 155
    :cond_86
    const-string v0, "72404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string p0, "TIM"

    goto/16 :goto_0

    .line 156
    :cond_87
    const-string v0, "72408"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string p0, "TIM"

    goto/16 :goto_0

    .line 157
    :cond_88
    const-string v0, "72431"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string p0, "TNL PCS"

    goto/16 :goto_0

    .line 158
    :cond_89
    const-string v0, "72406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const-string p0, "Vivo"

    goto/16 :goto_0

    .line 159
    :cond_8a
    const-string v0, "72410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    const-string p0, "Vivo"

    goto/16 :goto_0

    .line 160
    :cond_8b
    const-string v0, "72411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string p0, "Vivo"

    goto/16 :goto_0

    .line 161
    :cond_8c
    const-string v0, "72423"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string p0, "Vivo"

    goto/16 :goto_0

    .line 162
    :cond_8d
    const-string v0, "348170"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 163
    :cond_8e
    const-string v0, "348570"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string p0, "Caribbean Cellular Telephone"

    goto/16 :goto_0

    .line 164
    :cond_8f
    const-string v0, "348770"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 165
    :cond_90
    const-string v0, "52802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string p0, "B-Mobile"

    goto/16 :goto_0

    .line 166
    :cond_91
    const-string v0, "52811"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string p0, "DTSCom"

    goto/16 :goto_0

    .line 167
    :cond_92
    const-string v0, "52801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string p0, "Jabatan Telekom"

    goto/16 :goto_0

    .line 168
    :cond_93
    const-string v0, "28405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string p0, "GLOBUL"

    goto/16 :goto_0

    .line 169
    :cond_94
    const-string v0, "28401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string p0, "M-Tel"

    goto/16 :goto_0

    .line 170
    :cond_95
    const-string v0, "28404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const-string p0, "Undisclosed"

    goto/16 :goto_0

    .line 171
    :cond_96
    const-string v0, "28403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string p0, "Vivatel"

    goto/16 :goto_0

    .line 172
    :cond_97
    const-string v0, "61301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    const-string p0, "Onatel"

    goto/16 :goto_0

    .line 173
    :cond_98
    const-string v0, "61303"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string p0, "Telecel Faso"

    goto/16 :goto_0

    .line 174
    :cond_99
    const-string v0, "61302"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 175
    :cond_9a
    const-string v0, "64202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string p0, "Africell"

    goto/16 :goto_0

    .line 176
    :cond_9b
    const-string v0, "64208"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string p0, "HiTs Telecom"

    goto/16 :goto_0

    .line 177
    :cond_9c
    const-string v0, "64207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string p0, "Smart Mobile"

    goto/16 :goto_0

    .line 178
    :cond_9d
    const-string v0, "64201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string p0, "Spacetel"

    goto/16 :goto_0

    .line 179
    :cond_9e
    const-string v0, "64203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string p0, "Telecel"

    goto/16 :goto_0

    .line 180
    :cond_9f
    const-string v0, "64282"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string p0, "U-COM Burundi"

    goto/16 :goto_0

    .line 181
    :cond_a0
    const-string v0, "45609"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 182
    :cond_a1
    const-string v0, "45618"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string p0, "Camshin / Shinawatra"

    goto/16 :goto_0

    .line 183
    :cond_a2
    const-string v0, "45611"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string p0, "Excell"

    goto/16 :goto_0

    .line 184
    :cond_a3
    const-string v0, "45602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string p0, "hello"

    goto/16 :goto_0

    .line 185
    :cond_a4
    const-string v0, "45608"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string p0, "Metfone"

    goto/16 :goto_0

    .line 186
    :cond_a5
    const-string v0, "45601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string p0, "Mobitel"

    goto/16 :goto_0

    .line 187
    :cond_a6
    const-string v0, "45604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string p0, "qb"

    goto/16 :goto_0

    .line 188
    :cond_a7
    const-string v0, "45603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const-string p0, "S Telecom"

    goto/16 :goto_0

    .line 189
    :cond_a8
    const-string v0, "45606"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const-string p0, "Smart Mobile"

    goto/16 :goto_0

    .line 190
    :cond_a9
    const-string v0, "45605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string p0, "Star-Cell"

    goto/16 :goto_0

    .line 191
    :cond_aa
    const-string v0, "62401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string p0, "MTN Cameroon"

    goto/16 :goto_0

    .line 192
    :cond_ab
    const-string v0, "62402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 193
    :cond_ac
    const-string v0, "302290"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    const-string p0, "Airtel Wireless"

    goto/16 :goto_0

    .line 194
    :cond_ad
    const-string v0, "302652"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string p0, "BC Tel Mobility"

    goto/16 :goto_0

    .line 195
    :cond_ae
    const-string v0, "302610"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    const-string p0, "Bell"

    goto/16 :goto_0

    .line 196
    :cond_af
    const-string v0, "302640"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const-string p0, "Bell"

    goto/16 :goto_0

    .line 197
    :cond_b0
    const-string v0, "302880"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    const-string p0, "Bell / Telus / SaskTel"

    goto/16 :goto_0

    .line 198
    :cond_b1
    const-string v0, "302651"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const-string p0, "Bell Mobility"

    goto/16 :goto_0

    .line 199
    :cond_b2
    const-string v0, "302380"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string p0, "DMTS"

    goto/16 :goto_0

    .line 200
    :cond_b3
    const-string v0, "302370"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string p0, "Fido"

    goto/16 :goto_0

    .line 201
    :cond_b4
    const-string v0, "302350"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string p0, "FIRST"

    goto/16 :goto_0

    .line 202
    :cond_b5
    const-string v0, "302710"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    const-string p0, "Globalstar"

    goto/16 :goto_0

    .line 203
    :cond_b6
    const-string v0, "302620"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string p0, "ICE Wireless"

    goto/16 :goto_0

    .line 204
    :cond_b7
    const-string v0, "302701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string p0, "MB Tel Mobility"

    goto/16 :goto_0

    .line 205
    :cond_b8
    const-string v0, "302320"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string p0, "Mobilicity"

    goto/16 :goto_0

    .line 206
    :cond_b9
    const-string v0, "302702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string p0, "MT&T Mobility"

    goto/16 :goto_0

    .line 207
    :cond_ba
    const-string v0, "302660"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const-string p0, "MTS"

    goto/16 :goto_0

    .line 208
    :cond_bb
    const-string v0, "302655"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string p0, "MTS Mobility"

    goto/16 :goto_0

    .line 209
    :cond_bc
    const-string v0, "302703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string p0, "New Tel Mobility"

    goto/16 :goto_0

    .line 210
    :cond_bd
    const-string v0, "302720"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string p0, "Rogers Wireless"

    goto/16 :goto_0

    .line 211
    :cond_be
    const-string v0, "302654"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const-string p0, "Sask Tel Mobility"

    goto/16 :goto_0

    .line 212
    :cond_bf
    const-string v0, "302680"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string p0, "SaskTel"

    goto/16 :goto_0

    .line 213
    :cond_c0
    const-string v0, "302780"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    const-string p0, "SaskTel"

    goto/16 :goto_0

    .line 214
    :cond_c1
    const-string v0, "302656"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string p0, "Tbay Mobility"

    goto/16 :goto_0

    .line 215
    :cond_c2
    const-string v0, "302220"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    const-string p0, "Telus"

    goto/16 :goto_0

    .line 216
    :cond_c3
    const-string v0, "302221"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string p0, "Telus"

    goto/16 :goto_0

    .line 217
    :cond_c4
    const-string v0, "302657"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string p0, "Telus (Quebec) Mobility"

    goto/16 :goto_0

    .line 218
    :cond_c5
    const-string v0, "302360"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    const-string p0, "Telus Mobility"

    goto/16 :goto_0

    .line 219
    :cond_c6
    const-string v0, "302361"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string p0, "Telus Mobility"

    goto/16 :goto_0

    .line 220
    :cond_c7
    const-string v0, "302653"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    const-string p0, "Telus Mobility"

    goto/16 :goto_0

    .line 221
    :cond_c8
    const-string v0, "302500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    const-string p0, "Videotron"

    goto/16 :goto_0

    .line 222
    :cond_c9
    const-string v0, "302510"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    const-string p0, "Videotron"

    goto/16 :goto_0

    .line 223
    :cond_ca
    const-string v0, "302490"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    const-string p0, "WIND Mobile"

    goto/16 :goto_0

    .line 224
    :cond_cb
    const-string v0, "62501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string p0, "CVMOVEL"

    goto/16 :goto_0

    .line 225
    :cond_cc
    const-string v0, "62502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    const-string p0, "T+"

    goto/16 :goto_0

    .line 226
    :cond_cd
    const-string v0, "346140"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 227
    :cond_ce
    const-string v0, "346050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 228
    :cond_cf
    const-string v0, "62301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string p0, "CTP"

    goto/16 :goto_0

    .line 229
    :cond_d0
    const-string v0, "62304"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string p0, "Nationlink"

    goto/16 :goto_0

    .line 230
    :cond_d1
    const-string v0, "62303"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 231
    :cond_d2
    const-string v0, "62302"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    const-string p0, "TC"

    goto/16 :goto_0

    .line 232
    :cond_d3
    const-string v0, "73003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 233
    :cond_d4
    const-string v0, "73001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    const-string p0, "Entel"

    goto/16 :goto_0

    .line 234
    :cond_d5
    const-string v0, "73010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    const-string p0, "Entel"

    goto/16 :goto_0

    .line 235
    :cond_d6
    const-string v0, "73002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 236
    :cond_d7
    const-string v0, "73004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 237
    :cond_d8
    const-string v0, "73008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    const-string p0, "VTR MOvil"

    goto/16 :goto_0

    .line 238
    :cond_d9
    const-string v0, "73099"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    const-string p0, "Will"

    goto/16 :goto_0

    .line 239
    :cond_da
    const-string v0, "46006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    const-string p0, "(unknown)"

    goto/16 :goto_0

    .line 240
    :cond_db
    const-string v0, "46000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string p0, "China Mobile"

    goto/16 :goto_0

    .line 241
    :cond_dc
    const-string v0, "46002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string p0, "China Mobile"

    goto/16 :goto_0

    .line 242
    :cond_dd
    const-string v0, "46007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    const-string p0, "China Mobile"

    goto/16 :goto_0

    .line 243
    :cond_de
    const-string v0, "46003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    const-string p0, "China Telecom"

    goto/16 :goto_0

    .line 244
    :cond_df
    const-string v0, "46005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    const-string p0, "China Telecom"

    goto/16 :goto_0

    .line 245
    :cond_e0
    const-string v0, "46020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string p0, "China Tietong"

    goto/16 :goto_0

    .line 246
    :cond_e1
    const-string v0, "46001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string p0, "China Unicom"

    goto/16 :goto_0

    .line 247
    :cond_e2
    const-string v0, "732001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    const-string p0, "Colombia Telecomunicaciones S.A. - Telecom"

    goto/16 :goto_0

    .line 248
    :cond_e3
    const-string v0, "732101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string p0, "Comcel"

    goto/16 :goto_0

    .line 249
    :cond_e4
    const-string v0, "732002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    const-string p0, "Edatel"

    goto/16 :goto_0

    .line 250
    :cond_e5
    const-string v0, "732102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 251
    :cond_e6
    const-string v0, "732123"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 252
    :cond_e7
    const-string v0, "732103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    const-string p0, "Tigo"

    goto/16 :goto_0

    .line 253
    :cond_e8
    const-string v0, "732111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const-string p0, "Tigo"

    goto/16 :goto_0

    .line 254
    :cond_e9
    const-string v0, "65401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string p0, "HURI - SNPT"

    goto/16 :goto_0

    .line 255
    :cond_ea
    const-string v0, "54801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    const-string p0, "Telecom Cook"

    goto/16 :goto_0

    .line 256
    :cond_eb
    const-string v0, "71201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string p0, "ICE"

    goto/16 :goto_0

    .line 257
    :cond_ec
    const-string v0, "71202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    const-string p0, "ICE"

    goto/16 :goto_0

    .line 258
    :cond_ed
    const-string v0, "71203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    const-string p0, "ICE"

    goto/16 :goto_0

    .line 259
    :cond_ee
    const-string v0, "71204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 260
    :cond_ef
    const-string v0, "61201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    const-string p0, "Cora de Comstar"

    goto/16 :goto_0

    .line 261
    :cond_f0
    const-string v0, "61204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    const-string p0, "KoZ"

    goto/16 :goto_0

    .line 262
    :cond_f1
    const-string v0, "61202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    const-string p0, "Moov"

    goto/16 :goto_0

    .line 263
    :cond_f2
    const-string v0, "61205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 264
    :cond_f3
    const-string v0, "61203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 265
    :cond_f4
    const-string v0, "61206"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    const-string p0, "ORICEL"

    goto/16 :goto_0

    .line 266
    :cond_f5
    const-string v0, "21901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 267
    :cond_f6
    const-string v0, "21902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    const-string p0, "Tele2"

    goto/16 :goto_0

    .line 268
    :cond_f7
    const-string v0, "21910"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    const-string p0, "VIPnet"

    goto/16 :goto_0

    .line 269
    :cond_f8
    const-string v0, "36801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    const-string p0, "ETECSA"

    goto/16 :goto_0

    .line 270
    :cond_f9
    const-string v0, "28001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    const-string p0, "Cytamobile-Vodafone"

    goto/16 :goto_0

    .line 271
    :cond_fa
    const-string v0, "28010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 272
    :cond_fb
    const-string v0, "62204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const-string p0, "Salam"

    goto/16 :goto_0

    .line 273
    :cond_fc
    const-string v0, "62202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    const-string p0, "TAWALI"

    goto/16 :goto_0

    .line 274
    :cond_fd
    const-string v0, "62203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    const-string p0, "TIGO - Millicom"

    goto/16 :goto_0

    .line 275
    :cond_fe
    const-string v0, "62201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 276
    :cond_ff
    const-string v0, "23002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    const-string p0, "EUROTEL PRAHA"

    goto/16 :goto_0

    .line 277
    :cond_100
    const-string v0, "23003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    const-string p0, "OSKAR"

    goto/16 :goto_0

    .line 278
    :cond_101
    const-string v0, "23006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    const-string p0, "OSNO TELECOMUNICATION, s.r.o."

    goto/16 :goto_0

    .line 279
    :cond_102
    const-string v0, "23098"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    const-string p0, "SeDC s.o."

    goto/16 :goto_0

    .line 280
    :cond_103
    const-string v0, "23001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 281
    :cond_104
    const-string v0, "23005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_105

    const-string p0, "TRAVEL TELEKOMMUNIKATION, s.r.o."

    goto/16 :goto_0

    .line 282
    :cond_105
    const-string v0, "23004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const-string p0, "U:fon"

    goto/16 :goto_0

    .line 283
    :cond_106
    const-string v0, "23099"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    const-string p0, "Vodafone Czech Republic a.s., R&D Centre at FEE, CTU"

    goto/16 :goto_0

    .line 284
    :cond_107
    const-string v0, "63086"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    const-string p0, "CCT"

    goto/16 :goto_0

    .line 285
    :cond_108
    const-string v0, "63004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    const-string p0, "Cellco"

    goto/16 :goto_0

    .line 286
    :cond_109
    const-string v0, "63010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    const-string p0, "Libertis Telecom"

    goto/16 :goto_0

    .line 287
    :cond_10a
    const-string v0, "63089"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    const-string p0, "SAIT Telecom"

    goto/16 :goto_0

    .line 288
    :cond_10b
    const-string v0, "63005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    const-string p0, "Supercell"

    goto/16 :goto_0

    .line 289
    :cond_10c
    const-string v0, "63001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    const-string p0, "Vodacom"

    goto/16 :goto_0

    .line 290
    :cond_10d
    const-string v0, "63002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 291
    :cond_10e
    const-string v0, "23806"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    const-string p0, "3"

    goto/16 :goto_0

    .line 292
    :cond_10f
    const-string v0, "23805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    const-string p0, "ApS KBUS"

    goto/16 :goto_0

    .line 293
    :cond_110
    const-string v0, "23807"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    const-string p0, "Barablu Mobile Ltd."

    goto/16 :goto_0

    .line 294
    :cond_111
    const-string v0, "23809"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    const-string p0, "Dansk Beredskabskommunikation A/S"

    goto/16 :goto_0

    .line 295
    :cond_112
    const-string v0, "23811"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    const-string p0, "Dansk Beredskabskommunikation A/S"

    goto/16 :goto_0

    .line 296
    :cond_113
    const-string v0, "23840"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    const-string p0, "Ericsson Danmark A/S"

    goto/16 :goto_0

    .line 297
    :cond_114
    const-string v0, "23812"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    const-string p0, "Lycamobile Denmark Ltd"

    goto/16 :goto_0

    .line 298
    :cond_115
    const-string v0, "23803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    const-string p0, "MIGway A/S"

    goto/16 :goto_0

    .line 299
    :cond_116
    const-string v0, "23877"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    const-string p0, "Sonofon"

    goto/16 :goto_0

    .line 300
    :cond_117
    const-string v0, "23801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string p0, "TDC"

    goto/16 :goto_0

    .line 301
    :cond_118
    const-string v0, "23810"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    const-string p0, "TDC"

    goto/16 :goto_0

    .line 302
    :cond_119
    const-string v0, "23802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const-string p0, "Telenor"

    goto/16 :goto_0

    .line 303
    :cond_11a
    const-string v0, "23820"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    const-string p0, "Telia"

    goto/16 :goto_0

    .line 304
    :cond_11b
    const-string v0, "23830"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    const-string p0, "Telia"

    goto/16 :goto_0

    .line 305
    :cond_11c
    const-string v0, "63801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    const-string p0, "Evatis"

    goto/16 :goto_0

    .line 306
    :cond_11d
    const-string v0, "366110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 307
    :cond_11e
    const-string v0, "366020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 308
    :cond_11f
    const-string v0, "37002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 309
    :cond_120
    const-string v0, "37001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 310
    :cond_121
    const-string v0, "37003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    const-string p0, "Tricom S.A."

    goto/16 :goto_0

    .line 311
    :cond_122
    const-string v0, "37004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    const-string p0, "ViVa"

    goto/16 :goto_0

    .line 312
    :cond_123
    const-string v0, "51402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    const-string p0, "Timor Telecom"

    goto/16 :goto_0

    .line 313
    :cond_124
    const-string v0, "74002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    const-string p0, "Alegro"

    goto/16 :goto_0

    .line 314
    :cond_125
    const-string v0, "74000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    const-string p0, "Movistar"

    goto/16 :goto_0

    .line 315
    :cond_126
    const-string v0, "74001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    const-string p0, "Porta"

    goto/16 :goto_0

    .line 316
    :cond_127
    const-string v0, "60203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const-string p0, "Etisalat"

    goto/16 :goto_0

    .line 317
    :cond_128
    const-string v0, "60201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    const-string p0, "Mobinil"

    goto/16 :goto_0

    .line 318
    :cond_129
    const-string v0, "60202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 319
    :cond_12a
    const-string v0, "70610"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 320
    :cond_12b
    const-string v0, "70611"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 321
    :cond_12c
    const-string v0, "70601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    const-string p0, "CTE Telecom Personal"

    goto/16 :goto_0

    .line 322
    :cond_12d
    const-string v0, "70602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    const-string p0, "digicel"

    goto/16 :goto_0

    .line 323
    :cond_12e
    const-string v0, "70604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 324
    :cond_12f
    const-string v0, "70603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string p0, "Telemovil EL Salvador"

    goto/16 :goto_0

    .line 325
    :cond_130
    const-string v0, "62703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    const-string p0, "Hits GQ"

    goto/16 :goto_0

    .line 326
    :cond_131
    const-string v0, "62701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    const-string p0, "Orange GQ"

    goto/16 :goto_0

    .line 327
    :cond_132
    const-string v0, "65701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    const-string p0, "Eritel"

    goto/16 :goto_0

    .line 328
    :cond_133
    const-string v0, "24805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    const-string p0, "AS Bravocom Mobiil"

    goto/16 :goto_0

    .line 329
    :cond_134
    const-string v0, "24802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    const-string p0, "Elisa"

    goto/16 :goto_0

    .line 330
    :cond_135
    const-string v0, "24801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    const-string p0, "EMT"

    goto/16 :goto_0

    .line 331
    :cond_136
    const-string v0, "24804"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    const-string p0, "OY Top Connect"

    goto/16 :goto_0

    .line 332
    :cond_137
    const-string v0, "24806"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    const-string p0, "OY ViaTel"

    goto/16 :goto_0

    .line 333
    :cond_138
    const-string v0, "24803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    const-string p0, "Tele 2"

    goto/16 :goto_0

    .line 334
    :cond_139
    const-string v0, "63601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    const-string p0, "ETMTN"

    goto/16 :goto_0

    .line 335
    :cond_13a
    const-string v0, "28801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    const-string p0, "Faroese Telecom"

    goto/16 :goto_0

    .line 336
    :cond_13b
    const-string v0, "28802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 337
    :cond_13c
    const-string v0, "54202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 338
    :cond_13d
    const-string v0, "54201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 339
    :cond_13e
    const-string v0, "24414"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13f

    const-string p0, "AMT"

    goto/16 :goto_0

    .line 340
    :cond_13f
    const-string v0, "24403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    const-string p0, "DNA"

    goto/16 :goto_0

    .line 341
    :cond_140
    const-string v0, "24412"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    const-string p0, "DNA"

    goto/16 :goto_0

    .line 342
    :cond_141
    const-string v0, "24405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    const-string p0, "Elisa"

    goto/16 :goto_0

    .line 343
    :cond_142
    const-string v0, "24407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    const-string p0, "Nokia"

    goto/16 :goto_0

    .line 344
    :cond_143
    const-string v0, "24415"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    const-string p0, "SAMK"

    goto/16 :goto_0

    .line 345
    :cond_144
    const-string v0, "24421"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    const-string p0, "Saunalahti"

    goto/16 :goto_0

    .line 346
    :cond_145
    const-string v0, "24429"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    const-string p0, "Scnl Truphone"

    goto/16 :goto_0

    .line 347
    :cond_146
    const-string v0, "24491"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    const-string p0, "Sonera"

    goto/16 :goto_0

    .line 348
    :cond_147
    const-string v0, "24410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    const-string p0, "TDC Oy"

    goto/16 :goto_0

    .line 349
    :cond_148
    const-string v0, "24408"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    const-string p0, "Unknown"

    goto/16 :goto_0

    .line 350
    :cond_149
    const-string v0, "24411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    const-string p0, "VIRVE"

    goto/16 :goto_0

    .line 351
    :cond_14a
    const-string v0, "20820"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    const-string p0, "Bouygues"

    goto/16 :goto_0

    .line 352
    :cond_14b
    const-string v0, "20821"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    const-string p0, "Bouygues"

    goto/16 :goto_0

    .line 353
    :cond_14c
    const-string v0, "20888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    const-string p0, "Bouygues"

    goto/16 :goto_0

    .line 354
    :cond_14d
    const-string v0, "20801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    const-string p0, "France Telecom Mobile"

    goto/16 :goto_0

    .line 355
    :cond_14e
    const-string v0, "20814"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    const-string p0, "Free Mobile"

    goto/16 :goto_0

    .line 356
    :cond_14f
    const-string v0, "20815"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    const-string p0, "Free Mobile"

    goto/16 :goto_0

    .line 357
    :cond_150
    const-string v0, "20805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_151

    const-string p0, "Globalstar Europe"

    goto/16 :goto_0

    .line 358
    :cond_151
    const-string v0, "20806"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    const-string p0, "Globalstar Europe"

    goto/16 :goto_0

    .line 359
    :cond_152
    const-string v0, "20807"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    const-string p0, "Globalstar Europe"

    goto/16 :goto_0

    .line 360
    :cond_153
    const-string v0, "20800"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 361
    :cond_154
    const-string v0, "20802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 362
    :cond_155
    const-string v0, "20810"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    const-string p0, "SFR"

    goto/16 :goto_0

    .line 363
    :cond_156
    const-string v0, "20811"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    const-string p0, "SFR"

    goto/16 :goto_0

    .line 364
    :cond_157
    const-string v0, "20813"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    const-string p0, "SFR"

    goto/16 :goto_0

    .line 365
    :cond_158
    const-string v0, "20822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    const-string p0, "Transatel Mobile"

    goto/16 :goto_0

    .line 366
    :cond_159
    const-string v0, "54720"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const-string p0, "VINI"

    goto/16 :goto_0

    .line 367
    :cond_15a
    const-string v0, "62804"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15b

    const-string p0, "Azur"

    goto/16 :goto_0

    .line 368
    :cond_15b
    const-string v0, "62801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    const-string p0, "Libertis"

    goto/16 :goto_0

    .line 369
    :cond_15c
    const-string v0, "62802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15d

    const-string p0, "Moov (Telecel) Gabon S.A."

    goto/16 :goto_0

    .line 370
    :cond_15d
    const-string v0, "62803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15e

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 371
    :cond_15e
    const-string v0, "60702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    const-string p0, "Africel"

    goto/16 :goto_0

    .line 372
    :cond_15f
    const-string v0, "60703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    const-string p0, "Comium"

    goto/16 :goto_0

    .line 373
    :cond_160
    const-string v0, "60701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    const-string p0, "Gamcel"

    goto/16 :goto_0

    .line 374
    :cond_161
    const-string v0, "60704"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    const-string p0, "QCell"

    goto/16 :goto_0

    .line 375
    :cond_162
    const-string v0, "28988"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    const-string p0, "A-Mobile"

    goto/16 :goto_0

    .line 376
    :cond_163
    const-string v0, "28967"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    const-string p0, "Aquafon"

    goto/16 :goto_0

    .line 377
    :cond_164
    const-string v0, "28204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 378
    :cond_165
    const-string v0, "28201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    const-string p0, "Geocell"

    goto/16 :goto_0

    .line 379
    :cond_166
    const-string v0, "28203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    const-string p0, "Iberiatel"

    goto/16 :goto_0

    .line 380
    :cond_167
    const-string v0, "28202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    const-string p0, "Magti"

    goto/16 :goto_0

    .line 381
    :cond_168
    const-string v0, "28205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    const-string p0, "Silknet"

    goto/16 :goto_0

    .line 382
    :cond_169
    const-string v0, "26242"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    const-string p0, "27C3"

    goto/16 :goto_0

    .line 383
    :cond_16a
    const-string v0, "26215"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    const-string p0, "Airdata"

    goto/16 :goto_0

    .line 384
    :cond_16b
    const-string v0, "26210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    const-string p0, "Arcor AG & Co"

    goto/16 :goto_0

    .line 385
    :cond_16c
    const-string v0, "26260"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    const-string p0, "DB Telematik"

    goto/16 :goto_0

    .line 386
    :cond_16d
    const-string v0, "262901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    const-string p0, "Debitel"

    goto/16 :goto_0

    .line 387
    :cond_16e
    const-string v0, "26212"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    const-string p0, "Dolphin Telecom"

    goto/16 :goto_0

    .line 388
    :cond_16f
    const-string v0, "26203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    const-string p0, "E-Plus"

    goto/16 :goto_0

    .line 389
    :cond_170
    const-string v0, "26205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    const-string p0, "E-Plus"

    goto/16 :goto_0

    .line 390
    :cond_171
    const-string v0, "26277"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    const-string p0, "E-Plus"

    goto/16 :goto_0

    .line 391
    :cond_172
    const-string v0, "26214"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    const-string p0, "Group 3G UMTS"

    goto/16 :goto_0

    .line 392
    :cond_173
    const-string v0, "26243"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    const-string p0, "LYCA"

    goto/16 :goto_0

    .line 393
    :cond_174
    const-string v0, "26213"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    const-string p0, "Mobilcom Multimedia"

    goto/16 :goto_0

    .line 394
    :cond_175
    const-string v0, "26292"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    const-string p0, "Nash Technologies"

    goto/16 :goto_0

    .line 395
    :cond_176
    const-string v0, "26207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    const-string p0, "O2"

    goto/16 :goto_0

    .line 396
    :cond_177
    const-string v0, "26208"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    const-string p0, "O2"

    goto/16 :goto_0

    .line 397
    :cond_178
    const-string v0, "26211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    const-string p0, "O2"

    goto/16 :goto_0

    .line 398
    :cond_179
    const-string v0, "26276"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    const-string p0, "Siemens AG"

    goto/16 :goto_0

    .line 399
    :cond_17a
    const-string v0, "26201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 400
    :cond_17b
    const-string v0, "26206"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 401
    :cond_17c
    const-string v0, "26216"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    const-string p0, "vistream"

    goto/16 :goto_0

    .line 402
    :cond_17d
    const-string v0, "26202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 403
    :cond_17e
    const-string v0, "26204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 404
    :cond_17f
    const-string v0, "26209"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 405
    :cond_180
    const-string v0, "62006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_181

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 406
    :cond_181
    const-string v0, "62002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_182

    const-string p0, "Ghana Telecom Mobile"

    goto/16 :goto_0

    .line 407
    :cond_182
    const-string v0, "62004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_183

    const-string p0, "Kasapa / Hutchison Telecom"

    goto/16 :goto_0

    .line 408
    :cond_183
    const-string v0, "62001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 409
    :cond_184
    const-string v0, "62003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    const-string p0, "tiGO"

    goto/16 :goto_0

    .line 410
    :cond_185
    const-string v0, "26606"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    const-string p0, "CTS Mobile"

    goto/16 :goto_0

    .line 411
    :cond_186
    const-string v0, "26601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_187

    const-string p0, "GibTel"

    goto/16 :goto_0

    .line 412
    :cond_187
    const-string v0, "20201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    const-string p0, "Cosmote"

    goto/16 :goto_0

    .line 413
    :cond_188
    const-string v0, "20205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 414
    :cond_189
    const-string v0, "20209"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    const-string p0, "Wind"

    goto/16 :goto_0

    .line 415
    :cond_18a
    const-string v0, "20210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    const-string p0, "Wind"

    goto/16 :goto_0

    .line 416
    :cond_18b
    const-string v0, "29001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    const-string p0, "TELE Greenland A/S"

    goto/16 :goto_0

    .line 417
    :cond_18c
    const-string v0, "352110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 418
    :cond_18d
    const-string v0, "352030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 419
    :cond_18e
    const-string v0, "34020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 420
    :cond_18f
    const-string v0, "34008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const-string p0, "MIO GSM"

    goto/16 :goto_0

    .line 421
    :cond_190
    const-string v0, "34001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 422
    :cond_191
    const-string v0, "34002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    const-string p0, "Outremer"

    goto/16 :goto_0

    .line 423
    :cond_192
    const-string v0, "34003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    const-string p0, "Telcell"

    goto/16 :goto_0

    .line 424
    :cond_193
    const-string v0, "310033"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    const-string p0, "Guam Telephone Authority"

    goto/16 :goto_0

    .line 425
    :cond_194
    const-string v0, "310370"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    const-string p0, "Guamcell"

    goto/16 :goto_0

    .line 426
    :cond_195
    const-string v0, "310470"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_196

    const-string p0, "Guamcell"

    goto/16 :goto_0

    .line 427
    :cond_196
    const-string v0, "311250"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_197

    const-string p0, "i CAN_GSM"

    goto/16 :goto_0

    .line 428
    :cond_197
    const-string v0, "310032"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    const-string p0, "IT&E Wireless"

    goto/16 :goto_0

    .line 429
    :cond_198
    const-string v0, "310140"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    const-string p0, "mPulse"

    goto/16 :goto_0

    .line 430
    :cond_199
    const-string v0, "70401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 431
    :cond_19a
    const-string v0, "70402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string p0, "Comcel / Tigo"

    goto/16 :goto_0

    .line 432
    :cond_19b
    const-string v0, "70403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 433
    :cond_19c
    const-string v0, "73801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 434
    :cond_19d
    const-string v0, "73802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    const-string p0, "GT&T Cellink Plus"

    goto/16 :goto_0

    .line 435
    :cond_19e
    const-string v0, "61105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    const-string p0, "Cellcom"

    goto/16 :goto_0

    .line 436
    :cond_19f
    const-string v0, "61102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    const-string p0, "Lagui"

    goto/16 :goto_0

    .line 437
    :cond_1a0
    const-string v0, "61104"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 438
    :cond_1a1
    const-string v0, "61101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    const-string p0, "Spacetel"

    goto/16 :goto_0

    .line 439
    :cond_1a2
    const-string v0, "61103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const-string p0, "Telecel Guinee"

    goto/16 :goto_0

    .line 440
    :cond_1a3
    const-string v0, "63202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    const-string p0, "Areeba"

    goto/16 :goto_0

    .line 441
    :cond_1a4
    const-string v0, "63203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a5

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 442
    :cond_1a5
    const-string v0, "372010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    const-string p0, "Comcel / Voila"

    goto/16 :goto_0

    .line 443
    :cond_1a6
    const-string v0, "37202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 444
    :cond_1a7
    const-string v0, "37203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    const-string p0, "NATCOM"

    goto/16 :goto_0

    .line 445
    :cond_1a8
    const-string v0, "20414"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    const-string p0, "6Gmobile"

    goto/16 :goto_0

    .line 446
    :cond_1a9
    const-string v0, "20423"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    const-string p0, "ASPIDER Solutions Nederland B.V."

    goto/16 :goto_0

    .line 447
    :cond_1aa
    const-string v0, "20427"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    const-string p0, "Breezz Nederland B.V."

    goto/16 :goto_0

    .line 448
    :cond_1ab
    const-string v0, "20425"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    const-string p0, "CapX B.V."

    goto/16 :goto_0

    .line 449
    :cond_1ac
    const-string v0, "20407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    const-string p0, "eleena (MVNE)"

    goto/16 :goto_0

    .line 450
    :cond_1ad
    const-string v0, "20405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    const-string p0, "Elephant Talk Communications Premium Rate Services"

    goto/16 :goto_0

    .line 451
    :cond_1ae
    const-string v0, "20417"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    const-string p0, "Intercity Mobile Communications B.V."

    goto/16 :goto_0

    .line 452
    :cond_1af
    const-string v0, "20408"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    const-string p0, "KPN"

    goto/16 :goto_0

    .line 453
    :cond_1b0
    const-string v0, "20410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    const-string p0, "KPN"

    goto/16 :goto_0

    .line 454
    :cond_1b1
    const-string v0, "20469"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    const-string p0, "KPN Mobile The Netherlands B.V."

    goto/16 :goto_0

    .line 455
    :cond_1b2
    const-string v0, "20409"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    const-string p0, "Lycamobile"

    goto/16 :goto_0

    .line 456
    :cond_1b3
    const-string v0, "20422"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    const-string p0, "Ministerie van Defensie"

    goto/16 :goto_0

    .line 457
    :cond_1b4
    const-string v0, "20419"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    const-string p0, "Mixe Communication Solutions B.V."

    goto/16 :goto_0

    .line 458
    :cond_1b5
    const-string v0, "20406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    const-string p0, "Mundio Mobile (Netherlands) Ltd"

    goto/16 :goto_0

    .line 459
    :cond_1b6
    const-string v0, "20421"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    const-string p0, "NS Railinfrabeheer B.V."

    goto/16 :goto_0

    .line 460
    :cond_1b7
    const-string v0, "20420"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    const-string p0, "Orange Nederland"

    goto/16 :goto_0

    .line 461
    :cond_1b8
    const-string v0, "20424"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    const-string p0, "Private Mobility Nederland B.V."

    goto/16 :goto_0

    .line 462
    :cond_1b9
    const-string v0, "20467"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    const-string p0, "RadioAccess B.V."

    goto/16 :goto_0

    .line 463
    :cond_1ba
    const-string v0, "20426"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    const-string p0, "SpeakUp B.V."

    goto/16 :goto_0

    .line 464
    :cond_1bb
    const-string v0, "20416"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    const-string p0, "T-Mobile / Ben"

    goto/16 :goto_0

    .line 465
    :cond_1bc
    const-string v0, "20402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    const-string p0, "Tele2 Netherlands"

    goto/16 :goto_0

    .line 466
    :cond_1bd
    const-string v0, "20412"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    const-string p0, "Telfort / O2"

    goto/16 :goto_0

    .line 467
    :cond_1be
    const-string v0, "20413"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    const-string p0, "Unica Installatietechniek B.V"

    goto/16 :goto_0

    .line 468
    :cond_1bf
    const-string v0, "20468"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    const-string p0, "Unify Group Holding B.V."

    goto/16 :goto_0

    .line 469
    :cond_1c0
    const-string v0, "20418"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    const-string p0, "UPC Nederland B.V."

    goto/16 :goto_0

    .line 470
    :cond_1c1
    const-string v0, "20401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    const-string p0, "VastMobiel B.V."

    goto/16 :goto_0

    .line 471
    :cond_1c2
    const-string v0, "20404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c3

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 472
    :cond_1c3
    const-string v0, "20403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    const-string p0, "Voiceworks B.V."

    goto/16 :goto_0

    .line 473
    :cond_1c4
    const-string v0, "70802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    const-string p0, "Celtel / Tigo"

    goto/16 :goto_0

    .line 474
    :cond_1c5
    const-string v0, "70801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 475
    :cond_1c6
    const-string v0, "70840"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    const-string p0, "DIGICEL"

    goto/16 :goto_0

    .line 476
    :cond_1c7
    const-string v0, "70830"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    const-string p0, "Hondutel"

    goto/16 :goto_0

    .line 477
    :cond_1c8
    const-string v0, "45403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    const-string p0, "3 (3G)"

    goto/16 :goto_0

    .line 478
    :cond_1c9
    const-string v0, "45405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    const-string p0, "3 CDMA"

    goto/16 :goto_0

    .line 479
    :cond_1ca
    const-string v0, "45404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    const-string p0, "3 Dual (2G)"

    goto/16 :goto_0

    .line 480
    :cond_1cb
    const-string v0, "45412"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    const-string p0, "C Peoples"

    goto/16 :goto_0

    .line 481
    :cond_1cc
    const-string v0, "45409"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    const-string p0, "China Motion Telecom"

    goto/16 :goto_0

    .line 482
    :cond_1cd
    const-string v0, "45407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    const-string p0, "China Unicom"

    goto/16 :goto_0

    .line 483
    :cond_1ce
    const-string v0, "45411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    const-string p0, "China-Hongkong Telecom"

    goto/16 :goto_0

    .line 484
    :cond_1cf
    const-string v0, "45401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    const-string p0, "CITIC Telecom 1616"

    goto/16 :goto_0

    .line 485
    :cond_1d0
    const-string v0, "45400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    const-string p0, "CSL"

    goto/16 :goto_0

    .line 486
    :cond_1d1
    const-string v0, "45402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    const-string p0, "CSL 3G"

    goto/16 :goto_0

    .line 487
    :cond_1d2
    const-string v0, "45418"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    const-string p0, "Hong Kong CSL Limited"

    goto/16 :goto_0

    .line 488
    :cond_1d3
    const-string v0, "45414"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    const-string p0, "Hutchison Telecom"

    goto/16 :goto_0

    .line 489
    :cond_1d4
    const-string v0, "45410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    const-string p0, "New World"

    goto/16 :goto_0

    .line 490
    :cond_1d5
    const-string v0, "45416"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    const-string p0, "PCCW"

    goto/16 :goto_0

    .line 491
    :cond_1d6
    const-string v0, "45419"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    const-string p0, "PCCW"

    goto/16 :goto_0

    .line 492
    :cond_1d7
    const-string v0, "45429"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    const-string p0, "PCCW"

    goto/16 :goto_0

    .line 493
    :cond_1d8
    const-string v0, "45415"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d9

    const-string p0, "SmarTone Mobile Comms"

    goto/16 :goto_0

    .line 494
    :cond_1d9
    const-string v0, "45417"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    const-string p0, "SmarTone Mobile Comms"

    goto/16 :goto_0

    .line 495
    :cond_1da
    const-string v0, "45406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1db

    const-string p0, "Smartone-Vodafone"

    goto/16 :goto_0

    .line 496
    :cond_1db
    const-string v0, "45408"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    const-string p0, "Trident"

    goto/16 :goto_0

    .line 497
    :cond_1dc
    const-string v0, "21601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    const-string p0, "Pannon"

    goto/16 :goto_0

    .line 498
    :cond_1dd
    const-string v0, "21630"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 499
    :cond_1de
    const-string v0, "21670"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1df

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 500
    :cond_1df
    const-string v0, "27407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    const-string p0, "IceCell"

    goto/16 :goto_0

    .line 501
    :cond_1e0
    const-string v0, "27411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    const-string p0, "Nova"

    goto/16 :goto_0

    .line 502
    :cond_1e1
    const-string v0, "27406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    const-string p0, "N\'ll nIu ehf"

    goto/16 :goto_0

    .line 503
    :cond_1e2
    const-string v0, "27408"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    const-string p0, "On-waves"

    goto/16 :goto_0

    .line 504
    :cond_1e3
    const-string v0, "27401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    const-string p0, "Siminn"

    goto/16 :goto_0

    .line 505
    :cond_1e4
    const-string v0, "27412"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    const-string p0, "Tal"

    goto/16 :goto_0

    .line 506
    :cond_1e5
    const-string v0, "27404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    const-string p0, "Viking"

    goto/16 :goto_0

    .line 507
    :cond_1e6
    const-string v0, "27402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 508
    :cond_1e7
    const-string v0, "27403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 509
    :cond_1e8
    const-string v0, "40417"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 510
    :cond_1e9
    const-string v0, "40425"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 511
    :cond_1ea
    const-string v0, "40428"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 512
    :cond_1eb
    const-string v0, "40429"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 513
    :cond_1ec
    const-string v0, "40437"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 514
    :cond_1ed
    const-string v0, "40491"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 515
    :cond_1ee
    const-string v0, "405082"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 516
    :cond_1ef
    const-string v0, "405800"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 517
    :cond_1f0
    const-string v0, "405801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 518
    :cond_1f1
    const-string v0, "405802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 519
    :cond_1f2
    const-string v0, "405803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f3

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 520
    :cond_1f3
    const-string v0, "405804"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 521
    :cond_1f4
    const-string v0, "405805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 522
    :cond_1f5
    const-string v0, "405806"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 523
    :cond_1f6
    const-string v0, "405807"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 524
    :cond_1f7
    const-string v0, "405808"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f8

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 525
    :cond_1f8
    const-string v0, "405809"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 526
    :cond_1f9
    const-string v0, "405810"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 527
    :cond_1fa
    const-string v0, "405811"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 528
    :cond_1fb
    const-string v0, "405812"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 529
    :cond_1fc
    const-string v0, "405813"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    const-string p0, "AIRCEL"

    goto/16 :goto_0

    .line 530
    :cond_1fd
    const-string v0, "40460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    const-string p0, "Aircell Digilink"

    goto/16 :goto_0

    .line 531
    :cond_1fe
    const-string v0, "40415"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    const-string p0, "Aircell Digilink Essar Cellph."

    goto/16 :goto_0

    .line 532
    :cond_1ff
    const-string v0, "40406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 533
    :cond_200
    const-string v0, "40410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 534
    :cond_201
    const-string v0, "40431"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_202

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 535
    :cond_202
    const-string v0, "40440"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_203

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 536
    :cond_203
    const-string v0, "40445"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 537
    :cond_204
    const-string v0, "40449"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_205

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 538
    :cond_205
    const-string v0, "40470"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 539
    :cond_206
    const-string v0, "40494"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 540
    :cond_207
    const-string v0, "40495"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 541
    :cond_208
    const-string v0, "40497"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_209

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 542
    :cond_209
    const-string v0, "40498"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 543
    :cond_20a
    const-string v0, "40551"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 544
    :cond_20b
    const-string v0, "40552"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20c

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 545
    :cond_20c
    const-string v0, "40553"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    const-string p0, "AirTel"

    goto/16 :goto_0

    .line 546
    :cond_20d
    const-string v0, "40554"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20e

    const-string p0, "AirTel"

    goto/16 :goto_0

    .line 547
    :cond_20e
    const-string v0, "40555"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20f

    const-string p0, "AirTel"

    goto/16 :goto_0

    .line 548
    :cond_20f
    const-string v0, "40556"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    const-string p0, "AirTel"

    goto/16 :goto_0

    .line 549
    :cond_210
    const-string v0, "40570"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_211

    const-string p0, "AirTel"

    goto/16 :goto_0

    .line 550
    :cond_211
    const-string v0, "40496"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_212

    const-string p0, "Airtel - Haryana"

    goto/16 :goto_0

    .line 551
    :cond_212
    const-string v0, "40402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_213

    const-string p0, "Airtel - Punjab"

    goto/16 :goto_0

    .line 552
    :cond_213
    const-string v0, "40403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    const-string p0, "Airtel / Bharti Telenet"

    goto/16 :goto_0

    .line 553
    :cond_214
    const-string v0, "40493"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_215

    const-string p0, "Airtel Gujrat"

    goto/16 :goto_0

    .line 554
    :cond_215
    const-string v0, "40490"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_216

    const-string p0, "Airtel Maharashtra & Goa"

    goto/16 :goto_0

    .line 555
    :cond_216
    const-string v0, "40492"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_217

    const-string p0, "Airtel Mumbai"

    goto/16 :goto_0

    .line 556
    :cond_217
    const-string v0, "40443"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_218

    const-string p0, "BPL Mobile Cellular"

    goto/16 :goto_0

    .line 557
    :cond_218
    const-string v0, "40421"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_219

    const-string p0, "BPL Mobile Mumbai"

    goto/16 :goto_0

    .line 558
    :cond_219
    const-string v0, "40427"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    const-string p0, "BPL USWest Cellular / Cellular Comms"

    goto/16 :goto_0

    .line 559
    :cond_21a
    const-string v0, "40434"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 560
    :cond_21b
    const-string v0, "40438"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 561
    :cond_21c
    const-string v0, "40451"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21d

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 562
    :cond_21d
    const-string v0, "40453"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21e

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 563
    :cond_21e
    const-string v0, "40454"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 564
    :cond_21f
    const-string v0, "40455"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 565
    :cond_220
    const-string v0, "40457"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_221

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 566
    :cond_221
    const-string v0, "40458"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_222

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 567
    :cond_222
    const-string v0, "40459"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_223

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 568
    :cond_223
    const-string v0, "40464"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_224

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 569
    :cond_224
    const-string v0, "40471"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_225

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 570
    :cond_225
    const-string v0, "40473"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 571
    :cond_226
    const-string v0, "40474"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_227

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 572
    :cond_227
    const-string v0, "40475"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_228

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 573
    :cond_228
    const-string v0, "40476"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_229

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 574
    :cond_229
    const-string v0, "40477"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22a

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 575
    :cond_22a
    const-string v0, "40480"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22b

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 576
    :cond_22b
    const-string v0, "40481"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22c

    const-string p0, "BSNL"

    goto/16 :goto_0

    .line 577
    :cond_22c
    const-string v0, "40462"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22d

    const-string p0, "BSNL J&K"

    goto/16 :goto_0

    .line 578
    :cond_22d
    const-string v0, "40472"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22e

    const-string p0, "BSNL Kerala"

    goto/16 :goto_0

    .line 579
    :cond_22e
    const-string v0, "40466"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22f

    const-string p0, "BSNL Maharashtra & Goa"

    goto/16 :goto_0

    .line 580
    :cond_22f
    const-string v0, "40478"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    const-string p0, "BTA Cellcom"

    goto/16 :goto_0

    .line 581
    :cond_230
    const-string v0, "40448"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_231

    const-string p0, "Dishnet Wireless"

    goto/16 :goto_0

    .line 582
    :cond_231
    const-string v0, "40482"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_232

    const-string p0, "Escorts"

    goto/16 :goto_0

    .line 583
    :cond_232
    const-string v0, "40487"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_233

    const-string p0, "Escorts Telecom"

    goto/16 :goto_0

    .line 584
    :cond_233
    const-string v0, "40488"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_234

    const-string p0, "Escorts Telecom"

    goto/16 :goto_0

    .line 585
    :cond_234
    const-string v0, "40489"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    const-string p0, "Escorts Telecom"

    goto/16 :goto_0

    .line 586
    :cond_235
    const-string v0, "40411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_236

    const-string p0, "Essar / Sterling Cellular"

    goto/16 :goto_0

    .line 587
    :cond_236
    const-string v0, "405912"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_237

    const-string p0, "Etisalat DB(cheers)"

    goto/16 :goto_0

    .line 588
    :cond_237
    const-string v0, "405913"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    const-string p0, "Etisalat DB(cheers)"

    goto/16 :goto_0

    .line 589
    :cond_238
    const-string v0, "405914"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_239

    const-string p0, "Etisalat DB(cheers)"

    goto/16 :goto_0

    .line 590
    :cond_239
    const-string v0, "405917"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23a

    const-string p0, "Etisalat DB(cheers)"

    goto/16 :goto_0

    .line 591
    :cond_23a
    const-string v0, "40566"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23b

    const-string p0, "Hutch"

    goto/16 :goto_0

    .line 592
    :cond_23b
    const-string v0, "40486"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    const-string p0, "Hutchinson Essar South"

    goto/16 :goto_0

    .line 593
    :cond_23c
    const-string v0, "40413"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23d

    const-string p0, "Hutchison Essar South"

    goto/16 :goto_0

    .line 594
    :cond_23d
    const-string v0, "40484"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    const-string p0, "Hutchison Essar South"

    goto/16 :goto_0

    .line 595
    :cond_23e
    const-string v0, "40419"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23f

    const-string p0, "IDEA"

    goto/16 :goto_0

    .line 596
    :cond_23f
    const-string v0, "405799"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_240

    const-string p0, "IDEA"

    goto/16 :goto_0

    .line 597
    :cond_240
    const-string v0, "405845"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_241

    const-string p0, "IDEA"

    goto/16 :goto_0

    .line 598
    :cond_241
    const-string v0, "405848"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_242

    const-string p0, "IDEA"

    goto/16 :goto_0

    .line 599
    :cond_242
    const-string v0, "405850"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_243

    const-string p0, "IDEA"

    goto/16 :goto_0

    .line 600
    :cond_243
    const-string v0, "40586"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const-string p0, "IDEA"

    goto/16 :goto_0

    .line 601
    :cond_244
    const-string v0, "40412"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_245

    const-string p0, "Idea (Escotel) Haryana"

    goto/16 :goto_0

    .line 602
    :cond_245
    const-string v0, "40456"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_246

    const-string p0, "Idea (Escotel) UP West"

    goto/16 :goto_0

    .line 603
    :cond_246
    const-string v0, "40404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_247

    const-string p0, "IDEA CELLULAR - Delhi"

    goto/16 :goto_0

    .line 604
    :cond_247
    const-string v0, "40424"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_248

    const-string p0, "IDEA Cellular - Gujarat"

    goto/16 :goto_0

    .line 605
    :cond_248
    const-string v0, "40422"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_249

    const-string p0, "IDEA Cellular - Maharashtra"

    goto/16 :goto_0

    .line 606
    :cond_249
    const-string v0, "405855"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    const-string p0, "Loop Mobile"

    goto/16 :goto_0

    .line 607
    :cond_24a
    const-string v0, "405864"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24b

    const-string p0, "Loop Mobile"

    goto/16 :goto_0

    .line 608
    :cond_24b
    const-string v0, "405865"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24c

    const-string p0, "Loop Mobile"

    goto/16 :goto_0

    .line 609
    :cond_24c
    const-string v0, "40468"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    const-string p0, "MTNL - Delhi"

    goto/16 :goto_0

    .line 610
    :cond_24d
    const-string v0, "40469"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    const-string p0, "MTNL - Mumbai"

    goto/16 :goto_0

    .line 611
    :cond_24e
    const-string v0, "40450"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24f

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 612
    :cond_24f
    const-string v0, "40452"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_250

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 613
    :cond_250
    const-string v0, "40467"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 614
    :cond_251
    const-string v0, "40483"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_252

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 615
    :cond_252
    const-string v0, "40485"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_253

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 616
    :cond_253
    const-string v0, "40501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_254

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 617
    :cond_254
    const-string v0, "40503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_255

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 618
    :cond_255
    const-string v0, "40504"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_256

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 619
    :cond_256
    const-string v0, "40509"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 620
    :cond_257
    const-string v0, "40510"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_258

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 621
    :cond_258
    const-string v0, "40513"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_259

    const-string p0, "Reliance"

    goto/16 :goto_0

    .line 622
    :cond_259
    const-string v0, "40409"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25a

    const-string p0, "Reliance Telecom Private"

    goto/16 :goto_0

    .line 623
    :cond_25a
    const-string v0, "40436"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25b

    const-string p0, "Reliance Telecom Private"

    goto/16 :goto_0

    .line 624
    :cond_25b
    const-string v0, "40441"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c

    const-string p0, "RPG MAA"

    goto/16 :goto_0

    .line 625
    :cond_25c
    const-string v0, "405881"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25d

    const-string p0, "S Tel"

    goto/16 :goto_0

    .line 626
    :cond_25d
    const-string v0, "40444"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    const-string p0, "Spice Telecom - Karnataka"

    goto/16 :goto_0

    .line 627
    :cond_25e
    const-string v0, "40414"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25f

    const-string p0, "Spice Telecom - Punjab"

    goto/16 :goto_0

    .line 628
    :cond_25f
    const-string v0, "40442"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_260

    const-string p0, "Srinivas Cellcom / Aircel"

    goto/16 :goto_0

    .line 629
    :cond_260
    const-string v0, "40407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    const-string p0, "TATA Cellular / Idea Cellular"

    goto/16 :goto_0

    .line 630
    :cond_261
    const-string v0, "405025"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 631
    :cond_262
    const-string v0, "405026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_263

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 632
    :cond_263
    const-string v0, "405027"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_264

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 633
    :cond_264
    const-string v0, "405029"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_265

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 634
    :cond_265
    const-string v0, "405030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_266

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 635
    :cond_266
    const-string v0, "405031"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_267

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 636
    :cond_267
    const-string v0, "405032"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 637
    :cond_268
    const-string v0, "405033"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_269

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 638
    :cond_269
    const-string v0, "405034"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26a

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 639
    :cond_26a
    const-string v0, "405035"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26b

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 640
    :cond_26b
    const-string v0, "405036"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26c

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 641
    :cond_26c
    const-string v0, "405037"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26d

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 642
    :cond_26d
    const-string v0, "405038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26e

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 643
    :cond_26e
    const-string v0, "405039"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26f

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 644
    :cond_26f
    const-string v0, "405040"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_270

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 645
    :cond_270
    const-string v0, "405041"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_271

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 646
    :cond_271
    const-string v0, "405042"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_272

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 647
    :cond_272
    const-string v0, "405043"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_273

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 648
    :cond_273
    const-string v0, "405044"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_274

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 649
    :cond_274
    const-string v0, "405045"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_275

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 650
    :cond_275
    const-string v0, "405046"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_276

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 651
    :cond_276
    const-string v0, "405047"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_277

    const-string p0, "TATA Teleservice"

    goto/16 :goto_0

    .line 652
    :cond_277
    const-string v0, "405818"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_278

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 653
    :cond_278
    const-string v0, "405819"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_279

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 654
    :cond_279
    const-string v0, "405820"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27a

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 655
    :cond_27a
    const-string v0, "405821"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27b

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 656
    :cond_27b
    const-string v0, "405822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27c

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 657
    :cond_27c
    const-string v0, "405844"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27d

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 658
    :cond_27d
    const-string v0, "405875"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27e

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 659
    :cond_27e
    const-string v0, "405880"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27f

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 660
    :cond_27f
    const-string v0, "405927"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_280

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 661
    :cond_280
    const-string v0, "405929"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_281

    const-string p0, "Uninor"

    goto/16 :goto_0

    .line 662
    :cond_281
    const-string v0, "405824"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_282

    const-string p0, "Videocon Datacom"

    goto/16 :goto_0

    .line 663
    :cond_282
    const-string v0, "405827"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_283

    const-string p0, "Videocon Datacom"

    goto/16 :goto_0

    .line 664
    :cond_283
    const-string v0, "405834"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_284

    const-string p0, "Videocon Datacom"

    goto/16 :goto_0

    .line 665
    :cond_284
    const-string v0, "40420"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_285

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 666
    :cond_285
    const-string v0, "40446"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_286

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 667
    :cond_286
    const-string v0, "40405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_287

    const-string p0, "Vodafone - Gujarat"

    goto/16 :goto_0

    .line 668
    :cond_287
    const-string v0, "40401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_288

    const-string p0, "Vodafone - Haryana"

    goto/16 :goto_0

    .line 669
    :cond_288
    const-string v0, "40430"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_289

    const-string p0, "Vodafone - Kolkata"

    goto/16 :goto_0

    .line 670
    :cond_289
    const-string v0, "405750"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28a

    const-string p0, "Vodafone IN"

    goto/16 :goto_0

    .line 671
    :cond_28a
    const-string v0, "405751"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28b

    const-string p0, "Vodafone IN"

    goto/16 :goto_0

    .line 672
    :cond_28b
    const-string v0, "405752"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28c

    const-string p0, "Vodafone IN"

    goto/16 :goto_0

    .line 673
    :cond_28c
    const-string v0, "405753"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28d

    const-string p0, "Vodafone IN"

    goto/16 :goto_0

    .line 674
    :cond_28d
    const-string v0, "405754"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28e

    const-string p0, "Vodafone IN"

    goto/16 :goto_0

    .line 675
    :cond_28e
    const-string v0, "405755"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28f

    const-string p0, "Vodafone IN"

    goto/16 :goto_0

    .line 676
    :cond_28f
    const-string v0, "405756"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_290

    const-string p0, "Vodafone IN"

    goto/16 :goto_0

    .line 677
    :cond_290
    const-string v0, "51089"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    const-string p0, "3"

    goto/16 :goto_0

    .line 678
    :cond_291
    const-string v0, "51008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_292

    const-string p0, "AXIS"

    goto/16 :goto_0

    .line 679
    :cond_292
    const-string v0, "51027"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_293

    const-string p0, "Ceria"

    goto/16 :goto_0

    .line 680
    :cond_293
    const-string v0, "51099"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_294

    const-string p0, "Esia"

    goto/16 :goto_0

    .line 681
    :cond_294
    const-string v0, "51028"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_295

    const-string p0, "Fren/Hepi"

    goto/16 :goto_0

    .line 682
    :cond_295
    const-string v0, "51021"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_296

    const-string p0, "IM3"

    goto/16 :goto_0

    .line 683
    :cond_296
    const-string v0, "51001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_297

    const-string p0, "INDOSAT"

    goto/16 :goto_0

    .line 684
    :cond_297
    const-string v0, "51000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_298

    const-string p0, "PSN"

    goto/16 :goto_0

    .line 685
    :cond_298
    const-string v0, "51009"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_299

    const-string p0, "SMART"

    goto/16 :goto_0

    .line 686
    :cond_299
    const-string v0, "51003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29a

    const-string p0, "StarOne"

    goto/16 :goto_0

    .line 687
    :cond_29a
    const-string v0, "51007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    const-string p0, "TelkomFlexi"

    goto/16 :goto_0

    .line 688
    :cond_29b
    const-string v0, "51020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29c

    const-string p0, "TELKOMMobile"

    goto/16 :goto_0

    .line 689
    :cond_29c
    const-string v0, "51010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    const-string p0, "Telkomsel"

    goto/16 :goto_0

    .line 690
    :cond_29d
    const-string v0, "51011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29e

    const-string p0, "XL"

    goto/16 :goto_0

    .line 691
    :cond_29e
    const-string v0, "43235"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29f

    const-string p0, "Irancell"

    goto/16 :goto_0

    .line 692
    :cond_29f
    const-string v0, "43293"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    const-string p0, "Iraphone"

    goto/16 :goto_0

    .line 693
    :cond_2a0
    const-string v0, "43211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a1

    const-string p0, "MCI"

    goto/16 :goto_0

    .line 694
    :cond_2a1
    const-string v0, "43219"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a2

    const-string p0, "MTCE"

    goto/16 :goto_0

    .line 695
    :cond_2a2
    const-string v0, "43232"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a3

    const-string p0, "Taliya"

    goto/16 :goto_0

    .line 696
    :cond_2a3
    const-string v0, "43270"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a4

    const-string p0, "TCI"

    goto/16 :goto_0

    .line 697
    :cond_2a4
    const-string v0, "43214"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    const-string p0, "TKC"

    goto/16 :goto_0

    .line 698
    :cond_2a5
    const-string v0, "41805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a6

    const-string p0, "Asia Cell"

    goto/16 :goto_0

    .line 699
    :cond_2a6
    const-string v0, "41850"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a7

    const-string p0, "Asia Cell"

    goto/16 :goto_0

    .line 700
    :cond_2a7
    const-string v0, "41840"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    const-string p0, "Korek"

    goto/16 :goto_0

    .line 701
    :cond_2a8
    const-string v0, "41845"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    const-string p0, "Mobitel"

    goto/16 :goto_0

    .line 702
    :cond_2a9
    const-string v0, "41892"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2aa

    const-string p0, "Omnnea"

    goto/16 :goto_0

    .line 703
    :cond_2aa
    const-string v0, "41808"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    const-string p0, "SanaTel"

    goto/16 :goto_0

    .line 704
    :cond_2ab
    const-string v0, "41820"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    const-string p0, "Zain IQ"

    goto/16 :goto_0

    .line 705
    :cond_2ac
    const-string v0, "41830"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    const-string p0, "Zain IQ"

    goto/16 :goto_0

    .line 706
    :cond_2ad
    const-string v0, "27205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ae

    const-string p0, "3"

    goto/16 :goto_0

    .line 707
    :cond_2ae
    const-string v0, "27204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2af

    const-string p0, "Access Telecom"

    goto/16 :goto_0

    .line 708
    :cond_2af
    const-string v0, "27209"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    const-string p0, "Clever Communications"

    goto/16 :goto_0

    .line 709
    :cond_2b0
    const-string v0, "27200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b1

    const-string p0, "E-Mobile"

    goto/16 :goto_0

    .line 710
    :cond_2b1
    const-string v0, "27207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b2

    const-string p0, "Eircom"

    goto/16 :goto_0

    .line 711
    :cond_2b2
    const-string v0, "27211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b3

    const-string p0, "Liffey Telecom"

    goto/16 :goto_0

    .line 712
    :cond_2b3
    const-string v0, "27203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b4

    const-string p0, "Meteor"

    goto/16 :goto_0

    .line 713
    :cond_2b4
    const-string v0, "27202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b5

    const-string p0, "O2"

    goto/16 :goto_0

    .line 714
    :cond_2b5
    const-string v0, "272020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b6

    const-string p0, "Tesco Mobile"

    goto/16 :goto_0

    .line 715
    :cond_2b6
    const-string v0, "27201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b7

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 716
    :cond_2b7
    const-string v0, "42502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    const-string p0, "Cellcom"

    goto/16 :goto_0

    .line 717
    :cond_2b8
    const-string v0, "42577"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b9

    const-string p0, "Mirs"

    goto/16 :goto_0

    .line 718
    :cond_2b9
    const-string v0, "42501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 719
    :cond_2ba
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    const-string p0, "Partner"

    goto/16 :goto_0

    .line 720
    :cond_2bb
    const-string v0, "42503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    const-string p0, "Pelephone"

    goto/16 :goto_0

    .line 721
    :cond_2bc
    const-string v0, "22299"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bd

    const-string p0, "3 Italia"

    goto/16 :goto_0

    .line 722
    :cond_2bd
    const-string v0, "22298"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2be

    const-string p0, "Blu"

    goto/16 :goto_0

    .line 723
    :cond_2be
    const-string v0, "22202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bf

    const-string p0, "Elsacom"

    goto/16 :goto_0

    .line 724
    :cond_2bf
    const-string v0, "22277"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c0

    const-string p0, "IPSE 2000"

    goto/16 :goto_0

    .line 725
    :cond_2c0
    const-string v0, "22207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c1

    const-string p0, "Noverca"

    goto/16 :goto_0

    .line 726
    :cond_2c1
    const-string v0, "22230"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c2

    const-string p0, "RFI"

    goto/16 :goto_0

    .line 727
    :cond_2c2
    const-string v0, "22201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c3

    const-string p0, "TIM"

    goto/16 :goto_0

    .line 728
    :cond_2c3
    const-string v0, "22210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c4

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 729
    :cond_2c4
    const-string v0, "22288"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c5

    const-string p0, "Wind"

    goto/16 :goto_0

    .line 730
    :cond_2c5
    const-string v0, "338020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 731
    :cond_2c6
    const-string v0, "338180"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 732
    :cond_2c7
    const-string v0, "338070"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c8

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 733
    :cond_2c8
    const-string v0, "338050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c9

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 734
    :cond_2c9
    const-string v0, "44001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ca

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 735
    :cond_2ca
    const-string v0, "44002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cb

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 736
    :cond_2cb
    const-string v0, "44003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 737
    :cond_2cc
    const-string v0, "44009"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 738
    :cond_2cd
    const-string v0, "44010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ce

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 739
    :cond_2ce
    const-string v0, "44011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 740
    :cond_2cf
    const-string v0, "44012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d0

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 741
    :cond_2d0
    const-string v0, "44013"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d1

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 742
    :cond_2d1
    const-string v0, "44014"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d2

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 743
    :cond_2d2
    const-string v0, "44015"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d3

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 744
    :cond_2d3
    const-string v0, "44016"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d4

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 745
    :cond_2d4
    const-string v0, "44017"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 746
    :cond_2d5
    const-string v0, "44018"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 747
    :cond_2d6
    const-string v0, "44019"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d7

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 748
    :cond_2d7
    const-string v0, "44021"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 749
    :cond_2d8
    const-string v0, "44022"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 750
    :cond_2d9
    const-string v0, "44023"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2da

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 751
    :cond_2da
    const-string v0, "44024"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2db

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 752
    :cond_2db
    const-string v0, "44025"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 753
    :cond_2dc
    const-string v0, "44026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dd

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 754
    :cond_2dd
    const-string v0, "44027"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2de

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 755
    :cond_2de
    const-string v0, "44028"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2df

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 756
    :cond_2df
    const-string v0, "44029"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 757
    :cond_2e0
    const-string v0, "44030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e1

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 758
    :cond_2e1
    const-string v0, "44031"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e2

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 759
    :cond_2e2
    const-string v0, "44032"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 760
    :cond_2e3
    const-string v0, "44033"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e4

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 761
    :cond_2e4
    const-string v0, "44034"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 762
    :cond_2e5
    const-string v0, "44035"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e6

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 763
    :cond_2e6
    const-string v0, "44036"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 764
    :cond_2e7
    const-string v0, "44037"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e8

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 765
    :cond_2e8
    const-string v0, "44038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e9

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 766
    :cond_2e9
    const-string v0, "44039"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ea

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 767
    :cond_2ea
    const-string v0, "44049"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 768
    :cond_2eb
    const-string v0, "44058"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ec

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 769
    :cond_2ec
    const-string v0, "44060"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ed

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 770
    :cond_2ed
    const-string v0, "44061"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ee

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 771
    :cond_2ee
    const-string v0, "44062"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ef

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 772
    :cond_2ef
    const-string v0, "44063"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f0

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 773
    :cond_2f0
    const-string v0, "44064"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f1

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 774
    :cond_2f1
    const-string v0, "44065"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 775
    :cond_2f2
    const-string v0, "44066"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f3

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 776
    :cond_2f3
    const-string v0, "44067"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f4

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 777
    :cond_2f4
    const-string v0, "44068"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f5

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 778
    :cond_2f5
    const-string v0, "44069"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f6

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 779
    :cond_2f6
    const-string v0, "44087"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f7

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 780
    :cond_2f7
    const-string v0, "44099"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f8

    const-string p0, "DoCoMo"

    goto/16 :goto_0

    .line 781
    :cond_2f8
    const-string v0, "44000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f9

    const-string p0, "eMobile"

    goto/16 :goto_0

    .line 782
    :cond_2f9
    const-string v0, "44007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fa

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 783
    :cond_2fa
    const-string v0, "44008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fb

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 784
    :cond_2fb
    const-string v0, "44050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fc

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 785
    :cond_2fc
    const-string v0, "44051"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fd

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 786
    :cond_2fd
    const-string v0, "44052"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fe

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 787
    :cond_2fe
    const-string v0, "44053"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ff

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 788
    :cond_2ff
    const-string v0, "44054"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_300

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 789
    :cond_300
    const-string v0, "44055"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_301

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 790
    :cond_301
    const-string v0, "44056"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_302

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 791
    :cond_302
    const-string v0, "44070"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_303

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 792
    :cond_303
    const-string v0, "44071"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_304

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 793
    :cond_304
    const-string v0, "44072"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_305

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 794
    :cond_305
    const-string v0, "44073"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_306

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 795
    :cond_306
    const-string v0, "44074"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_307

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 796
    :cond_307
    const-string v0, "44075"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_308

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 797
    :cond_308
    const-string v0, "44076"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_309

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 798
    :cond_309
    const-string v0, "44077"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 799
    :cond_30a
    const-string v0, "44079"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30b

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 800
    :cond_30b
    const-string v0, "44088"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30c

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 801
    :cond_30c
    const-string v0, "44089"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30d

    const-string p0, "KDDI"

    goto/16 :goto_0

    .line 802
    :cond_30d
    const-string v0, "44078"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30e

    const-string p0, "Okinawa Cellular Telephone"

    goto/16 :goto_0

    .line 803
    :cond_30e
    const-string v0, "44020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30f

    const-string p0, "SoftBank"

    goto/16 :goto_0

    .line 804
    :cond_30f
    const-string v0, "44080"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_310

    const-string p0, "TU-KA"

    goto/16 :goto_0

    .line 805
    :cond_310
    const-string v0, "44081"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_311

    const-string p0, "TU-KA"

    goto/16 :goto_0

    .line 806
    :cond_311
    const-string v0, "44082"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_312

    const-string p0, "TU-KA"

    goto/16 :goto_0

    .line 807
    :cond_312
    const-string v0, "44083"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_313

    const-string p0, "TU-KA"

    goto/16 :goto_0

    .line 808
    :cond_313
    const-string v0, "44084"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_314

    const-string p0, "TU-KA"

    goto/16 :goto_0

    .line 809
    :cond_314
    const-string v0, "44085"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_315

    const-string p0, "TU-KA"

    goto/16 :goto_0

    .line 810
    :cond_315
    const-string v0, "44086"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_316

    const-string p0, "TU-KA"

    goto/16 :goto_0

    .line 811
    :cond_316
    const-string v0, "44004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_317

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 812
    :cond_317
    const-string v0, "44006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_318

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 813
    :cond_318
    const-string v0, "44040"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_319

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 814
    :cond_319
    const-string v0, "44041"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31a

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 815
    :cond_31a
    const-string v0, "44042"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31b

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 816
    :cond_31b
    const-string v0, "44043"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31c

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 817
    :cond_31c
    const-string v0, "44044"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31d

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 818
    :cond_31d
    const-string v0, "44045"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31e

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 819
    :cond_31e
    const-string v0, "44046"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31f

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 820
    :cond_31f
    const-string v0, "44047"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_320

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 821
    :cond_320
    const-string v0, "44048"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_321

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 822
    :cond_321
    const-string v0, "44090"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_322

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 823
    :cond_322
    const-string v0, "44092"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_323

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 824
    :cond_323
    const-string v0, "44093"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_324

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 825
    :cond_324
    const-string v0, "44094"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_325

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 826
    :cond_325
    const-string v0, "44095"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_326

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 827
    :cond_326
    const-string v0, "44096"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_327

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 828
    :cond_327
    const-string v0, "44097"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_328

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 829
    :cond_328
    const-string v0, "44098"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_329

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 830
    :cond_329
    const-string v0, "41677"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32a

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 831
    :cond_32a
    const-string v0, "41603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32b

    const-string p0, "Umniah"

    goto/16 :goto_0

    .line 832
    :cond_32b
    const-string v0, "41602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32c

    const-string p0, "XPress Telecom"

    goto/16 :goto_0

    .line 833
    :cond_32c
    const-string v0, "41601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32d

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 834
    :cond_32d
    const-string v0, "40101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32e

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 835
    :cond_32e
    const-string v0, "40107"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32f

    const-string p0, "Dalacom"

    goto/16 :goto_0

    .line 836
    :cond_32f
    const-string v0, "40102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_330

    const-string p0, "K\'Cell"

    goto/16 :goto_0

    .line 837
    :cond_330
    const-string v0, "40108"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_331

    const-string p0, "Kazakhtelecom"

    goto/16 :goto_0

    .line 838
    :cond_331
    const-string v0, "40177"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_332

    const-string p0, "Mobile Telecom Service"

    goto/16 :goto_0

    .line 839
    :cond_332
    const-string v0, "63907"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_333

    const-string p0, "Orange Kenya"

    goto/16 :goto_0

    .line 840
    :cond_333
    const-string v0, "63902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_334

    const-string p0, "Safaricom"

    goto/16 :goto_0

    .line 841
    :cond_334
    const-string v0, "63905"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_335

    const-string p0, "yu"

    goto/16 :goto_0

    .line 842
    :cond_335
    const-string v0, "63903"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_336

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 843
    :cond_336
    const-string v0, "54509"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_337

    const-string p0, "Kiribati Frigate"

    goto/16 :goto_0

    .line 844
    :cond_337
    const-string v0, "41904"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_338

    const-string p0, "Viva"

    goto/16 :goto_0

    .line 845
    :cond_338
    const-string v0, "41903"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_339

    const-string p0, "Wataniya"

    goto/16 :goto_0

    .line 846
    :cond_339
    const-string v0, "41902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33a

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 847
    :cond_33a
    const-string v0, "43701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33b

    const-string p0, "Bitel"

    goto/16 :goto_0

    .line 848
    :cond_33b
    const-string v0, "43703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33c

    const-string p0, "Fonex"

    goto/16 :goto_0

    .line 849
    :cond_33c
    const-string v0, "43705"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33d

    const-string p0, "MegaCom"

    goto/16 :goto_0

    .line 850
    :cond_33d
    const-string v0, "43709"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33e

    const-string p0, "O!"

    goto/16 :goto_0

    .line 851
    :cond_33e
    const-string v0, "45702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33f

    const-string p0, "ETL"

    goto/16 :goto_0

    .line 852
    :cond_33f
    const-string v0, "45701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_340

    const-string p0, "LaoTel"

    goto/16 :goto_0

    .line 853
    :cond_340
    const-string v0, "45703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_341

    const-string p0, "LAT"

    goto/16 :goto_0

    .line 854
    :cond_341
    const-string v0, "45708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    const-string p0, "Tigo"

    goto/16 :goto_0

    .line 855
    :cond_342
    const-string v0, "24705"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_343

    const-string p0, "Bite"

    goto/16 :goto_0

    .line 856
    :cond_343
    const-string v0, "24709"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_344

    const-string p0, "Camel Mobile"

    goto/16 :goto_0

    .line 857
    :cond_344
    const-string v0, "24708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_345

    const-string p0, "IZZI"

    goto/16 :goto_0

    .line 858
    :cond_345
    const-string v0, "24701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    const-string p0, "LMT"

    goto/16 :goto_0

    .line 859
    :cond_346
    const-string v0, "24707"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_347

    const-string p0, "MTS"

    goto/16 :goto_0

    .line 860
    :cond_347
    const-string v0, "24706"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_348

    const-string p0, "Rigatta"

    goto/16 :goto_0

    .line 861
    :cond_348
    const-string v0, "24702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_349

    const-string p0, "Tele2"

    goto/16 :goto_0

    .line 862
    :cond_349
    const-string v0, "24703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34a

    const-string p0, "TRIATEL"

    goto/16 :goto_0

    .line 863
    :cond_34a
    const-string v0, "41501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    const-string p0, "Alfa"

    goto/16 :goto_0

    .line 864
    :cond_34b
    const-string v0, "41503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34c

    const-string p0, "MTC-Touch"

    goto/16 :goto_0

    .line 865
    :cond_34c
    const-string v0, "41505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34d

    const-string p0, "Ogero Mobile"

    goto/16 :goto_0

    .line 866
    :cond_34d
    const-string v0, "65102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34e

    const-string p0, "Econet Ezin-cel"

    goto/16 :goto_0

    .line 867
    :cond_34e
    const-string v0, "65101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34f

    const-string p0, "Vodacom"

    goto/16 :goto_0

    .line 868
    :cond_34f
    const-string v0, "60602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_350

    const-string p0, "Al-Jeel Phone"

    goto/16 :goto_0

    .line 869
    :cond_350
    const-string v0, "60606"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_351

    const-string p0, "Hatef Libya"

    goto/16 :goto_0

    .line 870
    :cond_351
    const-string v0, "60603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_352

    const-string p0, "Libya Phone"

    goto/16 :goto_0

    .line 871
    :cond_352
    const-string v0, "60600"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_353

    const-string p0, "Libyana"

    goto/16 :goto_0

    .line 872
    :cond_353
    const-string v0, "60601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_354

    const-string p0, "Madar"

    goto/16 :goto_0

    .line 873
    :cond_354
    const-string v0, "29504"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_355

    const-string p0, "Cubic Telecom"

    goto/16 :goto_0

    .line 874
    :cond_355
    const-string v0, "29505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_356

    const-string p0, "FL1"

    goto/16 :goto_0

    .line 875
    :cond_356
    const-string v0, "29502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_357

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 876
    :cond_357
    const-string v0, "29501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_358

    const-string p0, "Swisscom"

    goto/16 :goto_0

    .line 877
    :cond_358
    const-string v0, "29577"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_359

    const-string p0, "Tele 2"

    goto/16 :goto_0

    .line 878
    :cond_359
    const-string v0, "24602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35a

    const-string p0, "BITE"

    goto/16 :goto_0

    .line 879
    :cond_35a
    const-string v0, "24605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35b

    const-string p0, "LitRail"

    goto/16 :goto_0

    .line 880
    :cond_35b
    const-string v0, "24606"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35c

    const-string p0, "Mediafon"

    goto/16 :goto_0

    .line 881
    :cond_35c
    const-string v0, "24601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35d

    const-string p0, "Omnitel"

    goto/16 :goto_0

    .line 882
    :cond_35d
    const-string v0, "24603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35e

    const-string p0, "Tele 2"

    goto/16 :goto_0

    .line 883
    :cond_35e
    const-string v0, "61807"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35f

    const-string p0, "Cellcom"

    goto/16 :goto_0

    .line 884
    :cond_35f
    const-string v0, "61804"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_360

    const-string p0, "Comium Liberi"

    goto/16 :goto_0

    .line 885
    :cond_360
    const-string v0, "61802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_361

    const-string p0, "Libercell"

    goto/16 :goto_0

    .line 886
    :cond_361
    const-string v0, "61820"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_362

    const-string p0, "LIBTELCO"

    goto/16 :goto_0

    .line 887
    :cond_362
    const-string v0, "61801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_363

    const-string p0, "Lonestar Cell"

    goto/16 :goto_0

    .line 888
    :cond_363
    const-string v0, "27001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_364

    const-string p0, "LuxGSM"

    goto/16 :goto_0

    .line 889
    :cond_364
    const-string v0, "27077"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_365

    const-string p0, "Tango"

    goto/16 :goto_0

    .line 890
    :cond_365
    const-string v0, "27099"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_366

    const-string p0, "Voxmobile"

    goto/16 :goto_0

    .line 891
    :cond_366
    const-string v0, "45503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_367

    const-string p0, "3"

    goto/16 :goto_0

    .line 892
    :cond_367
    const-string v0, "45505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_368

    const-string p0, "3"

    goto/16 :goto_0

    .line 893
    :cond_368
    const-string v0, "45502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_369

    const-string p0, "China Telecom"

    goto/16 :goto_0

    .line 894
    :cond_369
    const-string v0, "45501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36a

    const-string p0, "CTM"

    goto/16 :goto_0

    .line 895
    :cond_36a
    const-string v0, "45504"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36b

    const-string p0, "CTM"

    goto/16 :goto_0

    .line 896
    :cond_36b
    const-string v0, "45500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36c

    const-string p0, "SmarTone"

    goto/16 :goto_0

    .line 897
    :cond_36c
    const-string v0, "64602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36d

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 898
    :cond_36d
    const-string v0, "64603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36e

    const-string p0, "Sacel"

    goto/16 :goto_0

    .line 899
    :cond_36e
    const-string v0, "64604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36f

    const-string p0, "Telma"

    goto/16 :goto_0

    .line 900
    :cond_36f
    const-string v0, "64601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_370

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 901
    :cond_370
    const-string v0, "65001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_371

    const-string p0, "TNM"

    goto/16 :goto_0

    .line 902
    :cond_371
    const-string v0, "65010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_372

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 903
    :cond_372
    const-string v0, "50201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_373

    const-string p0, "ATUR 450"

    goto/16 :goto_0

    .line 904
    :cond_373
    const-string v0, "502151"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_374

    const-string p0, "Baraka Telecom Sdn Bhd (MVNE)"

    goto/16 :goto_0

    .line 905
    :cond_374
    const-string v0, "50213"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_375

    const-string p0, "Celcom"

    goto/16 :goto_0

    .line 906
    :cond_375
    const-string v0, "50219"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_376

    const-string p0, "Celcom"

    goto/16 :goto_0

    .line 907
    :cond_376
    const-string v0, "50216"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_377

    const-string p0, "DiGi"

    goto/16 :goto_0

    .line 908
    :cond_377
    const-string v0, "50210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_378

    const-string p0, "DiGi Telecommunications"

    goto/16 :goto_0

    .line 909
    :cond_378
    const-string v0, "50220"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_379

    const-string p0, "Electcoms Wireless Sdn Bhd"

    goto/16 :goto_0

    .line 910
    :cond_379
    const-string v0, "50212"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37a

    const-string p0, "Maxis"

    goto/16 :goto_0

    .line 911
    :cond_37a
    const-string v0, "50217"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37b

    const-string p0, "Maxis"

    goto/16 :goto_0

    .line 912
    :cond_37b
    const-string v0, "50214"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37c

    const-string p0, "Telekom Malaysia Berhad for PSTN SMS"

    goto/16 :goto_0

    .line 913
    :cond_37c
    const-string v0, "50211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37d

    const-string p0, "TM Homeline"

    goto/16 :goto_0

    .line 914
    :cond_37d
    const-string v0, "502150"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37e

    const-string p0, "Tune Talk Sdn Bhd"

    goto/16 :goto_0

    .line 915
    :cond_37e
    const-string v0, "50218"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37f

    const-string p0, "U Mobile"

    goto/16 :goto_0

    .line 916
    :cond_37f
    const-string v0, "502152"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_380

    const-string p0, "Yes"

    goto/16 :goto_0

    .line 917
    :cond_380
    const-string v0, "47201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_381

    const-string p0, "Dhiraagu"

    goto/16 :goto_0

    .line 918
    :cond_381
    const-string v0, "47202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_382

    const-string p0, "Wataniya"

    goto/16 :goto_0

    .line 919
    :cond_382
    const-string v0, "61001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_383

    const-string p0, "Malitel"

    goto/16 :goto_0

    .line 920
    :cond_383
    const-string v0, "61002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_384

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 921
    :cond_384
    const-string v0, "27821"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_385

    const-string p0, "GO"

    goto/16 :goto_0

    .line 922
    :cond_385
    const-string v0, "27877"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_386

    const-string p0, "Melita"

    goto/16 :goto_0

    .line 923
    :cond_386
    const-string v0, "27801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_387

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 924
    :cond_387
    const-string v0, "60902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_388

    const-string p0, "Chinguitel"

    goto/16 :goto_0

    .line 925
    :cond_388
    const-string v0, "60901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_389

    const-string p0, "Mattel"

    goto/16 :goto_0

    .line 926
    :cond_389
    const-string v0, "60910"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38a

    const-string p0, "Mauritel"

    goto/16 :goto_0

    .line 927
    :cond_38a
    const-string v0, "61710"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38b

    const-string p0, "Emtel"

    goto/16 :goto_0

    .line 928
    :cond_38b
    const-string v0, "61702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38c

    const-string p0, "Mahanagar Telephone (Mauritius) Ltd."

    goto/16 :goto_0

    .line 929
    :cond_38c
    const-string v0, "61701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38d

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 930
    :cond_38d
    const-string v0, "334050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38e

    const-string p0, "Iusacell"

    goto/16 :goto_0

    .line 931
    :cond_38e
    const-string v0, "33403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38f

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 932
    :cond_38f
    const-string v0, "334030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_390

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 933
    :cond_390
    const-string v0, "33401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_391

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 934
    :cond_391
    const-string v0, "334010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_392

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 935
    :cond_392
    const-string v0, "33402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_393

    const-string p0, "Telcel"

    goto/16 :goto_0

    .line 936
    :cond_393
    const-string v0, "334020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_394

    const-string p0, "Telcel"

    goto/16 :goto_0

    .line 937
    :cond_394
    const-string v0, "55001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_395

    const-string p0, "FSM Telecom"

    goto/16 :goto_0

    .line 938
    :cond_395
    const-string v0, "25904"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_396

    const-string p0, "Eventis"

    goto/16 :goto_0

    .line 939
    :cond_396
    const-string v0, "25903"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_397

    const-string p0, "IDC"

    goto/16 :goto_0

    .line 940
    :cond_397
    const-string v0, "25902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_398

    const-string p0, "Moldcell"

    goto/16 :goto_0

    .line 941
    :cond_398
    const-string v0, "25901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_399

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 942
    :cond_399
    const-string v0, "25905"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39a

    const-string p0, "UnitE"

    goto/16 :goto_0

    .line 943
    :cond_39a
    const-string v0, "25999"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39b

    const-string p0, "UnitE"

    goto/16 :goto_0

    .line 944
    :cond_39b
    const-string v0, "21201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39c

    const-string p0, "Office des Telephones"

    goto/16 :goto_0

    .line 945
    :cond_39c
    const-string v0, "42898"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39d

    const-string p0, "G.Mobile"

    goto/16 :goto_0

    .line 946
    :cond_39d
    const-string v0, "42899"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39e

    const-string p0, "MobiCom"

    goto/16 :goto_0

    .line 947
    :cond_39e
    const-string v0, "42891"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39f

    const-string p0, "Skytel"

    goto/16 :goto_0

    .line 948
    :cond_39f
    const-string v0, "42888"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a0

    const-string p0, "Unitel"

    goto/16 :goto_0

    .line 949
    :cond_3a0
    const-string v0, "29703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a1

    const-string p0, "m:tel CG"

    goto/16 :goto_0

    .line 950
    :cond_3a1
    const-string v0, "22004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a2

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 951
    :cond_3a2
    const-string v0, "29702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a3

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 952
    :cond_3a3
    const-string v0, "29704"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a4

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 953
    :cond_3a4
    const-string v0, "29701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a5

    const-string p0, "Telenor Montenegro"

    goto/16 :goto_0

    .line 954
    :cond_3a5
    const-string v0, "60401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a6

    const-string p0, "IAM"

    goto/16 :goto_0

    .line 955
    :cond_3a6
    const-string v0, "60405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a7

    const-string p0, "INWI"

    goto/16 :goto_0

    .line 956
    :cond_3a7
    const-string v0, "60400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a8

    const-string p0, "Meditel"

    goto/16 :goto_0

    .line 957
    :cond_3a8
    const-string v0, "64301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a9

    const-string p0, "mCel"

    goto/16 :goto_0

    .line 958
    :cond_3a9
    const-string v0, "64304"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    const-string p0, "Vodacom"

    goto/16 :goto_0

    .line 959
    :cond_3aa
    const-string v0, "41401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ab

    const-string p0, "MPT"

    goto/16 :goto_0

    .line 960
    :cond_3ab
    const-string v0, "64903"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ac

    const-string p0, "Cell One"

    goto/16 :goto_0

    .line 961
    :cond_3ac
    const-string v0, "64901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    const-string p0, "MTC"

    goto/16 :goto_0

    .line 962
    :cond_3ad
    const-string v0, "64902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ae

    const-string p0, "switch"

    goto/16 :goto_0

    .line 963
    :cond_3ae
    const-string v0, "53602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3af

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 964
    :cond_3af
    const-string v0, "42902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b0

    const-string p0, "Mero Mobile"

    goto/16 :goto_0

    .line 965
    :cond_3b0
    const-string v0, "42901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b1

    const-string p0, "Nepal Telecom"

    goto/16 :goto_0

    .line 966
    :cond_3b1
    const-string v0, "42904"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b2

    const-string p0, "SmartCell"

    goto/16 :goto_0

    .line 967
    :cond_3b2
    const-string v0, "42903"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b3

    const-string p0, "United Telecom Limited"

    goto/16 :goto_0

    .line 968
    :cond_3b3
    const-string v0, "36294"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b4

    const-string p0, "Bayus"

    goto/16 :goto_0

    .line 969
    :cond_3b4
    const-string v0, "36269"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b5

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 970
    :cond_3b5
    const-string v0, "36295"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b6

    const-string p0, "MIO"

    goto/16 :goto_0

    .line 971
    :cond_3b6
    const-string v0, "36251"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b7

    const-string p0, "Telcell"

    goto/16 :goto_0

    .line 972
    :cond_3b7
    const-string v0, "36291"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b8

    const-string p0, "UTS"

    goto/16 :goto_0

    .line 973
    :cond_3b8
    const-string v0, "54601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b9

    const-string p0, "Mobilis"

    goto/16 :goto_0

    .line 974
    :cond_3b9
    const-string v0, "53024"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ba

    const-string p0, "NZ Comms"

    goto/16 :goto_0

    .line 975
    :cond_3ba
    const-string v0, "53000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3bb

    const-string p0, "Telecom"

    goto/16 :goto_0

    .line 976
    :cond_3bb
    const-string v0, "53002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3bc

    const-string p0, "Telecom"

    goto/16 :goto_0

    .line 977
    :cond_3bc
    const-string v0, "53005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3bd

    const-string p0, "Telecom"

    goto/16 :goto_0

    .line 978
    :cond_3bd
    const-string v0, "53004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3be

    const-string p0, "TelstraClear"

    goto/16 :goto_0

    .line 979
    :cond_3be
    const-string v0, "53001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3bf

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 980
    :cond_3bf
    const-string v0, "53003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c0

    const-string p0, "Woosh"

    goto/16 :goto_0

    .line 981
    :cond_3c0
    const-string v0, "71021"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c1

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 982
    :cond_3c1
    const-string v0, "71030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c2

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 983
    :cond_3c2
    const-string v0, "71073"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c3

    const-string p0, "SERCOM"

    goto/16 :goto_0

    .line 984
    :cond_3c3
    const-string v0, "61404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c4

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 985
    :cond_3c4
    const-string v0, "61401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c5

    const-string p0, "SahelCom"

    goto/16 :goto_0

    .line 986
    :cond_3c5
    const-string v0, "61403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c6

    const-string p0, "Telecel"

    goto/16 :goto_0

    .line 987
    :cond_3c6
    const-string v0, "61402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c7

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 988
    :cond_3c7
    const-string v0, "62160"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c8

    const-string p0, "Etisalat"

    goto/16 :goto_0

    .line 989
    :cond_3c8
    const-string v0, "62150"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c9

    const-string p0, "Glo"

    goto/16 :goto_0

    .line 990
    :cond_3c9
    const-string v0, "62140"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ca

    const-string p0, "M-Tel"

    goto/16 :goto_0

    .line 991
    :cond_3ca
    const-string v0, "62130"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cb

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 992
    :cond_3cb
    const-string v0, "62125"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cc

    const-string p0, "Visafone"

    goto/16 :goto_0

    .line 993
    :cond_3cc
    const-string v0, "62120"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cd

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 994
    :cond_3cd
    const-string v0, "55501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ce

    const-string p0, "Telecom Niue"

    goto/16 :goto_0

    .line 995
    :cond_3ce
    const-string v0, "467192"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cf

    const-string p0, "Koryolink"

    goto/16 :goto_0

    .line 996
    :cond_3cf
    const-string v0, "467193"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d0

    const-string p0, "SUN NET"

    goto/16 :goto_0

    .line 997
    :cond_3d0
    const-string v0, "24209"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d1

    const-string p0, "Barablu Mobile Norway Ltd"

    goto/16 :goto_0

    .line 998
    :cond_3d1
    const-string v0, "24206"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d2

    const-string p0, "Ice"

    goto/16 :goto_0

    .line 999
    :cond_3d2
    const-string v0, "24220"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d3

    const-string p0, "Jernbaneverket AS"

    goto/16 :goto_0

    .line 1000
    :cond_3d3
    const-string v0, "24223"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d4

    const-string p0, "Lyca"

    goto/16 :goto_0

    .line 1001
    :cond_3d4
    const-string v0, "24203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d5

    const-string p0, "MTU"

    goto/16 :goto_0

    .line 1002
    :cond_3d5
    const-string v0, "24202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d6

    const-string p0, "NetCom"

    goto/16 :goto_0

    .line 1003
    :cond_3d6
    const-string v0, "24205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d7

    const-string p0, "Network Norway"

    goto/16 :goto_0

    .line 1004
    :cond_3d7
    const-string v0, "24211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d8

    const-string p0, "SystemNet"

    goto/16 :goto_0

    .line 1005
    :cond_3d8
    const-string v0, "24208"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d9

    const-string p0, "TDC Mobil AS"

    goto/16 :goto_0

    .line 1006
    :cond_3d9
    const-string v0, "24204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3da

    const-string p0, "Tele2"

    goto/16 :goto_0

    .line 1007
    :cond_3da
    const-string v0, "24201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3db

    const-string p0, "Telenor"

    goto/16 :goto_0

    .line 1008
    :cond_3db
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3dc

    const-string p0, "Telia"

    goto/16 :goto_0

    .line 1009
    :cond_3dc
    const-string v0, "24207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3dd

    const-string p0, "Ventelo"

    goto/16 :goto_0

    .line 1010
    :cond_3dd
    const-string v0, "42203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3de

    const-string p0, "Nawras"

    goto/16 :goto_0

    .line 1011
    :cond_3de
    const-string v0, "42202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3df

    const-string p0, "Oman Mobile"

    goto/16 :goto_0

    .line 1012
    :cond_3df
    const-string v0, "25030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e0

    const-string p0, "Megafon"

    goto/16 :goto_0

    .line 1013
    :cond_3e0
    const-string v0, "41008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e1

    const-string p0, "Instaphone"

    goto/16 :goto_0

    .line 1014
    :cond_3e1
    const-string v0, "41001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e2

    const-string p0, "Mobilink"

    goto/16 :goto_0

    .line 1015
    :cond_3e2
    const-string v0, "41006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e3

    const-string p0, "Telenor"

    goto/16 :goto_0

    .line 1016
    :cond_3e3
    const-string v0, "41003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e4

    const-string p0, "Ufone"

    goto/16 :goto_0

    .line 1017
    :cond_3e4
    const-string v0, "41007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e5

    const-string p0, "Warid"

    goto/16 :goto_0

    .line 1018
    :cond_3e5
    const-string v0, "41004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e6

    const-string p0, "Zong"

    goto/16 :goto_0

    .line 1019
    :cond_3e6
    const-string v0, "55280"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e7

    const-string p0, "Palau Mobile"

    goto/16 :goto_0

    .line 1020
    :cond_3e7
    const-string v0, "55201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e8

    const-string p0, "PNCC"

    goto/16 :goto_0

    .line 1021
    :cond_3e8
    const-string v0, "42505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e9

    const-string p0, "JAWWAL"

    goto/16 :goto_0

    .line 1022
    :cond_3e9
    const-string v0, "42506"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ea

    const-string p0, "Wataniya"

    goto/16 :goto_0

    .line 1023
    :cond_3ea
    const-string v0, "71401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3eb

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 1024
    :cond_3eb
    const-string v0, "71404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ec

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1025
    :cond_3ec
    const-string v0, "71403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ed

    const-string p0, "laro"

    goto/16 :goto_0

    .line 1026
    :cond_3ed
    const-string v0, "71402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ee

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 1027
    :cond_3ee
    const-string v0, "53701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ef

    const-string p0, "B-Mobile"

    goto/16 :goto_0

    .line 1028
    :cond_3ef
    const-string v0, "53703"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f0

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1029
    :cond_3f0
    const-string v0, "74402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f1

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 1030
    :cond_3f1
    const-string v0, "74406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f2

    const-string p0, "Copaco"

    goto/16 :goto_0

    .line 1031
    :cond_3f2
    const-string v0, "74405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    const-string p0, "Personal"

    goto/16 :goto_0

    .line 1032
    :cond_3f3
    const-string v0, "74404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    const-string p0, "Tigo"

    goto/16 :goto_0

    .line 1033
    :cond_3f4
    const-string v0, "74401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f5

    const-string p0, "VOX"

    goto/16 :goto_0

    .line 1034
    :cond_3f5
    const-string v0, "71610"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f6

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 1035
    :cond_3f6
    const-string v0, "71606"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f7

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 1036
    :cond_3f7
    const-string v0, "71607"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f8

    const-string p0, "NEXTEL"

    goto/16 :goto_0

    .line 1037
    :cond_3f8
    const-string v0, "51511"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f9

    const-string p0, "ACeS Philippines"

    goto/16 :goto_0

    .line 1038
    :cond_3f9
    const-string v0, "51505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    const-string p0, "Digitel"

    goto/16 :goto_0

    .line 1039
    :cond_3fa
    const-string v0, "51502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fb

    const-string p0, "Globe"

    goto/16 :goto_0

    .line 1040
    :cond_3fb
    const-string v0, "51501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fc

    const-string p0, "Islacom"

    goto/16 :goto_0

    .line 1041
    :cond_3fc
    const-string v0, "51588"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fd

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 1042
    :cond_3fd
    const-string v0, "51518"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fe

    const-string p0, "Red Mobile"

    goto/16 :goto_0

    .line 1043
    :cond_3fe
    const-string v0, "51503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ff

    const-string p0, "Smart Gold"

    goto/16 :goto_0

    .line 1044
    :cond_3ff
    const-string v0, "26017"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_400

    const-string p0, "Aero2"

    goto/16 :goto_0

    .line 1045
    :cond_400
    const-string v0, "26015"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_401

    const-string p0, "CenterNet"

    goto/16 :goto_0

    .line 1046
    :cond_401
    const-string v0, "26012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_402

    const-string p0, "Cyfrowy Polsat"

    goto/16 :goto_0

    .line 1047
    :cond_402
    const-string v0, "26008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_403

    const-string p0, "E-Telko"

    goto/16 :goto_0

    .line 1048
    :cond_403
    const-string v0, "26016"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_404

    const-string p0, "Mobyland"

    goto/16 :goto_0

    .line 1049
    :cond_404
    const-string v0, "26011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_405

    const-string p0, "Nordisk Polska"

    goto/16 :goto_0

    .line 1050
    :cond_405
    const-string v0, "26003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_406

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1051
    :cond_406
    const-string v0, "26006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_407

    const-string p0, "Play"

    goto/16 :goto_0

    .line 1052
    :cond_407
    const-string v0, "26001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_408

    const-string p0, "Plus"

    goto/16 :goto_0

    .line 1053
    :cond_408
    const-string v0, "26005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_409

    const-string p0, "Polska Telefonia"

    goto/16 :goto_0

    .line 1054
    :cond_409
    const-string v0, "26007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40a

    const-string p0, "Premium Internet"

    goto/16 :goto_0

    .line 1055
    :cond_40a
    const-string v0, "26013"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40b

    const-string p0, "Sferia"

    goto/16 :goto_0

    .line 1056
    :cond_40b
    const-string v0, "26002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40c

    const-string p0, "T-mobile"

    goto/16 :goto_0

    .line 1057
    :cond_40c
    const-string v0, "26004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40d

    const-string p0, "Tele2"

    goto/16 :goto_0

    .line 1058
    :cond_40d
    const-string v0, "26010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40e

    const-string p0, "Telefony Opalenickie"

    goto/16 :goto_0

    .line 1059
    :cond_40e
    const-string v0, "26009"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40f

    const-string p0, "Telekomunikacja Kolejowa"

    goto/16 :goto_0

    .line 1060
    :cond_40f
    const-string v0, "26803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_410

    const-string p0, "Optimus"

    goto/16 :goto_0

    .line 1061
    :cond_410
    const-string v0, "26806"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_411

    const-string p0, "TMN"

    goto/16 :goto_0

    .line 1062
    :cond_411
    const-string v0, "26801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_412

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 1063
    :cond_412
    const-string v0, "26821"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_413

    const-string p0, "Zapp"

    goto/16 :goto_0

    .line 1064
    :cond_413
    const-string v0, "33011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_414

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 1065
    :cond_414
    const-string v0, "330110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_415

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 1066
    :cond_415
    const-string v0, "33000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_416

    const-string p0, "Open Mobile"

    goto/16 :goto_0

    .line 1067
    :cond_416
    const-string v0, "42705"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_417

    const-string p0, "Ministry of Interior"

    goto/16 :goto_0

    .line 1068
    :cond_417
    const-string v0, "42701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_418

    const-string p0, "Qatarnet"

    goto/16 :goto_0

    .line 1069
    :cond_418
    const-string v0, "42702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_419

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 1070
    :cond_419
    const-string v0, "62910"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41a

    const-string p0, "Libertis Telecom"

    goto/16 :goto_0

    .line 1071
    :cond_41a
    const-string v0, "62907"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41b

    const-string p0, "Warid Telecom"

    goto/16 :goto_0

    .line 1072
    :cond_41b
    const-string v0, "62901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41c

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 1073
    :cond_41c
    const-string v0, "29402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41d

    const-string p0, "Cosmofon"

    goto/16 :goto_0

    .line 1074
    :cond_41d
    const-string v0, "29401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41e

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1075
    :cond_41e
    const-string v0, "29403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41f

    const-string p0, "VIP"

    goto/16 :goto_0

    .line 1076
    :cond_41f
    const-string v0, "64700"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_420

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1077
    :cond_420
    const-string v0, "64702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_421

    const-string p0, "Outremer"

    goto/16 :goto_0

    .line 1078
    :cond_421
    const-string v0, "64710"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_422

    const-string p0, "SFR Reunion"

    goto/16 :goto_0

    .line 1079
    :cond_422
    const-string v0, "22603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_423

    const-string p0, "Cosmote"

    goto/16 :goto_0

    .line 1080
    :cond_423
    const-string v0, "22605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_424

    const-string p0, "DIGI.mobil"

    goto/16 :goto_0

    .line 1081
    :cond_424
    const-string v0, "22611"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_425

    const-string p0, "Enigma-System"

    goto/16 :goto_0

    .line 1082
    :cond_425
    const-string v0, "22610"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_426

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1083
    :cond_426
    const-string v0, "22602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_427

    const-string p0, "Romtelecom"

    goto/16 :goto_0

    .line 1084
    :cond_427
    const-string v0, "22601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_428

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 1085
    :cond_428
    const-string v0, "22604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_429

    const-string p0, "Zapp"

    goto/16 :goto_0

    .line 1086
    :cond_429
    const-string v0, "22606"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42a

    const-string p0, "Zapp"

    goto/16 :goto_0

    .line 1087
    :cond_42a
    const-string v0, "25012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42b

    const-string p0, "Baykalwestcom"

    goto/16 :goto_0

    .line 1088
    :cond_42b
    const-string v0, "25028"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42c

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 1089
    :cond_42c
    const-string v0, "25099"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42d

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 1090
    :cond_42d
    const-string v0, "25010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42e

    const-string p0, "DTC"

    goto/16 :goto_0

    .line 1091
    :cond_42e
    const-string v0, "25005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42f

    const-string p0, "ETK"

    goto/16 :goto_0

    .line 1092
    :cond_42f
    const-string v0, "25019"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_430

    const-string p0, "INDIGO"

    goto/16 :goto_0

    .line 1093
    :cond_430
    const-string v0, "25013"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_431

    const-string p0, "KUGSM"

    goto/16 :goto_0

    .line 1094
    :cond_431
    const-string v0, "25002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_432

    const-string p0, "MegaFon"

    goto/16 :goto_0

    .line 1095
    :cond_432
    const-string v0, "25023"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_433

    const-string p0, "Mobicom - Novosibirsk"

    goto/16 :goto_0

    .line 1096
    :cond_433
    const-string v0, "25035"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_434

    const-string p0, "MOTIV"

    goto/16 :goto_0

    .line 1097
    :cond_434
    const-string v0, "25001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_435

    const-string p0, "MTS"

    goto/16 :goto_0

    .line 1098
    :cond_435
    const-string v0, "25003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_436

    const-string p0, "NCC"

    goto/16 :goto_0

    .line 1099
    :cond_436
    const-string v0, "25016"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_437

    const-string p0, "NTC"

    goto/16 :goto_0

    .line 1100
    :cond_437
    const-string v0, "25011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_438

    const-string p0, "Orensot"

    goto/16 :goto_0

    .line 1101
    :cond_438
    const-string v0, "25092"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_439

    const-string p0, "Primtelefon"

    goto/16 :goto_0

    .line 1102
    :cond_439
    const-string v0, "25004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43a

    const-string p0, "Sibchallenge"

    goto/16 :goto_0

    .line 1103
    :cond_43a
    const-string v0, "25006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43b

    const-string p0, "Skylink"

    goto/16 :goto_0

    .line 1104
    :cond_43b
    const-string v0, "25009"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43c

    const-string p0, "Skylink"

    goto/16 :goto_0

    .line 1105
    :cond_43c
    const-string v0, "25007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43d

    const-string p0, "SMARTS"

    goto/16 :goto_0

    .line 1106
    :cond_43d
    const-string v0, "25014"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43e

    const-string p0, "SMARTS"

    goto/16 :goto_0

    .line 1107
    :cond_43e
    const-string v0, "25015"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43f

    const-string p0, "SMARTS"

    goto/16 :goto_0

    .line 1108
    :cond_43f
    const-string v0, "25044"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_440

    const-string p0, "Stavtelesot / North Caucasian GSM"

    goto/16 :goto_0

    .line 1109
    :cond_440
    const-string v0, "25038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_441

    const-string p0, "Tambov GSM"

    goto/16 :goto_0

    .line 1110
    :cond_441
    const-string v0, "25020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_442

    const-string p0, "Tele2"

    goto/16 :goto_0

    .line 1111
    :cond_442
    const-string v0, "25093"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_443

    const-string p0, "Telecom XXI"

    goto/16 :goto_0

    .line 1112
    :cond_443
    const-string v0, "25017"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_444

    const-string p0, "Utel"

    goto/16 :goto_0

    .line 1113
    :cond_444
    const-string v0, "25039"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_445

    const-string p0, "Utel"

    goto/16 :goto_0

    .line 1114
    :cond_445
    const-string v0, "63510"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_446

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 1115
    :cond_446
    const-string v0, "63512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_447

    const-string p0, "Rwandatel"

    goto/16 :goto_0

    .line 1116
    :cond_447
    const-string v0, "63513"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_448

    const-string p0, "Tigo"

    goto/16 :goto_0

    .line 1117
    :cond_448
    const-string v0, "356110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_449

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 1118
    :cond_449
    const-string v0, "356070"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44a

    const-string p0, "Chippie"

    goto/16 :goto_0

    .line 1119
    :cond_44a
    const-string v0, "356050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44b

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1120
    :cond_44b
    const-string v0, "358110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 1121
    :cond_44c
    const-string v0, "358050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44d

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1122
    :cond_44d
    const-string v0, "360110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44e

    const-string p0, "Cable & Wireless"

    goto/16 :goto_0

    .line 1123
    :cond_44e
    const-string v0, "360100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44f

    const-string p0, "Cingular Wireless"

    goto/16 :goto_0

    .line 1124
    :cond_44f
    const-string v0, "360050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_450

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1125
    :cond_450
    const-string v0, "360070"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_451

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1126
    :cond_451
    const-string v0, "30801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_452

    const-string p0, "Ameris"

    goto/16 :goto_0

    .line 1127
    :cond_452
    const-string v0, "54901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_453

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1128
    :cond_453
    const-string v0, "54927"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_454

    const-string p0, "SamoaTel"

    goto/16 :goto_0

    .line 1129
    :cond_454
    const-string v0, "29201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_455

    const-string p0, "PRIMA"

    goto/16 :goto_0

    .line 1130
    :cond_455
    const-string v0, "62601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_456

    const-string p0, "CSTmovel"

    goto/16 :goto_0

    .line 1131
    :cond_456
    const-string v0, "42007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_457

    const-string p0, "EAE"

    goto/16 :goto_0

    .line 1132
    :cond_457
    const-string v0, "42003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_458

    const-string p0, "Mobily"

    goto/16 :goto_0

    .line 1133
    :cond_458
    const-string v0, "42001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_459

    const-string p0, "STC"

    goto/16 :goto_0

    .line 1134
    :cond_459
    const-string v0, "42004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45a

    const-string p0, "Zain SA"

    goto/16 :goto_0

    .line 1135
    :cond_45a
    const-string v0, "60803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45b

    const-string p0, "Expresso"

    goto/16 :goto_0

    .line 1136
    :cond_45b
    const-string v0, "60802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45c

    const-string p0, "Sentel GSM"

    goto/16 :goto_0

    .line 1137
    :cond_45c
    const-string v0, "60801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45d

    const-string p0, "Sonatel ALIZE"

    goto/16 :goto_0

    .line 1138
    :cond_45d
    const-string v0, "22003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45e

    const-string p0, "Telekom Srbija"

    goto/16 :goto_0

    .line 1139
    :cond_45e
    const-string v0, "22001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45f

    const-string p0, "Telenor"

    goto/16 :goto_0

    .line 1140
    :cond_45f
    const-string v0, "22005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_460

    const-string p0, "VIP Mobile"

    goto/16 :goto_0

    .line 1141
    :cond_460
    const-string v0, "63301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_461

    const-string p0, "Cable & Wireless (Seychelles) Ltd."

    goto/16 :goto_0

    .line 1142
    :cond_461
    const-string v0, "63302"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_462

    const-string p0, "Mediatech International"

    goto/16 :goto_0

    .line 1143
    :cond_462
    const-string v0, "63310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_463

    const-string p0, "Telecom Airtel"

    goto/16 :goto_0

    .line 1144
    :cond_463
    const-string v0, "61905"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_464

    const-string p0, "Africell"

    goto/16 :goto_0

    .line 1145
    :cond_464
    const-string v0, "61904"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_465

    const-string p0, "Comium"

    goto/16 :goto_0

    .line 1146
    :cond_465
    const-string v0, "61903"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_466

    const-string p0, "Datatel"

    goto/16 :goto_0

    .line 1147
    :cond_466
    const-string v0, "61902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_467

    const-string p0, "Millicom"

    goto/16 :goto_0

    .line 1148
    :cond_467
    const-string v0, "61925"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_468

    const-string p0, "Mobitel"

    goto/16 :goto_0

    .line 1149
    :cond_468
    const-string v0, "61901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_469

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 1150
    :cond_469
    const-string v0, "52512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46a

    const-string p0, "Digital Trunked Radio Network"

    goto/16 :goto_0

    .line 1151
    :cond_46a
    const-string v0, "52503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46b

    const-string p0, "M1"

    goto/16 :goto_0

    .line 1152
    :cond_46b
    const-string v0, "52501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46c

    const-string p0, "SingTel"

    goto/16 :goto_0

    .line 1153
    :cond_46c
    const-string v0, "52502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46d

    const-string p0, "SingTel-G18"

    goto/16 :goto_0

    .line 1154
    :cond_46d
    const-string v0, "52505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46e

    const-string p0, "StarHub"

    goto/16 :goto_0

    .line 1155
    :cond_46e
    const-string v0, "23105"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46f

    const-string p0, "Mobile Entertainment Company"

    goto/16 :goto_0

    .line 1156
    :cond_46f
    const-string v0, "23106"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_470

    const-string p0, "O2"

    goto/16 :goto_0

    .line 1157
    :cond_470
    const-string v0, "23101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_471

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1158
    :cond_471
    const-string v0, "23102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_472

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1159
    :cond_472
    const-string v0, "23104"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_473

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1160
    :cond_473
    const-string v0, "23103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_474

    const-string p0, "Unient Communications"

    goto/16 :goto_0

    .line 1161
    :cond_474
    const-string v0, "23199"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_475

    const-string p0, "eSR"

    goto/16 :goto_0

    .line 1162
    :cond_475
    const-string v0, "29341"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_476

    const-string p0, "Mobitel"

    goto/16 :goto_0

    .line 1163
    :cond_476
    const-string v0, "29340"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_477

    const-string p0, "SI.mobil - Vodafone"

    goto/16 :goto_0

    .line 1164
    :cond_477
    const-string v0, "29364"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_478

    const-string p0, "T-2"

    goto/16 :goto_0

    .line 1165
    :cond_478
    const-string v0, "29370"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_479

    const-string p0, "Tusmobil"

    goto/16 :goto_0

    .line 1166
    :cond_479
    const-string v0, "54001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47a

    const-string p0, "BREEZE"

    goto/16 :goto_0

    .line 1167
    :cond_47a
    const-string v0, "5401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47b

    const-string p0, "BREEZE"

    goto/16 :goto_0

    .line 1168
    :cond_47b
    const-string v0, "63730"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47c

    const-string p0, "Golis"

    goto/16 :goto_0

    .line 1169
    :cond_47c
    const-string v0, "63725"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47d

    const-string p0, "Hormuud"

    goto/16 :goto_0

    .line 1170
    :cond_47d
    const-string v0, "63710"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47e

    const-string p0, "Nationlink"

    goto/16 :goto_0

    .line 1171
    :cond_47e
    const-string v0, "63760"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47f

    const-string p0, "Nationlink Telecom"

    goto/16 :goto_0

    .line 1172
    :cond_47f
    const-string v0, "63704"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_480

    const-string p0, "Somafone"

    goto/16 :goto_0

    .line 1173
    :cond_480
    const-string v0, "638"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_481

    const-string p0, "Telcom Mobile"

    goto/16 :goto_0

    .line 1174
    :cond_481
    const-string v0, "63701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_482

    const-string p0, "Telesom"

    goto/16 :goto_0

    .line 1175
    :cond_482
    const-string v0, "63782"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_483

    const-string p0, "Telesom"

    goto/16 :goto_0

    .line 1176
    :cond_483
    const-string v0, "65530"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_484

    const-string p0, "Bokamoso Consortium"

    goto/16 :goto_0

    .line 1177
    :cond_484
    const-string v0, "65521"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_485

    const-string p0, "Cape Town Metropolitan Council"

    goto/16 :goto_0

    .line 1178
    :cond_485
    const-string v0, "65507"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_486

    const-string p0, "Cell C"

    goto/16 :goto_0

    .line 1179
    :cond_486
    const-string v0, "65532"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_487

    const-string p0, "Ilizwi Telecommunications"

    goto/16 :goto_0

    .line 1180
    :cond_487
    const-string v0, "65531"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_488

    const-string p0, "Karabo Telecoms (Pty) Ltd."

    goto/16 :goto_0

    .line 1181
    :cond_488
    const-string v0, "65510"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_489

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 1182
    :cond_489
    const-string v0, "65513"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48a

    const-string p0, "Neotel"

    goto/16 :goto_0

    .line 1183
    :cond_48a
    const-string v0, "65511"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48b

    const-string p0, "SAPS Gauteng"

    goto/16 :goto_0

    .line 1184
    :cond_48b
    const-string v0, "65506"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48c

    const-string p0, "Sentech"

    goto/16 :goto_0

    .line 1185
    :cond_48c
    const-string v0, "65502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48d

    const-string p0, "Telkom Mobile / 8.ta"

    goto/16 :goto_0

    .line 1186
    :cond_48d
    const-string v0, "65533"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48e

    const-string p0, "Thinta Thinta Telecommunications"

    goto/16 :goto_0

    .line 1187
    :cond_48e
    const-string v0, "65501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48f

    const-string p0, "Vodacom"

    goto/16 :goto_0

    .line 1188
    :cond_48f
    const-string v0, "45004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_490

    const-string p0, "KT"

    goto/16 :goto_0

    .line 1189
    :cond_490
    const-string v0, "45008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_491

    const-string p0, "KTF"

    goto/16 :goto_0

    .line 1190
    :cond_491
    const-string v0, "45002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_492

    const-string p0, "KTF CDMA"

    goto/16 :goto_0

    .line 1191
    :cond_492
    const-string v0, "45006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_493

    const-string p0, "LGU+"

    goto/16 :goto_0

    .line 1192
    :cond_493
    const-string v0, "45003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_494

    const-string p0, "Power 017"

    goto/16 :goto_0

    .line 1193
    :cond_494
    const-string v0, "45005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_495

    const-string p0, "SK Telecom"

    goto/16 :goto_0

    .line 1194
    :cond_495
    const-string v0, "21423"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_496

    const-string p0, "BARABLU"

    goto/16 :goto_0

    .line 1195
    :cond_496
    const-string v0, "21415"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_497

    const-string p0, "BT"

    goto/16 :goto_0

    .line 1196
    :cond_497
    const-string v0, "21422"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_498

    const-string p0, "DigiMobil"

    goto/16 :goto_0

    .line 1197
    :cond_498
    const-string v0, "21424"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_499

    const-string p0, "Eroski"

    goto/16 :goto_0

    .line 1198
    :cond_499
    const-string v0, "21408"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49a

    const-string p0, "Euskaltel"

    goto/16 :goto_0

    .line 1199
    :cond_49a
    const-string v0, "21420"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49b

    const-string p0, "Fonyou"

    goto/16 :goto_0

    .line 1200
    :cond_49b
    const-string v0, "21425"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49c

    const-string p0, "LycaMobile"

    goto/16 :goto_0

    .line 1201
    :cond_49c
    const-string v0, "21407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49d

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 1202
    :cond_49d
    const-string v0, "21417"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49e

    const-string p0, "MUbil R"

    goto/16 :goto_0

    .line 1203
    :cond_49e
    const-string v0, "21418"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49f

    const-string p0, "ONO"

    goto/16 :goto_0

    .line 1204
    :cond_49f
    const-string v0, "21403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a0

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1205
    :cond_4a0
    const-string v0, "21409"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a1

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1206
    :cond_4a1
    const-string v0, "21419"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a2

    const-string p0, "Simyo"

    goto/16 :goto_0

    .line 1207
    :cond_4a2
    const-string v0, "21416"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a3

    const-string p0, "TeleCable"

    goto/16 :goto_0

    .line 1208
    :cond_4a3
    const-string v0, "21405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a4

    const-string p0, "TME"

    goto/16 :goto_0

    .line 1209
    :cond_4a4
    const-string v0, "21401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a5

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 1210
    :cond_4a5
    const-string v0, "21406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a6

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 1211
    :cond_4a6
    const-string v0, "21404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a7

    const-string p0, "Yoigo"

    goto/16 :goto_0

    .line 1212
    :cond_4a7
    const-string v0, "41305"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a8

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 1213
    :cond_4a8
    const-string v0, "41302"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a9

    const-string p0, "Dialog"

    goto/16 :goto_0

    .line 1214
    :cond_4a9
    const-string v0, "41308"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4aa

    const-string p0, "Hutch Sri Lanka"

    goto/16 :goto_0

    .line 1215
    :cond_4aa
    const-string v0, "41301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ab

    const-string p0, "Mobitel"

    goto/16 :goto_0

    .line 1216
    :cond_4ab
    const-string v0, "41303"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ac

    const-string p0, "Tigo"

    goto/16 :goto_0

    .line 1217
    :cond_4ac
    const-string v0, "63401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ad

    const-string p0, "Mobitel / Mobile Telephone Company"

    goto/16 :goto_0

    .line 1218
    :cond_4ad
    const-string v0, "63402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ae

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 1219
    :cond_4ae
    const-string v0, "63407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4af

    const-string p0, "Sudani One"

    goto/16 :goto_0

    .line 1220
    :cond_4af
    const-string v0, "63405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b0

    const-string p0, "Vivacell"

    goto/16 :goto_0

    .line 1221
    :cond_4b0
    const-string v0, "74603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b1

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1222
    :cond_4b1
    const-string v0, "74602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b2

    const-string p0, "Telesu"

    goto/16 :goto_0

    .line 1223
    :cond_4b2
    const-string v0, "74604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b3

    const-string p0, "Uniqa"

    goto/16 :goto_0

    .line 1224
    :cond_4b3
    const-string v0, "65310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b4

    const-string p0, "Swazi MTN"

    goto/16 :goto_0

    .line 1225
    :cond_4b4
    const-string v0, "24002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b5

    const-string p0, "3 HUTCHISON"

    goto/16 :goto_0

    .line 1226
    :cond_4b5
    const-string v0, "24004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b6

    const-string p0, "3G Infrastructure Services"

    goto/16 :goto_0

    .line 1227
    :cond_4b6
    const-string v0, "24016"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b7

    const-string p0, "42IT"

    goto/16 :goto_0

    .line 1228
    :cond_4b7
    const-string v0, "24021"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b8

    const-string p0, "Banverket"

    goto/16 :goto_0

    .line 1229
    :cond_4b8
    const-string v0, "24012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b9

    const-string p0, "Barablu Mobile Scandinavia"

    goto/16 :goto_0

    .line 1230
    :cond_4b9
    const-string v0, "24026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ba

    const-string p0, "Beepsend"

    goto/16 :goto_0

    .line 1231
    :cond_4ba
    const-string v0, "24025"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bb

    const-string p0, "DigiTelMobile"

    goto/16 :goto_0

    .line 1232
    :cond_4bb
    const-string v0, "24017"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bc

    const-string p0, "Gotanet"

    goto/16 :goto_0

    .line 1233
    :cond_4bc
    const-string v0, "24000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bd

    const-string p0, "Halebop"

    goto/16 :goto_0

    .line 1234
    :cond_4bd
    const-string v0, "24011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4be

    const-string p0, "Lindholmen Science Park"

    goto/16 :goto_0

    .line 1235
    :cond_4be
    const-string v0, "24033"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bf

    const-string p0, "Mobile Arts AB"

    goto/16 :goto_0

    .line 1236
    :cond_4bf
    const-string v0, "24003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c0

    const-string p0, "Nordisk Mobiltelefon"

    goto/16 :goto_0

    .line 1237
    :cond_4c0
    const-string v0, "24010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c1

    const-string p0, "SpringMobil"

    goto/16 :goto_0

    .line 1238
    :cond_4c1
    const-string v0, "24024"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c2

    const-string p0, "Sweden 2G"

    goto/16 :goto_0

    .line 1239
    :cond_4c2
    const-string v0, "24024"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c3

    const-string p0, "Sweden 2G"

    goto/16 :goto_0

    .line 1240
    :cond_4c3
    const-string v0, "24005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c4

    const-string p0, "Sweden 3G"

    goto/16 :goto_0

    .line 1241
    :cond_4c4
    const-string v0, "24014"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c5

    const-string p0, "TDC Mobil"

    goto/16 :goto_0

    .line 1242
    :cond_4c5
    const-string v0, "24007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c6

    const-string p0, "Tele2Comviq"

    goto/16 :goto_0

    .line 1243
    :cond_4c6
    const-string v0, "24006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c7

    const-string p0, "Telenor"

    goto/16 :goto_0

    .line 1244
    :cond_4c7
    const-string v0, "24008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c8

    const-string p0, "Telenor"

    goto/16 :goto_0

    .line 1245
    :cond_4c8
    const-string v0, "24009"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c9

    const-string p0, "Telenor Mobile Sverige"

    goto/16 :goto_0

    .line 1246
    :cond_4c9
    const-string v0, "24001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ca

    const-string p0, "TeliaSonera Mobile Networks"

    goto/16 :goto_0

    .line 1247
    :cond_4ca
    const-string v0, "24013"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4cb

    const-string p0, "Ventelo Sverige"

    goto/16 :goto_0

    .line 1248
    :cond_4cb
    const-string v0, "24020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4cc

    const-string p0, "Wireless Maingate"

    goto/16 :goto_0

    .line 1249
    :cond_4cc
    const-string v0, "24015"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4cd

    const-string p0, "Wireless Maingate Nordic"

    goto/16 :goto_0

    .line 1250
    :cond_4cd
    const-string v0, "22850"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ce

    const-string p0, "3G Mobile AG"

    goto/16 :goto_0

    .line 1251
    :cond_4ce
    const-string v0, "22851"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4cf

    const-string p0, "BebbiCell AG"

    goto/16 :goto_0

    .line 1252
    :cond_4cf
    const-string v0, "22807"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d0

    const-string p0, "IN&Phone"

    goto/16 :goto_0

    .line 1253
    :cond_4d0
    const-string v0, "22803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d1

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1254
    :cond_4d1
    const-string v0, "22806"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d2

    const-string p0, "SBB AG"

    goto/16 :goto_0

    .line 1255
    :cond_4d2
    const-string v0, "22802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d3

    const-string p0, "Sunrise"

    goto/16 :goto_0

    .line 1256
    :cond_4d3
    const-string v0, "22801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d4

    const-string p0, "Swisscom"

    goto/16 :goto_0

    .line 1257
    :cond_4d4
    const-string v0, "22808"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d5

    const-string p0, "Tele2"

    goto/16 :goto_0

    .line 1258
    :cond_4d5
    const-string v0, "22805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d6

    const-string p0, "Togewanet AG (Comfone)"

    goto/16 :goto_0

    .line 1259
    :cond_4d6
    const-string v0, "41702"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d7

    const-string p0, "MTN Syria"

    goto/16 :goto_0

    .line 1260
    :cond_4d7
    const-string v0, "41701"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d8

    const-string p0, "SyriaTel"

    goto/16 :goto_0

    .line 1261
    :cond_4d8
    const-string v0, "46602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d9

    const-string p0, "APTG"

    goto/16 :goto_0

    .line 1262
    :cond_4d9
    const-string v0, "46605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4da

    const-string p0, "APTG"

    goto/16 :goto_0

    .line 1263
    :cond_4da
    const-string v0, "46611"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4db

    const-string p0, "Chunghwa LDM"

    goto/16 :goto_0

    .line 1264
    :cond_4db
    const-string v0, "46692"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4dc

    const-string p0, "Chungwa"

    goto/16 :goto_0

    .line 1265
    :cond_4dc
    const-string v0, "46601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4dd

    const-string p0, "FarEasTone"

    goto/16 :goto_0

    .line 1266
    :cond_4dd
    const-string v0, "46688"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4de

    const-string p0, "KG Telecom"

    goto/16 :goto_0

    .line 1267
    :cond_4de
    const-string v0, "46693"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4df

    const-string p0, "MobiTai"

    goto/16 :goto_0

    .line 1268
    :cond_4df
    const-string v0, "46697"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e0

    const-string p0, "Taiwan Mobile"

    goto/16 :goto_0

    .line 1269
    :cond_4e0
    const-string v0, "46699"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e1

    const-string p0, "TransAsia"

    goto/16 :goto_0

    .line 1270
    :cond_4e1
    const-string v0, "46606"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e2

    const-string p0, "Tuntex"

    goto/16 :goto_0

    .line 1271
    :cond_4e2
    const-string v0, "46689"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e3

    const-string p0, "VIBO"

    goto/16 :goto_0

    .line 1272
    :cond_4e3
    const-string v0, "43604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e4

    const-string p0, "Babilon-M"

    goto/16 :goto_0

    .line 1273
    :cond_4e4
    const-string v0, "43605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e5

    const-string p0, "CTJTHSC Tajik-tel"

    goto/16 :goto_0

    .line 1274
    :cond_4e5
    const-string v0, "43602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e6

    const-string p0, "Indigo"

    goto/16 :goto_0

    .line 1275
    :cond_4e6
    const-string v0, "43603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e7

    const-string p0, "MLT"

    goto/16 :goto_0

    .line 1276
    :cond_4e7
    const-string v0, "43601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e8

    const-string p0, "Somoncom"

    goto/16 :goto_0

    .line 1277
    :cond_4e8
    const-string v0, "43612"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e9

    const-string p0, "Tcell"

    goto/16 :goto_0

    .line 1278
    :cond_4e9
    const-string v0, "64009"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ea

    const-string p0, "Hits"

    goto/16 :goto_0

    .line 1279
    :cond_4ea
    const-string v0, "64002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4eb

    const-string p0, "Mobitel"

    goto/16 :goto_0

    .line 1280
    :cond_4eb
    const-string v0, "64006"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ec

    const-string p0, "Sasatel"

    goto/16 :goto_0

    .line 1281
    :cond_4ec
    const-string v0, "64011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ed

    const-string p0, "SmileCom"

    goto/16 :goto_0

    .line 1282
    :cond_4ed
    const-string v0, "64001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ee

    const-string p0, "Tritel"

    goto/16 :goto_0

    .line 1283
    :cond_4ee
    const-string v0, "64007"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ef

    const-string p0, "TTCL Mobile"

    goto/16 :goto_0

    .line 1284
    :cond_4ef
    const-string v0, "64008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f0

    const-string p0, "TTCL Mobile"

    goto/16 :goto_0

    .line 1285
    :cond_4f0
    const-string v0, "64004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f1

    const-string p0, "Vodacom"

    goto/16 :goto_0

    .line 1286
    :cond_4f1
    const-string v0, "64005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f2

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 1287
    :cond_4f2
    const-string v0, "64003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f3

    const-string p0, "Zantel"

    goto/16 :goto_0

    .line 1288
    :cond_4f3
    const-string v0, "52015"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f4

    const-string p0, "ACT Mobile"

    goto/16 :goto_0

    .line 1289
    :cond_4f4
    const-string v0, "52001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f5

    const-string p0, "Advanced Info Service"

    goto/16 :goto_0

    .line 1290
    :cond_4f5
    const-string v0, "52023"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f6

    const-string p0, "Advanced Info Service"

    goto/16 :goto_0

    .line 1291
    :cond_4f6
    const-string v0, "52000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f7

    const-string p0, "CAT CDMA"

    goto/16 :goto_0

    .line 1292
    :cond_4f7
    const-string v0, "52002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f8

    const-string p0, "CAT CDMA"

    goto/16 :goto_0

    .line 1293
    :cond_4f8
    const-string v0, "52018"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f9

    const-string p0, "DTAC"

    goto/16 :goto_0

    .line 1294
    :cond_4f9
    const-string v0, "52099"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fa

    const-string p0, "True Move"

    goto/16 :goto_0

    .line 1295
    :cond_4fa
    const-string v0, "52010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fb

    const-string p0, "WCS IQ"

    goto/16 :goto_0

    .line 1296
    :cond_4fb
    const-string v0, "61503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fc

    const-string p0, "Moov"

    goto/16 :goto_0

    .line 1297
    :cond_4fc
    const-string v0, "61505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fd

    const-string p0, "Telecel"

    goto/16 :goto_0

    .line 1298
    :cond_4fd
    const-string v0, "61501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fe

    const-string p0, "Togo Cell"

    goto/16 :goto_0

    .line 1299
    :cond_4fe
    const-string v0, "53988"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ff

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1300
    :cond_4ff
    const-string v0, "53943"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_500

    const-string p0, "Shoreline Communication"

    goto/16 :goto_0

    .line 1301
    :cond_500
    const-string v0, "53901"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_501

    const-string p0, "Tonga Communications Corporation"

    goto/16 :goto_0

    .line 1302
    :cond_501
    const-string v0, "37412"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_502

    const-string p0, "bmobile"

    goto/16 :goto_0

    .line 1303
    :cond_502
    const-string v0, "37413"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_503

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1304
    :cond_503
    const-string v0, "374130"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_504

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1305
    :cond_504
    const-string v0, "60501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_505

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1306
    :cond_505
    const-string v0, "60502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_506

    const-string p0, "Tunicell"

    goto/16 :goto_0

    .line 1307
    :cond_506
    const-string v0, "60503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_507

    const-string p0, "Tunisiana"

    goto/16 :goto_0

    .line 1308
    :cond_507
    const-string v0, "28603"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_508

    const-string p0, "Avea"

    goto/16 :goto_0

    .line 1309
    :cond_508
    const-string v0, "28604"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_509

    const-string p0, "Aycell"

    goto/16 :goto_0

    .line 1310
    :cond_509
    const-string v0, "28601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50a

    const-string p0, "Turkcell"

    goto/16 :goto_0

    .line 1311
    :cond_50a
    const-string v0, "28602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50b

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 1312
    :cond_50b
    const-string v0, "43801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50c

    const-string p0, "MTS"

    goto/16 :goto_0

    .line 1313
    :cond_50c
    const-string v0, "43802"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50d

    const-string p0, "TM-Cell"

    goto/16 :goto_0

    .line 1314
    :cond_50d
    const-string v0, "55301"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50e

    const-string p0, "TTC"

    goto/16 :goto_0

    .line 1315
    :cond_50e
    const-string v0, "64110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50f

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 1316
    :cond_50f
    const-string v0, "64114"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_510

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1317
    :cond_510
    const-string v0, "64111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_511

    const-string p0, "Uganda Telecom Ltd."

    goto/16 :goto_0

    .line 1318
    :cond_511
    const-string v0, "64122"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_512

    const-string p0, "Warid Telecom"

    goto/16 :goto_0

    .line 1319
    :cond_512
    const-string v0, "64101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_513

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 1320
    :cond_513
    const-string v0, "25502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_514

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 1321
    :cond_514
    const-string v0, "25523"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_515

    const-string p0, "CDMA Ukraine"

    goto/16 :goto_0

    .line 1322
    :cond_515
    const-string v0, "25505"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_516

    const-string p0, "Golden Telecom"

    goto/16 :goto_0

    .line 1323
    :cond_516
    const-string v0, "25504"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_517

    const-string p0, "IT"

    goto/16 :goto_0

    .line 1324
    :cond_517
    const-string v0, "25503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_518

    const-string p0, "Kyivstar"

    goto/16 :goto_0

    .line 1325
    :cond_518
    const-string v0, "25506"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_519

    const-string p0, "life:)"

    goto/16 :goto_0

    .line 1326
    :cond_519
    const-string v0, "25501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51a

    const-string p0, "MTS"

    goto/16 :goto_0

    .line 1327
    :cond_51a
    const-string v0, "25521"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51b

    const-string p0, "PEOPLEnet"

    goto/16 :goto_0

    .line 1328
    :cond_51b
    const-string v0, "25507"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51c

    const-string p0, "Utel"

    goto/16 :goto_0

    .line 1329
    :cond_51c
    const-string v0, "42403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51d

    const-string p0, "du"

    goto/16 :goto_0

    .line 1330
    :cond_51d
    const-string v0, "42402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51e

    const-string p0, "Etisalat"

    goto/16 :goto_0

    .line 1331
    :cond_51e
    const-string v0, "23420"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51f

    const-string p0, "3 Hutchison"

    goto/16 :goto_0

    .line 1332
    :cond_51f
    const-string v0, "23400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_520

    const-string p0, "BT"

    goto/16 :goto_0

    .line 1333
    :cond_520
    const-string v0, "23455"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_521

    const-string p0, "Cable & Wireless / Sure Mobile (Isle of Man)"

    goto/16 :goto_0

    .line 1334
    :cond_521
    const-string v0, "23418"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_522

    const-string p0, "Cloud9"

    goto/16 :goto_0

    .line 1335
    :cond_522
    const-string v0, "23403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_523

    const-string p0, "Jersey Telenet"

    goto/16 :goto_0

    .line 1336
    :cond_523
    const-string v0, "23450"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_524

    const-string p0, "JT-Wave"

    goto/16 :goto_0

    .line 1337
    :cond_524
    const-string v0, "23458"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_525

    const-string p0, "Manx Telecom"

    goto/16 :goto_0

    .line 1338
    :cond_525
    const-string v0, "23401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_526

    const-string p0, "MCom"

    goto/16 :goto_0

    .line 1339
    :cond_526
    const-string v0, "23402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_527

    const-string p0, "O2"

    goto/16 :goto_0

    .line 1340
    :cond_527
    const-string v0, "23410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_528

    const-string p0, "O2"

    goto/16 :goto_0

    .line 1341
    :cond_528
    const-string v0, "23411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_529

    const-string p0, "O2"

    goto/16 :goto_0

    .line 1342
    :cond_529
    const-string v0, "23433"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52a

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1343
    :cond_52a
    const-string v0, "23434"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52b

    const-string p0, "Orange"

    goto/16 :goto_0

    .line 1344
    :cond_52b
    const-string v0, "23412"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52c

    const-string p0, "Railtrack"

    goto/16 :goto_0

    .line 1345
    :cond_52c
    const-string v0, "23422"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52d

    const-string p0, "Routo Telecom"

    goto/16 :goto_0

    .line 1346
    :cond_52d
    const-string v0, "23409"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52e

    const-string p0, "Sure Mobile"

    goto/16 :goto_0

    .line 1347
    :cond_52e
    const-string v0, "23430"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52f

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1348
    :cond_52f
    const-string v0, "23419"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_530

    const-string p0, "Telaware"

    goto/16 :goto_0

    .line 1349
    :cond_530
    const-string v0, "234100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_531

    const-string p0, "Tesco Mobile"

    goto/16 :goto_0

    .line 1350
    :cond_531
    const-string v0, "23477"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_532

    const-string p0, "Unknown"

    goto/16 :goto_0

    .line 1351
    :cond_532
    const-string v0, "23431"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_533

    const-string p0, "Virgin"

    goto/16 :goto_0

    .line 1352
    :cond_533
    const-string v0, "23432"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_534

    const-string p0, "Virgin"

    goto/16 :goto_0

    .line 1353
    :cond_534
    const-string v0, "23415"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_535

    const-string p0, "Vodafone"

    goto/16 :goto_0

    .line 1354
    :cond_535
    const-string v0, "310880"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_536

    const-string p0, "Advantage"

    goto/16 :goto_0

    .line 1355
    :cond_536
    const-string v0, "310850"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_537

    const-string p0, "Aeris"

    goto/16 :goto_0

    .line 1356
    :cond_537
    const-string v0, "310640"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_538

    const-string p0, "Airadigm"

    goto/16 :goto_0

    .line 1357
    :cond_538
    const-string v0, "310780"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_539

    const-string p0, "Airlink PCS"

    goto/16 :goto_0

    .line 1358
    :cond_539
    const-string v0, "310034"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53a

    const-string p0, "Airpeak"

    goto/16 :goto_0

    .line 1359
    :cond_53a
    const-string v0, "310510"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53b

    const-string p0, "Airtel"

    goto/16 :goto_0

    .line 1360
    :cond_53b
    const-string v0, "310430"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53c

    const-string p0, "Alaska Digitel"

    goto/16 :goto_0

    .line 1361
    :cond_53c
    const-string v0, "310500"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53d

    const-string p0, "Alltel"

    goto/16 :goto_0

    .line 1362
    :cond_53d
    const-string v0, "310590"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53e

    const-string p0, "Alltel"

    goto/16 :goto_0

    .line 1363
    :cond_53e
    const-string v0, "310630"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53f

    const-string p0, "AmeriLink PCS"

    goto/16 :goto_0

    .line 1364
    :cond_53f
    const-string v0, "310038"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_540

    const-string p0, "AT&T"

    goto/16 :goto_0

    .line 1365
    :cond_540
    const-string v0, "310090"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_541

    const-string p0, "AT&T"

    goto/16 :goto_0

    .line 1366
    :cond_541
    const-string v0, "310150"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_542

    const-string p0, "AT&T"

    goto/16 :goto_0

    .line 1367
    :cond_542
    const-string v0, "310170"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_543

    const-string p0, "AT&T"

    goto/16 :goto_0

    .line 1368
    :cond_543
    const-string v0, "310410"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_544

    const-string p0, "AT&T"

    goto/16 :goto_0

    .line 1369
    :cond_544
    const-string v0, "310560"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_545

    const-string p0, "AT&T"

    goto/16 :goto_0

    .line 1370
    :cond_545
    const-string v0, "310680"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_546

    const-string p0, "AT&T"

    goto/16 :goto_0

    .line 1371
    :cond_546
    const-string v0, "310380"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_547

    const-string p0, "AT&T Mobility"

    goto/16 :goto_0

    .line 1372
    :cond_547
    const-string v0, "310980"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_548

    const-string p0, "AT&T Mobility"

    goto/16 :goto_0

    .line 1373
    :cond_548
    const-string v0, "310990"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_549

    const-string p0, "AT&T Mobility"

    goto/16 :goto_0

    .line 1374
    :cond_549
    const-string v0, "310830"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54a

    const-string p0, "Caprock"

    goto/16 :goto_0

    .line 1375
    :cond_54a
    const-string v0, "310350"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54b

    const-string p0, "Carolina Phone"

    goto/16 :goto_0

    .line 1376
    :cond_54b
    const-string v0, "311130"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54c

    const-string p0, "Cell One Amarillo"

    goto/16 :goto_0

    .line 1377
    :cond_54c
    const-string v0, "310320"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54d

    const-string p0, "Cellular One"

    goto/16 :goto_0

    .line 1378
    :cond_54d
    const-string v0, "310440"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54e

    const-string p0, "Cellular One"

    goto/16 :goto_0

    .line 1379
    :cond_54e
    const-string v0, "310390"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54f

    const-string p0, "Cellular One of East Texas"

    goto/16 :goto_0

    .line 1380
    :cond_54f
    const-string v0, "311190"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_550

    const-string p0, "Cellular Properties"

    goto/16 :goto_0

    .line 1381
    :cond_550
    const-string v0, "310030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_551

    const-string p0, "Centennial"

    goto/16 :goto_0

    .line 1382
    :cond_551
    const-string v0, "311010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_552

    const-string p0, "Chariton Valley"

    goto/16 :goto_0

    .line 1383
    :cond_552
    const-string v0, "310570"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_553

    const-string p0, "Chinook Wireless"

    goto/16 :goto_0

    .line 1384
    :cond_553
    const-string v0, "310480"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_554

    const-string p0, "Choice Phone"

    goto/16 :goto_0

    .line 1385
    :cond_554
    const-string v0, "311120"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_555

    const-string p0, "Choice Phone"

    goto/16 :goto_0

    .line 1386
    :cond_555
    const-string v0, "310420"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_556

    const-string p0, "Cincinnati Bell"

    goto/16 :goto_0

    .line 1387
    :cond_556
    const-string v0, "311180"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_557

    const-string p0, "Cingular Wireless"

    goto/16 :goto_0

    .line 1388
    :cond_557
    const-string v0, "310620"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_558

    const-string p0, "Coleman County Telecom"

    goto/16 :goto_0

    .line 1389
    :cond_558
    const-string v0, "311040"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_559

    const-string p0, "Commnet Wireless"

    goto/16 :goto_0

    .line 1390
    :cond_559
    const-string v0, "310040"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55a

    const-string p0, "Concho"

    goto/16 :goto_0

    .line 1391
    :cond_55a
    const-string v0, "310690"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    const-string p0, "Conestoga"

    goto/16 :goto_0

    .line 1392
    :cond_55b
    const-string v0, "310060"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55c

    const-string p0, "Consolidated Telcom"

    goto/16 :goto_0

    .line 1393
    :cond_55c
    const-string v0, "310740"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55d

    const-string p0, "Convey"

    goto/16 :goto_0

    .line 1394
    :cond_55d
    const-string v0, "310080"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55e

    const-string p0, "Corr"

    goto/16 :goto_0

    .line 1395
    :cond_55e
    const-string v0, "310016"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55f

    const-string p0, "Cricket Communications"

    goto/16 :goto_0

    .line 1396
    :cond_55f
    const-string v0, "310940"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_560

    const-string p0, "Digital Cellular"

    goto/16 :goto_0

    .line 1397
    :cond_560
    const-string v0, "310190"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_561

    const-string p0, "Dutch Harbor"

    goto/16 :goto_0

    .line 1398
    :cond_561
    const-string v0, "311070"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_562

    const-string p0, "Easterbrooke"

    goto/16 :goto_0

    .line 1399
    :cond_562
    const-string v0, "311160"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_563

    const-string p0, "Endless Mountains Wireless"

    goto/16 :goto_0

    .line 1400
    :cond_563
    const-string v0, "310610"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_564

    const-string p0, "Epic Touch"

    goto/16 :goto_0

    .line 1401
    :cond_564
    const-string v0, "311060"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_565

    const-string p0, "Farmers Cellular"

    goto/16 :goto_0

    .line 1402
    :cond_565
    const-string v0, "311210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_566

    const-string p0, "Farmers Cellular"

    goto/16 :goto_0

    .line 1403
    :cond_566
    const-string v0, "310311"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_567

    const-string p0, "Farmers Wireless"

    goto/16 :goto_0

    .line 1404
    :cond_567
    const-string v0, "310910"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_568

    const-string p0, "First Cellular"

    goto/16 :goto_0

    .line 1405
    :cond_568
    const-string v0, "310300"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_569

    const-string p0, "Get Mobile Inc"

    goto/16 :goto_0

    .line 1406
    :cond_569
    const-string v0, "310970"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56a

    const-string p0, "Globalstar"

    goto/16 :goto_0

    .line 1407
    :cond_56a
    const-string v0, "311100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56b

    const-string p0, "High Plains Wireless"

    goto/16 :goto_0

    .line 1408
    :cond_56b
    const-string v0, "311110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56c

    const-string p0, "High Plains Wireless"

    goto/16 :goto_0

    .line 1409
    :cond_56c
    const-string v0, "310070"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56d

    const-string p0, "Highland Cellular"

    goto/16 :goto_0

    .line 1410
    :cond_56d
    const-string v0, "310400"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56e

    const-string p0, "i CAN_GSM"

    goto/16 :goto_0

    .line 1411
    :cond_56e
    const-string v0, "310770"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56f

    const-string p0, "i wireless"

    goto/16 :goto_0

    .line 1412
    :cond_56f
    const-string v0, "311030"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_570

    const-string p0, "Indigo Wireless"

    goto/16 :goto_0

    .line 1413
    :cond_570
    const-string v0, "310650"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_571

    const-string p0, "Jasper"

    goto/16 :goto_0

    .line 1414
    :cond_571
    const-string v0, "311090"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_572

    const-string p0, "Long Lines Wireless"

    goto/16 :goto_0

    .line 1415
    :cond_572
    const-string v0, "310010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_573

    const-string p0, "MCI"

    goto/16 :goto_0

    .line 1416
    :cond_573
    const-string v0, "310000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_574

    const-string p0, "Mid-Tex Cellular"

    goto/16 :goto_0

    .line 1417
    :cond_574
    const-string v0, "311000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_575

    const-string p0, "Mid-Tex Cellular"

    goto/16 :goto_0

    .line 1418
    :cond_575
    const-string v0, "311020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_576

    const-string p0, "Missouri RSA 5 Partnership"

    goto/16 :goto_0

    .line 1419
    :cond_576
    const-string v0, "310013"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_577

    const-string p0, "MobileTel"

    goto/16 :goto_0

    .line 1420
    :cond_577
    const-string v0, "316010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_578

    const-string p0, "Nextel"

    goto/16 :goto_0

    .line 1421
    :cond_578
    const-string v0, "310017"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_579

    const-string p0, "North Sight Communications Inc."

    goto/16 :goto_0

    .line 1422
    :cond_579
    const-string v0, "310670"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57a

    const-string p0, "Northstar"

    goto/16 :goto_0

    .line 1423
    :cond_57a
    const-string v0, "310540"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57b

    const-string p0, "Oklahoma Western"

    goto/16 :goto_0

    .line 1424
    :cond_57b
    const-string v0, "310870"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57c

    const-string p0, "PACE"

    goto/16 :goto_0

    .line 1425
    :cond_57c
    const-string v0, "310760"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57d

    const-string p0, "Panhandle"

    goto/16 :goto_0

    .line 1426
    :cond_57d
    const-string v0, "311170"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57e

    const-string p0, "PetroCom"

    goto/16 :goto_0

    .line 1427
    :cond_57e
    const-string v0, "311080"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57f

    const-string p0, "Pine Cellular"

    goto/16 :goto_0

    .line 1428
    :cond_57f
    const-string v0, "310790"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_580

    const-string p0, "PinPoint"

    goto/16 :goto_0

    .line 1429
    :cond_580
    const-string v0, "310100"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_581

    const-string p0, "Plateau Wireless"

    goto/16 :goto_0

    .line 1430
    :cond_581
    const-string v0, "310960"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_582

    const-string p0, "Plateau Wireless"

    goto/16 :goto_0

    .line 1431
    :cond_582
    const-string v0, "310110"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_583

    const-string p0, "PTI Pacifica"

    goto/16 :goto_0

    .line 1432
    :cond_583
    const-string v0, "310730"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_584

    const-string p0, "SeaMobile"

    goto/16 :goto_0

    .line 1433
    :cond_584
    const-string v0, "310046"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_585

    const-string p0, "SIMMETRY"

    goto/16 :goto_0

    .line 1434
    :cond_585
    const-string v0, "310460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_586

    const-string p0, "Simmetry"

    goto/16 :goto_0

    .line 1435
    :cond_586
    const-string v0, "316011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_587

    const-string p0, "Southern Communications Services"

    goto/16 :goto_0

    .line 1436
    :cond_587
    const-string v0, "310120"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_588

    const-string p0, "Sprint"

    goto/16 :goto_0

    .line 1437
    :cond_588
    const-string v0, "311140"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_589

    const-string p0, "Sprocket"

    goto/16 :goto_0

    .line 1438
    :cond_589
    const-string v0, "310490"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58a

    const-string p0, "SunCom"

    goto/16 :goto_0

    .line 1439
    :cond_58a
    const-string v0, "310026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58b

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1440
    :cond_58b
    const-string v0, "310160"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58c

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1441
    :cond_58c
    const-string v0, "310200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58d

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1442
    :cond_58d
    const-string v0, "310210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58e

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1443
    :cond_58e
    const-string v0, "310220"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58f

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1444
    :cond_58f
    const-string v0, "310230"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_590

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1445
    :cond_590
    const-string v0, "310240"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_591

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1446
    :cond_591
    const-string v0, "310250"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_592

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1447
    :cond_592
    const-string v0, "310260"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_593

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1448
    :cond_593
    const-string v0, "310270"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_594

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1449
    :cond_594
    const-string v0, "310280"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_595

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1450
    :cond_595
    const-string v0, "310290"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_596

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1451
    :cond_596
    const-string v0, "310310"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_597

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1452
    :cond_597
    const-string v0, "310330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_598

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1453
    :cond_598
    const-string v0, "310580"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_599

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1454
    :cond_599
    const-string v0, "310660"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59a

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1455
    :cond_59a
    const-string v0, "310800"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59b

    const-string p0, "T-Mobile"

    goto/16 :goto_0

    .line 1456
    :cond_59b
    const-string v0, "310900"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59c

    const-string p0, "Taylor"

    goto/16 :goto_0

    .line 1457
    :cond_59c
    const-string v0, "310014"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59d

    const-string p0, "Testing"

    goto/16 :goto_0

    .line 1458
    :cond_59d
    const-string v0, "310020"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59e

    const-string p0, "Union Telephone Company"

    goto/16 :goto_0

    .line 1459
    :cond_59e
    const-string v0, "310520"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59f

    const-string p0, "VeriSign"

    goto/16 :goto_0

    .line 1460
    :cond_59f
    const-string v0, "310004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a0

    const-string p0, "Verizon"

    goto/16 :goto_0

    .line 1461
    :cond_5a0
    const-string v0, "310012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a1

    const-string p0, "Verizon"

    goto/16 :goto_0

    .line 1462
    :cond_5a1
    const-string v0, "310450"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a2

    const-string p0, "Viaero"

    goto/16 :goto_0

    .line 1463
    :cond_5a2
    const-string v0, "310180"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a3

    const-string p0, "West Central"

    goto/16 :goto_0

    .line 1464
    :cond_5a3
    const-string v0, "310530"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a4

    const-string p0, "West Virginia Wireless"

    goto/16 :goto_0

    .line 1465
    :cond_5a4
    const-string v0, "310340"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a5

    const-string p0, "Westlink"

    goto/16 :goto_0

    .line 1466
    :cond_5a5
    const-string v0, "311050"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a6

    const-string p0, "Wikes Cellular"

    goto/16 :goto_0

    .line 1467
    :cond_5a6
    const-string v0, "311150"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a7

    const-string p0, "Wilkes Cellular"

    goto/16 :goto_0

    .line 1468
    :cond_5a7
    const-string v0, "310890"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a8

    const-string p0, "Wireless Alliance"

    goto/16 :goto_0

    .line 1469
    :cond_5a8
    const-string v0, "310950"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a9

    const-string p0, "XIT Wireless"

    goto/16 :goto_0

    .line 1470
    :cond_5a9
    const-string v0, "74800"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5aa

    const-string p0, "Ancel"

    goto/16 :goto_0

    .line 1471
    :cond_5aa
    const-string v0, "74801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ab

    const-string p0, "Ancel"

    goto/16 :goto_0

    .line 1472
    :cond_5ab
    const-string v0, "74810"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ac

    const-string p0, "Claro"

    goto/16 :goto_0

    .line 1473
    :cond_5ac
    const-string v0, "74807"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ad

    const-string p0, "Movistar"

    goto/16 :goto_0

    .line 1474
    :cond_5ad
    const-string v0, "43404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ae

    const-string p0, "Beeline"

    goto/16 :goto_0

    .line 1475
    :cond_5ae
    const-string v0, "43401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5af

    const-string p0, "Buztel"

    goto/16 :goto_0

    .line 1476
    :cond_5af
    const-string v0, "43407"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b0

    const-string p0, "MTS"

    goto/16 :goto_0

    .line 1477
    :cond_5b0
    const-string v0, "43406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b1

    const-string p0, "Perfectum Mobile"

    goto/16 :goto_0

    .line 1478
    :cond_5b1
    const-string v0, "43405"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b2

    const-string p0, "Ucell"

    goto/16 :goto_0

    .line 1479
    :cond_5b2
    const-string v0, "43402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b3

    const-string p0, "Uzmacom"

    goto/16 :goto_0

    .line 1480
    :cond_5b3
    const-string v0, "54101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b4

    const-string p0, "SMILE"

    goto/16 :goto_0

    .line 1481
    :cond_5b4
    const-string v0, "73401"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b5

    const-string p0, "Digitel"

    goto/16 :goto_0

    .line 1482
    :cond_5b5
    const-string v0, "73402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b6

    const-string p0, "Digitel"

    goto/16 :goto_0

    .line 1483
    :cond_5b6
    const-string v0, "73403"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b7

    const-string p0, "Digitel"

    goto/16 :goto_0

    .line 1484
    :cond_5b7
    const-string v0, "73406"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b8

    const-string p0, "Movilnet"

    goto/16 :goto_0

    .line 1485
    :cond_5b8
    const-string v0, "73404"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b9

    const-string p0, "movistar"

    goto/16 :goto_0

    .line 1486
    :cond_5b9
    const-string v0, "45208"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ba

    const-string p0, "3G EVNTelecom"

    goto/16 :goto_0

    .line 1487
    :cond_5ba
    const-string v0, "45207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5bb

    const-string p0, "Beeline VN"

    goto/16 :goto_0

    .line 1488
    :cond_5bb
    const-string v0, "45206"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5bc

    const-string p0, "E-Mobile"

    goto/16 :goto_0

    .line 1489
    :cond_5bc
    const-string v0, "45205"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5bd

    const-string p0, "HT Mobile"

    goto/16 :goto_0

    .line 1490
    :cond_5bd
    const-string v0, "45201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5be

    const-string p0, "MobiFone"

    goto/16 :goto_0

    .line 1491
    :cond_5be
    const-string v0, "45203"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5bf

    const-string p0, "S-Fone"

    goto/16 :goto_0

    .line 1492
    :cond_5bf
    const-string v0, "45204"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c0

    const-string p0, "Viettel Mobile"

    goto/16 :goto_0

    .line 1493
    :cond_5c0
    const-string v0, "45202"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c1

    const-string p0, "Vinaphone"

    goto/16 :goto_0

    .line 1494
    :cond_5c1
    const-string v0, "376350"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c2

    const-string p0, "C&W"

    goto/16 :goto_0

    .line 1495
    :cond_5c2
    const-string v0, "33805"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c3

    const-string p0, "Digicel"

    goto/16 :goto_0

    .line 1496
    :cond_5c3
    const-string v0, "376352"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c4

    const-string p0, "Islandcom"

    goto/16 :goto_0

    .line 1497
    :cond_5c4
    const-string v0, "42104"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c5

    const-string p0, "HiTS-UNITEL"

    goto/16 :goto_0

    .line 1498
    :cond_5c5
    const-string v0, "42102"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c6

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 1499
    :cond_5c6
    const-string v0, "42101"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c7

    const-string p0, "SabaFon"

    goto/16 :goto_0

    .line 1500
    :cond_5c7
    const-string v0, "42103"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c8

    const-string p0, "Yemen Mobile"

    goto/16 :goto_0

    .line 1501
    :cond_5c8
    const-string v0, "64502"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c9

    const-string p0, "MTN"

    goto/16 :goto_0

    .line 1502
    :cond_5c9
    const-string v0, "64501"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ca

    const-string p0, "Zain"

    goto/16 :goto_0

    .line 1503
    :cond_5ca
    const-string v0, "64503"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5cb

    const-string p0, "ZAMTEL"

    goto/16 :goto_0

    .line 1504
    :cond_5cb
    const-string v0, "64804"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5cc

    const-string p0, "Econet"

    goto/16 :goto_0

    .line 1505
    :cond_5cc
    const-string v0, "64801"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5cd

    const-string p0, "Net*One"

    goto/16 :goto_0

    .line 1506
    :cond_5cd
    const-string v0, "64803"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Telecel"

    goto/16 :goto_0
.end method
