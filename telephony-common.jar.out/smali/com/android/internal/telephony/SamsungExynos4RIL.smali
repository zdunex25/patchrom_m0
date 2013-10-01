.class public Lcom/android/internal/telephony/SamsungExynos4RIL;
.super Lcom/android/internal/telephony/RIL;
.source "SamsungExynos4RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SamsungExynos4RIL$1;,
        Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_ACCESS_PHONEBOOK_ENTRY:I = 0x2719

.field static final RIL_REQUEST_ACTIVATE_DATA_CALL:I = 0x2731

.field static final RIL_REQUEST_CALL_DEFLECTION:I = 0x271b

.field static final RIL_REQUEST_CDMA_GET_DATAPROFILE:I = 0x2739

.field static final RIL_REQUEST_CDMA_GET_SYSTEMPROPERTIES:I = 0x273b

.field static final RIL_REQUEST_CDMA_SET_DATAPROFILE:I = 0x273a

.field static final RIL_REQUEST_CDMA_SET_SYSTEMPROPERTIES:I = 0x273c

.field static final RIL_REQUEST_CHANGE_SIM_PERSO:I = 0x2732

.field static final RIL_REQUEST_DIAL_EMERGENCY:I = 0x2720

.field static final RIL_REQUEST_DIAL_VIDEO_CALL:I = 0x271a

.field static final RIL_REQUEST_ENTER_SIM_PERSO:I = 0x2733

.field static final RIL_REQUEST_GET_BARCODE_NUMBER:I = 0x2727

.field static final RIL_REQUEST_GET_CELL_BROADCAST_CONFIG:I = 0x2712

.field static final RIL_REQUEST_GET_LINE_ID:I = 0x2723

.field static final RIL_REQUEST_GET_MANUFACTURE_DATE_NUMBER:I = 0x2726

.field static final RIL_REQUEST_GET_PHONEBOOK_ENTRY:I = 0x2718

.field static final RIL_REQUEST_GET_PHONEBOOK_STORAGE_INFO:I = 0x2717

.field static final RIL_REQUEST_GET_PREFERRED_NETWORK_LIST:I = 0x2743

.field static final RIL_REQUEST_GET_SERIAL_NUMBER:I = 0x2725

.field static final RIL_REQUEST_GET_STOREAD_MSG_COUNT:I = 0x2721

.field static final RIL_REQUEST_GET_TIME_INFO:I = 0x2734

.field static final RIL_REQUEST_HANGUP_VT:I = 0x2744

.field static final RIL_REQUEST_LOCK_INFO:I = 0x271e

.field static final RIL_REQUEST_MODEM_HANGUP:I = 0x2740

.field static final RIL_REQUEST_OMADM_CLIENT_START_SESSION:I = 0x2737

.field static final RIL_REQUEST_OMADM_SEND_DATA:I = 0x2738

.field static final RIL_REQUEST_OMADM_SERVER_START_SESSION:I = 0x2736

.field static final RIL_REQUEST_OMADM_SETUP_SESSION:I = 0x2735

.field static final RIL_REQUEST_PS_ATTACH:I = 0x272f

.field static final RIL_REQUEST_PS_DETACH:I = 0x2730

.field static final RIL_REQUEST_READ_SMS_FROM_SIM:I = 0x271c

.field static final RIL_REQUEST_SEND_ENCODED_USSD:I = 0x2715

.field static final RIL_REQUEST_SEND_SMS_COUNT:I = 0x273d

.field static final RIL_REQUEST_SEND_SMS_MSG:I = 0x273e

.field static final RIL_REQUEST_SEND_SMS_MSG_READ_STATUS:I = 0x273f

.field static final RIL_REQUEST_SET_LINE_ID:I = 0x2724

.field static final RIL_REQUEST_SET_PDA_MEMORY_STATUS:I = 0x2716

.field static final RIL_REQUEST_SET_PREFERRED_NETWORK_LIST:I = 0x2742

.field static final RIL_REQUEST_SET_SIM_POWER:I = 0x2741

.field static final RIL_REQUEST_SIM_AUTH:I = 0x272e

.field static final RIL_REQUEST_SIM_CLOSE_CHANNEL:I = 0x272c

.field static final RIL_REQUEST_SIM_OPEN_CHANNEL:I = 0x272b

.field static final RIL_REQUEST_SIM_TRANSMIT_BASIC:I = 0x272a

