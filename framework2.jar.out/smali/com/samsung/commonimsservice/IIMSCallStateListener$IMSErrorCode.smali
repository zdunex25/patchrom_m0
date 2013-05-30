.class public Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;
.super Ljava/lang/Object;
.source "IIMSCallStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/commonimsservice/IIMSCallStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IMSErrorCode"
.end annotation


# static fields
.field public static final BAD_REQUEST:I = 0x190

.field public static final CALL_HOLD_FAILED:I = 0x2be

.field public static final CALL_RESUME_FAILED:I = 0x2bf

.field public static final CALL_SWITCH_FAILURE:I = 0x2bc

.field public static final CALL_SWITCH_REJECTED:I = 0x2bd

.field public static final CALL_TEMP_UNAVAILABLE_415_CAUSE:I = -0x2f

.field public static final CALL_TIMEOUT:I = -0x30

.field public static final CLIENT_ERROR:I = -0x4

.field public static final CONGESTION:I = -0xf

.field public static final CROSS_DOMAIN_AUTHENTICATION:I = -0xb

.field public static final DATA_CONNECTION_LOST:I = -0xa

.field public static final ERROR:I = -0xd

.field public static final IMS_CALL_ADDRESS_INCOMPLETE:I = -0x16

.field public static final IMS_CALL_ALTERNATIVE_SERVICES:I = -0x2c

.field public static final IMS_CALL_END_CALL_NW_HANDOVER:I = -0x2e

.field public static final IMS_CALL_FAILED:I = -0x13

.field public static final IMS_CALL_FORBIDDEN:I = -0x19

.field public static final IMS_CALL_FORBIDDEN_RSN_EXPIRED:I = -0x28

.field public static final IMS_CALL_FORBIDDEN_RSN_GROUP_CALL_SERVICE_UNAVAILABLE:I = -0x29

.field public static final IMS_CALL_FORBIDDEN_RSN_OUTGOING_CALLS_IMPOSSIBLE:I = -0x2b

.field public static final IMS_CALL_FORBIDDEN_RSN_TEMPORARY_DISABILITY:I = -0x2a

.field public static final IMS_CALL_METHOD_NOT_ALLOWED:I = -0x18

.field public static final IMS_CALL_NOT_ACCEPTABLE:I = -0x17

.field public static final IMS_CALL_NOT_ACCEPTABLE_DIVERT:I = -0x25

.field public static final IMS_CALL_REJECTED:I = -0x12

.field public static final IMS_CALL_REQ_FAILED:I = -0x10

.field public static final IMS_CALL_REQ_TERMINATED:I = -0x14

.field public static final IMS_CALL_SERVER_INTERNAL_ERR:I = -0x20

.field public static final IMS_CALL_SERVICE_UNAVAILABLE:I = -0x21

.field public static final IMS_CALL_SESSION_TIMEOUT:I = -0x22

.field public static final IMS_CALL_STATUS_ADD_USER_TO_SESSION_FAILURE:I = -0x2d

.field public static final IMS_FAILED_TO_GO_READY:I = -0x1f

.field public static final IMS_PPP_OPEN_FAILURE:I = -0x26

.field public static final IMS_PPP_STATUS_CLOSE_EVENT:I = -0x1e

.field public static final IMS_QOS_FAILURE:I = -0x1a

.field public static final IMS_QOS_INCALL_SUSPEND:I = -0x1c

.field public static final IMS_QOS_INCALL_UNAWARE:I = -0x1d

.field public static final IMS_QOS_NW_UNAWARE:I = -0x1b

.field public static final IMS_REG_REQ_FAILED:I = -0x24

.field public static final IMS_REG_TIMEOUT:I = -0x23

.field public static final IMS_SESSION_ABORT:I = -0x15

.field public static final IMS_SIP_REG_FAILURE:I = -0x11

.field public static final INVALID_CREDENTIALS:I = -0x8

.field public static final INVALID_REMOTE_URI:I = -0x6

.field public static final IN_PROGRESS:I = -0x9

.field public static final NOTACCEPTABLE_AUTO_DIVERT:I = -0xe

.field public static final NO_ERROR:I = 0x0

.field public static final PEER_NOT_REACHABLE:I = -0x7

.field public static final RTP_TIME_OUT:I = -0x27

.field public static final SERVER_ERROR:I = -0x2

.field public static final SERVER_UNREACHABLE:I = -0xc

.field public static final SOCKET_ERROR:I = -0x1

.field public static final TIME_OUT:I = -0x5

.field public static final TRANSACTION_TERMINTED:I = -0x3

