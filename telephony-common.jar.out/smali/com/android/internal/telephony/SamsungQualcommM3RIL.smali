.class public Lcom/android/internal/telephony/SamsungQualcommM3RIL;
.super Lcom/android/internal/telephony/SamsungQualcommRIL;
.source "SamsungQualcommM3RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SamsungQualcommRIL;-><init>(Landroid/content/Context;II)V

    .line 40
    return-void
.end method


# virtual methods
.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 8
    .parameter "p"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 49
    .local v2, response:I
    packed-switch v2, :pswitch_data_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommRIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 92
    :goto_0
    return-void

    .line 50
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommM3RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, ret:Ljava/lang/Object;
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .local v4, state:I
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Radio state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    packed-switch v4, :pswitch_data_2

    .line 87
    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SamsungQualcommM3RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 88
    .local v1, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New Radio state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungQualcommM3RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 70
    .end local v1           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :pswitch_2
    const/4 v4, 0x1

    .line 71
    goto :goto_1

    .line 74
    :pswitch_3
    const/16 v4, 0xa

    .line 75
    goto :goto_1

    .line 78
    :pswitch_4
    const/16 v4, 0xa

    .line 81
    const-string v5, "RILJ"

    const-string v6, "SIM is PIN-unlocked now"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/SamsungQualcommM3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_0

    .line 83
    iget-object v5, p0, Lcom/android/internal/telephony/SamsungQualcommM3RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch

    .line 61
    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_1
    .end packed-switch

    .line 67
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