.field static final RIL_REQUEST_SIM_TRANSMIT_CHANNEL:I = 0x272d

.field static final RIL_REQUEST_STK_SIM_INIT_EVENT:I = 0x2722

.field static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_BOOTSTRAP:I = 0x2728

.field static final RIL_REQUEST_UICC_GBA_AUTHENTICATE_NAF:I = 0x2729

.field static final RIL_REQUEST_USIM_PB_CAPA:I = 0x271d

.field static final RIL_UNSOL_AM:I = 0x2b02

.field static final RIL_UNSOL_DATA_SUSPEND_RESUME:I = 0x2b04

.field static final RIL_UNSOL_DEVICE_READY_NOTI:I = 0x2b00

.field static final RIL_UNSOL_DHA_STATE:I = 0x2b0b

.field static final RIL_UNSOL_DUN:I = 0x2b12

.field static final RIL_UNSOL_DUN_CALL_STATUS:I = 0x2afc

.field static final RIL_UNSOL_DUN_PIN_CONTROL_SIGNAL:I = 0x2b03

.field static final RIL_UNSOL_GPS_NOTI:I = 0x2b01

.field static final RIL_UNSOL_HSDPA_STATE_CHANGED:I = 0x2b08

.field static final RIL_UNSOL_IPV6_ADDR:I = 0x2b0e

.field static final RIL_UNSOL_MIP_CONNECT_STATUS:I = 0x2b18

.field static final RIL_UNSOL_NWK_INIT_DISC_REQUEST:I = 0x2b0f

.field static final RIL_UNSOL_O2_HOME_ZONE_INFO:I = 0x2aff

.field static final RIL_UNSOL_OMADM_SEND_DATA:I = 0x2b11

.field static final RIL_UNSOL_RELEASE_COMPLETE_MESSAGE:I = 0x2af9

.field static final RIL_UNSOL_RESPONSE_HANDOVER:I = 0x2b0d

.field static final RIL_UNSOL_RTS_INDICATION:I = 0x2b10

.field static final RIL_UNSOL_SAP:I = 0x2b05

.field static final RIL_UNSOL_SIM_SMS_STORAGE_AVAILALE:I = 0x2b07

.field static final RIL_UNSOL_STK_CALL_CONTROL_RESULT:I = 0x2afb

.field static final RIL_UNSOL_STK_SEND_SMS_RESULT:I = 0x2afa

.field static final RIL_UNSOL_SYSTEM_REBOOT:I = 0x2b13

.field static final RIL_UNSOL_TWO_MIC_STATE:I = 0x2b0a

.field static final RIL_UNSOL_UART:I = 0x2b0c

.field static final RIL_UNSOL_UTS_GETSMSCOUNT:I = 0x2b15

.field static final RIL_UNSOL_UTS_GETSMSMSG:I = 0x2b16

.field static final RIL_UNSOL_UTS_GET_UNREAD_SMS_STATUS:I = 0x2b17

.field static final RIL_UNSOL_VOICE_PRIVACY_CHANGED:I = 0x2b14

.field static final RIL_UNSOL_WB_AMR_STATE:I = 0x2b09


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private mIsGBModem:Z

.field protected mSamsungExynos4RILHandler:Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;

.field protected mSamsungExynos4RILThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 158
    const-string v0, "ro.ril.gbmodem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIsGBModem:Z

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->audioManager:Landroid/media/AudioManager;

    .line 163
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mQANElements:I

    .line 164
    return-void
.end method

.method private NeedReconnect()Z
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 188
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 190
    .local v1, ni_active:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SamsungExynos4RIL;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 168
    packed-switch p0, :pswitch_data_0

    .line 170
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    const-string v0, "DIAL_EMERGENCY"

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x2720
        :pswitch_0
    .end packed-switch
.end method

