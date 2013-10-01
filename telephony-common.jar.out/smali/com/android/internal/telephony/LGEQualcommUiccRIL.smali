.class public Lcom/android/internal/telephony/LGEQualcommUiccRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "LGEQualcommUiccRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 37
    iput-boolean v0, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->RILJ_LOGV:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->RILJ_LOGD:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 104
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 105
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, numApplications:I
    const/16 v6, 0x8

    if-le v4, v6, :cond_0

    .line 116
    const/16 v4, 0x8

    .line 118
    :cond_0
    new-array v6, v4, [Lcom/android/internal/telephony/IccCardApplicationStatus;

    iput-object v6, v5, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    .line 121
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 122
    new-instance v2, Lcom/android/internal/telephony/IccCardApplicationStatus;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplicationStatus;-><init>()V

    .line 123
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1_replaced:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 135
    iget-object v6, v5, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aput-object v2, v6, v3

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplicationStatus;
    :cond_1
    const/4 v0, -0x1

    .line 138
    .local v0, appIndex:I
    iget v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mPhoneType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 139
    iget v0, v5, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 140
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_1
    if-lez v4, :cond_3

    .line 147
    iget-object v6, v5, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v1, v6, v0

    .line 148
    .local v1, application:Lcom/android/internal/telephony/IccCardApplicationStatus;
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    .line 149
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mUSIM:Z

    .line 151
    iget v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mSetPreferredNetworkType:I

    .line 153
    iget-object v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    .line 155
    :cond_2
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplicationStatus;
    :cond_3
    return-object v5

    .line 142
    :cond_4
    iget v0, v5, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 143
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplicationStatus;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 90
    const-string v1, "datacall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    .line 92
    .local v0, oldRil:Z
    if-nez v0, :cond_0

    .line 93
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20
    .parameter "p"

    .prologue
    .line 164
    const/16 v17, 0xc

    .line 167
    .local v17, numInts:I
    const-string v1, "signalstrength"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGEQualcommUiccRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v18

    .line 168
    .local v18, oldRil:Z
    const/16 v16, 0x0

    .line 171
    .local v16, noLte:Z
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 172
    .local v19, response:[I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 173
    if-nez v18, :cond_0

    if-eqz v16, :cond_2

    :cond_0
    const/4 v1, 0x6

    if-le v15, v1, :cond_2

    const/16 v1, 0xc

    if-ge v15, v1, :cond_2

    .line 174
    const/4 v1, -0x1

    aput v1, v19, v15

    .line 178
    :goto_1
    const/4 v1, 0x7

    if-ne v15, v1, :cond_1

    aget v1, v19, v15

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1

    .line 179
    const/4 v1, -0x1

    aput v1, v19, v15

    .line 180
    const/16 v16, 0x1

    .line 172
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v19, v15

    goto :goto_1

    .line 184
    :cond_3
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v2, 0x0

    aget v2, v19, v2

    const/4 v3, 0x1

    aget v3, v19, v3

    const/4 v4, 0x2

    aget v4, v19, v4

    const/4 v5, 0x3

    aget v5, v19, v5

    const/4 v6, 0x4

    aget v6, v19, v6

    const/4 v7, 0x5

    aget v7, v19, v7

    const/4 v8, 0x6

    aget v8, v19, v8

    const/4 v9, 0x7

    aget v9, v19, v9

    const/16 v10, 0x8

    aget v10, v19, v10

    const/16 v11, 0x9

    aget v11, v19, v11

    const/16 v12, 0xa

    aget v12, v19, v12

    const/16 v13, 0xb

    aget v13, v19, v13

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    return-object v1
.end method
