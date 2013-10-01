.class public Lcom/android/internal/telephony/SemcQualcomm7x30RIL;
.super Lcom/android/internal/telephony/RIL;
.source "SemcQualcomm7x30RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;
    }
.end annotation


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_UNAVALIABLE:I

.field protected mAid:Ljava/lang/String;

.field protected mIccHandler:Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->RILJ_LOGV:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->RILJ_LOGD:Z

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->RIL_INT_RADIO_OFF:I

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->RIL_INT_RADIO_UNAVALIABLE:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->RIL_INT_RADIO_ON:I

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mQANElements:I

    .line 54
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .locals 6
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 256
    packed-switch p1, :pswitch_data_0

    .line 281
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 259
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccHandler:Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;

    if-eqz v3, :cond_0

    .line 260
    iput-object v4, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccThread:Landroid/os/HandlerThread;

    .line 261
    iput-object v4, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccHandler:Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;

    .line 284
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 285
    return-void

    .line 265
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 266
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 268
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccHandler:Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;

    if-nez v3, :cond_1

    .line 269
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccThread:Landroid/os/HandlerThread;

    .line 272
    iget-object v3, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 275
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;-><init>(Lcom/android/internal/telephony/SemcQualcomm7x30RIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccHandler:Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;

    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mIccHandler:Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;->run()V

    .line 278
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 279
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 106
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 116
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 172
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 174
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    if-nez p3, :cond_1

    .line 179
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->riljLog(Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 191
    return-void

    .line 181
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method protected getDataCallState(Landroid/os/Parcel;I)Lcom/android/internal/telephony/DataCallState;
    .locals 6
    .parameter "p"
    .parameter "version"

    .prologue
    .line 58
    new-instance v1, Lcom/android/internal/telephony/DataCallState;

    invoke-direct {v1}, Lcom/android/internal/telephony/DataCallState;-><init>()V

    .line 60
    .local v1, dataCall:Lcom/android/internal/telephony/DataCallState;
    iput p2, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 61
    const/4 v4, 0x5

    if-ge p2, v4, :cond_2

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 70
    :cond_0
    const-string v4, "rmnet0"

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 95
    :cond_1
    :goto_0
    return-object v1

    .line 72
    .end local v0           #addresses:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 78
    iget v4, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, v1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "getDataCallState, no ifname"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .restart local v0       #addresses:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 84
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 86
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, dnses:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 88
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 90
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, gateways:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 153
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 158
    const/16 v1, 0xb

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 160
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->riljLog(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 167
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 146
    iget-object v9, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 147
    return-void
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 225
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .local v1, response:I
    sparse-switch v1, :sswitch_data_0

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 236
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 248
    :goto_0
    return-void

    .line 228
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 240
    .local v2, ret:Ljava/lang/Object;
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 242
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 243
    .local v3, state:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->setRadioStateFromRILInt(I)V

    goto :goto_0

    .line 229
    .end local v2           #ret:Ljava/lang/Object;
    .end local v3           #state:I
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x40c -> :sswitch_1
    .end sparse-switch

    .line 240
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 132
    iget-object v4, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 139
    iget-object v5, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method public setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const/16 v1, 0x2e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 202
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 206
    return-void

    .line 200
    .end local v0           #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_0
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .restart local v0       #rr:Lcom/android/internal/telephony/RILRequest;
    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V

    .line 212
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->setNetworkSelectionMode(Ljava/lang/String;Landroid/os/Message;)V

    .line 218
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 101
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 111
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 121
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 126
    return-void
.end method