.method static samsungResponseToString(I)Ljava/lang/String;
    .locals 2
    .parameter "request"

    .prologue
    .line 715
    sparse-switch p0, :sswitch_data_0

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 717
    :sswitch_0
    const-string v0, "RIL_UNSOL_AM"

    goto :goto_0

    .line 718
    :sswitch_1
    const-string v0, "RIL_UNSOL_DUN_PIN_CONTROL_SIGNAL"

    goto :goto_0

    .line 719
    :sswitch_2
    const-string v0, "RIL_UNSOL_DATA_SUSPEND_RESUME"

    goto :goto_0

    .line 720
    :sswitch_3
    const-string v0, "RIL_UNSOL_STK_CALL_CONTROL_RESULT"

    goto :goto_0

    .line 721
    :sswitch_4
    const-string v0, "RIL_UNSOL_TWO_MIC_STATE"

    goto :goto_0

    .line 722
    :sswitch_5
    const-string v0, "RIL_UNSOL_WB_AMR_STATE"

    goto :goto_0

    .line 715
    nop

    :sswitch_data_0
    .sparse-switch
        0x2afb -> :sswitch_3
        0x2b02 -> :sswitch_0
        0x2b03 -> :sswitch_1
        0x2b04 -> :sswitch_2
        0x2b09 -> :sswitch_5
        0x2b0a -> :sswitch_4
    .end sparse-switch
.end method

.method private sendPreferedNetworktype(ILandroid/os/Message;)V
    .locals 3
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 227
    const/16 v1, 0x49

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 230
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 237
    return-void
.end method

