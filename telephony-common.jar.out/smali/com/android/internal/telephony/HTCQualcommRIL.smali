.class public Lcom/android/internal/telephony/HTCQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "HTCQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0x10a3

.field private static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0x10a6

.field private static final RIL_UNSOL_ENTER_LPM:I = 0xbcf

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x167d

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x167b

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x12c2

.field private static final RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED:I = 0x520c

.field private static final RIL_UNSOL_TPMR_ID:I = 0xbd0


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 57
    return-void
.end method


# virtual methods
.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 127
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .local v1, response:I
    sparse-switch v1, :sswitch_data_0

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 130
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 166
    :sswitch_1
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 168
    const-string v4, "skipradiooff"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v3

    .line 171
    .local v3, skipRadioPowerOff:Z
    if-nez v3, :cond_1

    .line 172
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 174
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 175
    iget v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/HTCQualcommRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 176
    check-cast v2, [I

    .end local v2           #ret:Ljava/lang/Object;
    check-cast v2, [I

    aget v4, v2, v5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HTCQualcommRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto :goto_0

    .line 131
    .end local v3           #skipRadioPowerOff:Z
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 132
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 133
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 134
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 135
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 136
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 137
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 138
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 158
    :sswitch_a
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 160
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x40a -> :sswitch_9
        0xbcf -> :sswitch_0
        0xbd0 -> :sswitch_2
        0x10a3 -> :sswitch_3
        0x10a6 -> :sswitch_4
        0x12c2 -> :sswitch_5
        0x167b -> :sswitch_7
        0x167d -> :sswitch_8
        0x520c -> :sswitch_6
    .end sparse-switch

    .line 149
    :sswitch_data_1
    .sparse-switch
        0x40a -> :sswitch_1
        0xbcf -> :sswitch_a
        0xbd0 -> :sswitch_a
        0x10a3 -> :sswitch_a
        0x10a6 -> :sswitch_a
        0x12c2 -> :sswitch_a
        0x167b -> :sswitch_a
        0x167d -> :sswitch_a
        0x520c -> :sswitch_a
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, ret:Ljava/lang/Object;
    const-string v2, "forceCdmaLteNetworkType"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    .line 67
    .local v0, forceCdmaLte:Z
    if-eqz v0, :cond_0

    .line 68
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/HTCQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 71
    :cond_0
    return-object v1
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 19
    .parameter "p"

    .prologue
    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v16

    .line 96
    .local v16, parcelSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .local v3, gsmSignalStrength:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 98
    .local v4, gsmBitErrorRate:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 99
    .local v5, cdmaDbm:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 100
    .local v6, cdmaEcio:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 101
    .local v7, evdoDbm:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 102
    .local v8, evdoEcio:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 103
    .local v9, evdoSnr:I
    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 108
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 109
    .local v10, lteSignalStrength:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 110
    .local v11, lteRsrp:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 111
    .local v12, lteRsrq:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 112
    .local v13, lteRssnr:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 113
    .local v14, lteCqi:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HTCQualcommRIL;->mPhoneType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v15, 0x1

    .line 115
    .local v15, isGsm:Z
    :goto_0
    new-instance v2, Landroid/telephony/SignalStrength;

    invoke-direct/range {v2 .. v15}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 119
    .local v2, signalStrength:Landroid/telephony/SignalStrength;
    return-object v2

    .line 113
    .end local v2           #signalStrength:Landroid/telephony/SignalStrength;
    .end local v15           #isGsm:Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_0
.end method
