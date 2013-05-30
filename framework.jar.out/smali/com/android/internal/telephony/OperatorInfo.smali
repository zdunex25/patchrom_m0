.class public Lcom/android/internal/telephony/OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OperatorInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lac:I

.field private operatorAlphaLong:Ljava/lang/String;

.field private operatorAlphaShort:Ljava/lang/String;

.field private operatorNumeric:Ljava/lang/String;

.field operatorRat:Ljava/lang/String;

.field private state:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/OperatorInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 45
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorRat:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 94
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/OperatorInfo;->lac:I

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V
    .locals 4
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"
    .parameter "lac"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 45
    const-string/jumbo v2, "unknown"

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorRat:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 132
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplayRatInfoInManualNetSearchList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, oper:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v0, v2, v3

    .line 135
    .local v0, act:B
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OperatorInfo;->actByteToStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorRat:Ljava/lang/String;

    .line 142
    .end local v0           #act:B
    .end local v1           #oper:[Ljava/lang/String;
    :cond_0
    iput p5, p0, Lcom/android/internal/telephony/OperatorInfo;->lac:I

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"

    .prologue
    .line 102
    invoke-static {p4}, Lcom/android/internal/telephony/OperatorInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"
    .parameter "lacString"

    .prologue
    .line 111
    invoke-static {p4}, Lcom/android/internal/telephony/OperatorInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 116
    return-void
.end method

.method private actByteToStr(I)Ljava/lang/String;
    .locals 5
    .parameter "act"

    .prologue
    .line 161
    const/4 v2, 0x1

    .line 162
    .local v2, IPC_NET_ACT_GSM:I
    const/4 v1, 0x2

    .line 163
    .local v1, IPC_NET_ACT_GPRS:I
    const/4 v0, 0x3

    .line 164
    .local v0, IPC_NET_ACT_EGPRS:I
    const/4 v3, 0x4

    .line 166
    .local v3, IPC_NET_ACT_UMTS:I
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 167
    const-string v4, "2G"

    .line 173
    :goto_0
    return-object v4

    .line 168
    :cond_0
    const/16 v4, 0x21

    if-ne p1, v4, :cond_1

    .line 169
    const-string v4, "4G"

    goto :goto_0

    .line 170
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 171
    const-string v4, "3G"

    goto :goto_0

    .line 173
    :cond_2
    const-string/jumbo v4, "unknown"

    goto :goto_0
.end method

.method private ratToString(I)Ljava/lang/String;
    .locals 1
    .parameter "rat"

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 148
    const-string v0, "GERAN"

    .line 154
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 150
    const-string v0, "LTE"

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 152
    const-string v0, "UMTS"

    goto :goto_0

    .line 154
    :cond_2
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 3
    .parameter "s"

    .prologue
    .line 184
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 191
    :goto_0
    return-object v0

    .line 186
    :cond_0
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    .line 190
    :cond_2
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    goto :goto_0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/OperatorInfo;->lac:I

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorRat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorRat:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OperatorInfo;->lac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->state:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 236
    iget v0, p0, Lcom/android/internal/telephony/OperatorInfo;->lac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return-void
.end method