.field public static final UNSUPPORTED_MEDIA:I = 0x19f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 188
    sparse-switch p0, :sswitch_data_0

    .line 315
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 191
    :sswitch_0
    const-string v0, "No Error"

    goto :goto_0

    .line 194
    :sswitch_1
    const-string v0, "Session time out"

    goto :goto_0

    .line 197
    :sswitch_2
    const-string v0, "Socket failure"

    goto :goto_0

    .line 200
    :sswitch_3
    const-string v0, "Server error"

    goto :goto_0

    .line 203
    :sswitch_4
    const-string v0, "Transaction terminated"

    goto :goto_0

    .line 206
    :sswitch_5
    const-string v0, "Client error"

    goto :goto_0

    .line 209
    :sswitch_6
    const-string v0, "Timeout"

    goto :goto_0

    .line 212
    :sswitch_7
    const-string v0, "Invalid remote address"

    goto :goto_0

    .line 215
    :sswitch_8
    const-string v0, "Unreachable"

    goto :goto_0

    .line 218
    :sswitch_9
    const-string v0, "Cannot connect HD call"

    goto :goto_0

    .line 221
    :sswitch_a
    const-string v0, "Authentication failed"

    goto :goto_0

    .line 224
    :sswitch_b
    const-string v0, "In progress"

    goto :goto_0

    .line 227
    :sswitch_c
    const-string v0, "Network disconnected"

    goto :goto_0

    .line 230
    :sswitch_d
    const-string v0, "Invalid domain"

    goto :goto_0

    .line 233
    :sswitch_e
    const-string v0, "Server not rechable"

    goto :goto_0

    .line 236
    :sswitch_f
    const-string v0, "Error"

    goto :goto_0

    .line 239
    :sswitch_10
    const-string v0, "Media not supported"

    goto :goto_0

    .line 242
    :sswitch_11
    const-string v0, "Call request failed"

    goto :goto_0

    .line 245
    :sswitch_12
    const-string v0, "Registration failed"

    goto :goto_0

    .line 248
    :sswitch_13
    const-string v0, "Session rejected"

    goto :goto_0

    .line 251
    :sswitch_14
    const-string v0, "Call failed"

    goto :goto_0

    .line 254
    :sswitch_15
    const-string v0, "Request terminated"

    goto :goto_0

    .line 257
    :sswitch_16
    const-string v0, "Session aborted"

    goto :goto_0

    .line 260
    :sswitch_17
    const-string v0, "Invalid address"

    goto :goto_0

    .line 263
    :sswitch_18
    const-string v0, "call not allowed"

    goto :goto_0

    .line 266
    :sswitch_19
    const-string v0, "Request type not allowed"

    goto :goto_0

    .line 273
    :sswitch_1a
    const-string v0, "Call not allowed"

    goto :goto_0

    .line 276
    :sswitch_1b
    const-string v0, "Service unavailable"

    goto :goto_0

    .line 279
    :sswitch_1c
    const-string v0, "Internal server error"

    goto :goto_0

    .line 282
    :sswitch_1d
    const-string v0, "Call failed"

    goto :goto_0

    .line 285
    :sswitch_1e
    const-string v0, "Network connection lost"

    goto :goto_0

    .line 288
    :sswitch_1f
    const-string v0, "QOS incall unaware"

    goto :goto_0

    .line 291
    :sswitch_20
    const-string v0, "QOS suspended"

    goto :goto_0

    .line 294
    :sswitch_21
    const-string v0, "QOS network unaware"

    goto :goto_0

    .line 297
    :sswitch_22
    const-string v0, "QOS failed"

    goto :goto_0

    .line 300
    :sswitch_23
    const-string v0, "Call not acceptable and auto divert"

    goto :goto_0

    .line 303
    :sswitch_24
    const-string v0, "Network busy"

    goto :goto_0

    .line 306
    :sswitch_25
    const-string v0, "Registration time out"

    goto :goto_0

    .line 309
    :sswitch_26
    const-string v0, "Registration request failed"

    goto :goto_0

    .line 312
    :sswitch_27
    const-string v0, "RTP Timeout"

    goto :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        -0x2f -> :sswitch_9
        -0x2b -> :sswitch_1a
        -0x2a -> :sswitch_1a
        -0x29 -> :sswitch_1a
        -0x28 -> :sswitch_1a
        -0x27 -> :sswitch_27
        -0x24 -> :sswitch_26
        -0x23 -> :sswitch_25
        -0x22 -> :sswitch_1
        -0x21 -> :sswitch_1b
        -0x20 -> :sswitch_1c
        -0x1f -> :sswitch_1d
        -0x1e -> :sswitch_1e
        -0x1d -> :sswitch_1f
        -0x1c -> :sswitch_20
        -0x1b -> :sswitch_21
        -0x1a -> :sswitch_22
        -0x19 -> :sswitch_1a
        -0x18 -> :sswitch_19
        -0x17 -> :sswitch_18
        -0x16 -> :sswitch_17
        -0x15 -> :sswitch_16
        -0x14 -> :sswitch_15
        -0x13 -> :sswitch_14
        -0x12 -> :sswitch_13
        -0x11 -> :sswitch_12
        -0x10 -> :sswitch_11
        -0xf -> :sswitch_24
        -0xe -> :sswitch_23
        -0xd -> :sswitch_f
        -0xc -> :sswitch_e
        -0xb -> :sswitch_d
        -0xa -> :sswitch_c
        -0x9 -> :sswitch_b
        -0x8 -> :sswitch_a
        -0x7 -> :sswitch_8
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_6
        -0x4 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_0
        0x19f -> :sswitch_10
    .end sparse-switch
.end method