.method private setWbAmr(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 749
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 750
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->audioManager:Landroid/media/AudioManager;

    const-string v1, "wb_amr=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 756
    :goto_0
    return-void

    .line 753
    :cond_0
    const-string v0, "RILJ"

    const-string v1, "setWbAmr(): setting audio parameter - wb_amr=off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->audioManager:Landroid/media/AudioManager;

    const-string v1, "wb_amr=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/SamsungExynos4RIL;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    .line 587
    :goto_0
    return-void

    .line 570
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 571
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    if-nez p3, :cond_1

    .line 576
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    :goto_1
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    goto :goto_0

    .line 578
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 592
    const-string v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v1, 0x2720

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 595
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 603
    return-void
.end method

.method protected findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 10
    .parameter "serial"

    .prologue
    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    .local v1, removalTime:J
    const-wide/16 v4, 0x0

    .line 329
    .local v4, timeDiff:J
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 330
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 332
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/RILRequest;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    .line 335
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v6, p1, :cond_2

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 337
    iget v6, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mRequestMessagesWaiting:I

    if-lez v6, :cond_1

    .line 338
    iget v6, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mRequestMessagesWaiting:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mRequestMessagesWaiting:I

    .line 339
    :cond_1
    monitor-exit v7

    .line 373
    .end local v3           #rr:Lcom/android/internal/telephony/RILRequest;
    :goto_1
    return-object v3

    .line 348
    .restart local v3       #rr:Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-wide v8, v3, Lcom/android/internal/telephony/RILRequest;->creationTime:J

    sub-long v4, v1, v8

    .line 349
    iget v6, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mWakeLockTimeout:I

    int-to-long v8, v6

    cmp-long v6, v4, v8

    if-lez v6, :cond_0

    .line 350
    const-string v6, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No response for ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v9}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " milliseconds."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/RILRequest;>;"
    .end local v3           #rr:Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/RILRequest;>;"
    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 938
    const/16 v1, 0x68

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 941
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 942
    const-string v1, "RILJ"

    const-string v2, "RIL_REQUEST_CDMA_GET_SUBSCRIPTION_SOURCE blocked!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 925
    const/16 v1, 0x6c

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 927
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
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

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 930
    iget v1, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mRilVersion:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 931
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 934
    :goto_0
    return-void

    .line 933
    :cond_0
    const-string v1, "RILJ"

    const-string v2, "RIL_REQUEST_VOICE_RADIO_TECH blocked!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected processSolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, found:Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 382
    .local v4, serial:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .local v0, error:I
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SamsungExynos4RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 388
    .local v3, rr:Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_0

    .line 389
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected solicited response! sn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v2, 0x0

    .line 396
    .local v2, ret:Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_3

    .line 398
    :cond_1
    :try_start_0
    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v6, :sswitch_data_0

    .line 510
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized solicited response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :catch_0
    move-exception v5

    .line 515
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, possible invalid RIL response"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 520
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 521
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 523
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 400
    .end local v5           #tr:Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 528
    .end local v2           #ret:Ljava/lang/Object;
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 530
    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0x19

    if-eq v6, v7, :cond_5

    .line 532
    :cond_4
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 533
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 401
    .restart local v2       #ret:Ljava/lang/Object;
    :sswitch_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 402
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 403
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 404
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 405
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 406
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 407
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 408
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 409
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 410
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 411
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 412
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 413
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 414
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 415
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 416
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 417
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 418
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 419
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 420
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 421
    :sswitch_15
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 422
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 423
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 424
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 425
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 426
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 427
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 428
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 429
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 430
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 431
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 432
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 433
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 434
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 435
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 436
    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 437
    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 438
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 439
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 440
    :sswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 441
    :sswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 442
    :sswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 443
    :sswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 444
    :sswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 445
    :sswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 446
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 447
    :sswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 448
    :sswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 449
    :sswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 450
    :sswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 451
    :sswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 452
    :sswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 453
    :sswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 454
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 455
    :sswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 456
    :sswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 457
    :sswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 458
    :sswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 459
    :sswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 460
    :sswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 461
    :sswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 462
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 463
    :sswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 464
    :sswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 465
    :sswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 466
    :sswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 467
    :sswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 468
    :sswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 469
    :sswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 470
    :sswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 471
    :sswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 472
    :sswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 473
    :sswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 474
    :sswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 475
    :sswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 476
    :sswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 477
    :sswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 478
    :sswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 479
    :sswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 480
    :sswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 481
    :sswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 482
    :sswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 483
    :sswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 484
    :sswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 485
    :sswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 486
    :sswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 487
    :sswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 488
    :sswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 489
    :sswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 490
    :sswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 491
    :sswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 492
    :sswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 493
    :sswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 494
    :sswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 495
    :sswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 496
    :sswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 497
    :sswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 498
    :sswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 499
    :sswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 500
    :sswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 501
    :sswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 502
    :sswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 503
    :sswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 504
    :sswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 505
    :sswitch_69
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 506
    :sswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 507
    :sswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1

    .line 508
    :sswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .line 538
    .end local v2           #ret:Ljava/lang/Object;
    :cond_5
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 550
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p0, v7, v2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 553
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v6, :cond_7

    .line 554
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v6, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 555
    iget-object v6, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 558
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 539
    :catch_1
    move-exception v5

    .line 540
    .restart local v5       #tr:Ljava/lang/Throwable;
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/SamsungExynos4RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exception, Processing Samsung SMS fix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 544
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_0

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_37
        0x39 -> :sswitch_38
        0x3a -> :sswitch_39
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_3b
        0x3d -> :sswitch_3c
        0x3e -> :sswitch_3d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x41 -> :sswitch_40
        0x42 -> :sswitch_41
        0x43 -> :sswitch_42
        0x44 -> :sswitch_43
        0x45 -> :sswitch_44
        0x46 -> :sswitch_45
        0x47 -> :sswitch_46
        0x48 -> :sswitch_47
        0x49 -> :sswitch_48
        0x4a -> :sswitch_49
        0x4b -> :sswitch_4a
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4c
        0x4e -> :sswitch_4d
        0x4f -> :sswitch_4e
        0x50 -> :sswitch_4f
        0x51 -> :sswitch_50
        0x52 -> :sswitch_51
        0x53 -> :sswitch_52
        0x54 -> :sswitch_53
        0x55 -> :sswitch_54
        0x56 -> :sswitch_5d
        0x57 -> :sswitch_55
        0x58 -> :sswitch_56
        0x59 -> :sswitch_57
        0x5a -> :sswitch_58
        0x5b -> :sswitch_59
        0x5c -> :sswitch_5a
        0x5d -> :sswitch_5b
        0x5e -> :sswitch_5c
        0x5f -> :sswitch_5e
        0x60 -> :sswitch_5f
        0x61 -> :sswitch_60
        0x62 -> :sswitch_61
        0x63 -> :sswitch_64
        0x64 -> :sswitch_62
        0x65 -> :sswitch_63
        0x66 -> :sswitch_65
        0x67 -> :sswitch_66
        0x68 -> :sswitch_67
        0x69 -> :sswitch_68
        0x6a -> :sswitch_69
        0x6b -> :sswitch_6a
        0x6c -> :sswitch_6b
        0x2720 -> :sswitch_6c
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 10
    .parameter "p"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 610
    .local v1, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 612
    .local v4, response:I
    sparse-switch v4, :sswitch_data_0

    .line 626
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 629
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 613
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .line 633
    .local v5, ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    .line 636
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 637
    .local v6, state:I
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Radio state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    packed-switch v6, :pswitch_data_0

    .line 659
    :cond_1
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SamsungExynos4RIL;->getRadioStateFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 660
    .local v3, newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New Radio state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SamsungExynos4RIL;->switchToRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 614
    .end local v3           #newState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v5           #ret:Ljava/lang/Object;
    .end local v6           #state:I
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 615
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 617
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 618
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 619
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 620
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 621
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 622
    .end local v5           #ret:Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 642
    .restart local v6       #state:I
    :pswitch_0
    const/4 v6, 0x1

    .line 643
    goto :goto_2

    .line 646
    :pswitch_1
    const/16 v6, 0xa

    .line 647
    goto :goto_2

    .line 650
    :pswitch_2
    const/16 v6, 0xa

    .line 653
    const-string v7, "RILJ"

    const-string v8, "SIM is PIN-unlocked now"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v7, :cond_1

    .line 655
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2

    .line 664
    .end local v6           #state:I
    :sswitch_a
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 666
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    if-eqz v7, :cond_0

    .line 667
    iget-object v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mGsmBroadcastSmsRegistrant:Landroid/os/Registrant;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v9, v5, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 672
    :sswitch_b
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 675
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/SamsungExynos4RIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 676
    iget v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mPreferredNetworkType:I

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/SamsungExynos4RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    .line 677
    iget v7, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mCdmaSubscription:I

    invoke-virtual {p0, v7, v9}, Lcom/android/internal/telephony/SamsungExynos4RIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 678
    check-cast v5, [I

    .end local v5           #ret:Ljava/lang/Object;
    check-cast v5, [I

    aget v7, v5, v8

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SamsungExynos4RIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_0

    .line 682
    .restart local v5       #ret:Ljava/lang/Object;
    :sswitch_c
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    move-object v0, v5

    .line 683
    check-cast v0, Ljava/lang/String;

    .line 684
    .local v0, amString:Ljava/lang/String;
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executing AM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "am "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 688
    :catch_0
    move-exception v2

    .line 689
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 690
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "am "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " could not be executed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 694
    .end local v0           #amString:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    :sswitch_d
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 697
    :sswitch_e
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 700
    :sswitch_f
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 703
    :sswitch_10
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 706
    :sswitch_11
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungUnsljLogRet(ILjava/lang/Object;)V

    .line 707
    check-cast v5, [I

    .end local v5           #ret:Ljava/lang/Object;
    check-cast v5, [I

    aget v7, v5, v8

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SamsungExynos4RIL;->setWbAmr(I)V

    goto/16 :goto_0

    .line 612
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3fd -> :sswitch_2
        0x40a -> :sswitch_3
        0x2afb -> :sswitch_7
        0x2b02 -> :sswitch_4
        0x2b03 -> :sswitch_5
        0x2b04 -> :sswitch_6
        0x2b09 -> :sswitch_9
        0x2b0a -> :sswitch_8
    .end sparse-switch

    .line 633
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x3fd -> :sswitch_a
        0x40a -> :sswitch_b
        0x2afb -> :sswitch_f
        0x2b02 -> :sswitch_c
        0x2b03 -> :sswitch_d
        0x2b04 -> :sswitch_e
        0x2b09 -> :sswitch_11
        0x2b0a -> :sswitch_10
    .end sparse-switch

    .line 639
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17
    .parameter "p"

    .prologue
    .line 765
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    .line 766
    .local v1, dataAvail:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 767
    .local v7, pos:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    .line 769
    .local v9, size:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel pos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Parcel dataAvail = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 776
    .local v6, num:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "num = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 779
    .local v8, response:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_7

    .line 781
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 782
    .local v2, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 784
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_2
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 789
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v4, 0x1

    .line 790
    .local v4, isVideo:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 793
    .local v5, np:I
    invoke-static {v5}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 795
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 796
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 798
    .local v11, uusInfoPresent:I
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMpty = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isMT = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "als = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->als:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVoice = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideo = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "number = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "np = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "namePresentation = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uusInfoPresent = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 813
    new-instance v12, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v12}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 814
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 815
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 817
    .local v10, userData:[B
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 818
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (string)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v15}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const-string v12, "RILJ"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming UUS : data (hex): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v14}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .end local v10           #userData:[B
    :goto_6
    iget-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v13, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 833
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    iget-boolean v12, v2, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v12, :cond_6

    .line 836
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 837
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is enabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 785
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 786
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 788
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 789
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 790
    .restart local v4       #isVideo:Z
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 827
    .restart local v5       #np:I
    .restart local v11       #uusInfoPresent:I
    :cond_5
    const-string v12, "RILJ"

    const-string v13, "Incoming UUS : NOT present!"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 839
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v12}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 840
    const-string v12, "RILJ"

    const-string v13, "InCall VoicePrivacy is disabled"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 844
    .end local v2           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v4           #isVideo:Z
    .end local v5           #np:I
    .end local v11           #uusInfoPresent:I
    :cond_7
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 846
    return-object v8
.end method

.method protected responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 853
    .local v0, response:[I
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 857
    aget v1, v0, v3

    iput v1, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mPreferredNetworkType:I

    .line 861
    :cond_0
    aget v1, v0, v3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 862
    const-string v1, "RILJ"

    const-string v2, "Overriding network type response from GLOBAL to WCDMA preferred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    aput v3, v0, v3

    .line 866
    :cond_1
    return-object v0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .parameter "p"

    .prologue
    const/16 v13, 0x63

    const/16 v7, 0x1f

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 872
    const/16 v11, 0xc

    .line 874
    .local v11, numInts:I
    const/4 v8, 0x1

    .line 877
    .local v8, isGsm:Z
    new-array v12, v11, [I

    .line 878
    .local v12, response:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, v12, v9

    .line 878
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 897
    :cond_0
    aget v1, v12, v5

    .line 898
    .local v1, mGsmSignalStrength:I
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength (raw): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    and-int/lit16 v1, v1, 0xff

    .line 900
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength (corrected): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    if-ltz v1, :cond_1

    if-le v1, v7, :cond_2

    aget v2, v12, v5

    if-eq v2, v13, :cond_2

    .line 904
    :cond_1
    aget v10, v12, v6

    .line 905
    .local v10, mCdmaDbm:I
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength-fallback (raw): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    if-gez v10, :cond_3

    .line 908
    const/16 v1, 0x63

    .line 914
    :goto_1
    const-string v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseSignalStrength-fallback (corrected): gsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    .end local v10           #mCdmaDbm:I
    :cond_2
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v2, 0x1

    aget v2, v12, v2

    aget v3, v12, v6

    const/4 v4, 0x3

    aget v4, v12, v4

    const/4 v5, 0x4

    aget v5, v12, v5

    const/4 v6, 0x5

    aget v6, v12, v6

    const/4 v7, 0x6

    aget v7, v12, v7

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 920
    .local v0, signalStrength:Landroid/telephony/SignalStrength;
    return-object v0

    .line 909
    .end local v0           #signalStrength:Landroid/telephony/SignalStrength;
    .restart local v10       #mCdmaDbm:I
    :cond_3
    if-le v10, v7, :cond_4

    if-eq v10, v13, :cond_4

    .line 910
    const/16 v1, 0x1f

    goto :goto_1

    .line 912
    :cond_4
    move v1, v10

    goto :goto_1
.end method

.method protected samsungUnsljLog(I)V
    .locals 2
    .parameter "response"

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method protected samsungUnsljLogMore(ILjava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "more"

    .prologue
    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method protected samsungUnsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method protected samsungUnsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .parameter "response"
    .parameter "ret"

    .prologue
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SamsungExynos4RIL;->samsungResponseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLogv(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "setCurrentPreferredNetworkType IGNORED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->riljLog(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 4
    .parameter "networkType"
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/SamsungExynos4RIL;->NeedReconnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILHandler:Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;

    if-nez v2, :cond_0

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mSamsungExynos4RILThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILThread:Landroid/os/HandlerThread;

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 212
    .local v1, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;-><init>(Lcom/android/internal/telephony/SamsungExynos4RIL;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILHandler:Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;

    .line 214
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILHandler:Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;->setPreferedNetworkType(ILandroid/os/Message;)V

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILHandler:Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;

    if-eqz v2, :cond_2

    .line 217
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILThread:Landroid/os/HandlerThread;

    .line 218
    iput-object v3, p0, Lcom/android/internal/telephony/SamsungExynos4RIL;->mSamsungExynos4RILHandler:Lcom/android/internal/telephony/SamsungExynos4RIL$ConnectivityHandler;

    .line 220
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SamsungExynos4RIL;->sendPreferedNetworktype(ILandroid/os/Message;)V

    goto :goto_0
.end method
