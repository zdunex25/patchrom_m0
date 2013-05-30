.class public Lcom/samsung/wfd/WfdInfo;
.super Ljava/lang/Object;
.source "WfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/wfd/WfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WfdInfo"


# instance fields
.field public cpled_sink_status:I

.field public ctrl_port:I

.field public dev_info:I

.field public deviceAddress:Ljava/lang/String;

.field public max_tput:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/samsung/wfd/WfdInfo$1;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/wfd/WfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wfd/WfdInfo;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p1, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 104
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    .line 105
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    .line 106
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    .line 107
    iget v0, p1, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    iput v0, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    .line 109
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, tokens:[Ljava/lang/String;
    array-length v6, v5

    if-ge v6, v8, :cond_0

    .line 52
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Malformed wfd information"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 55
    :cond_0
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 56
    .local v4, token:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, nameValue:[Ljava/lang/String;
    aget-object v6, v3, v9

    const-string v7, "dev_addr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    aget-object v6, v3, v8

    iput-object v6, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 55
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_2
    aget-object v6, v3, v9

    const-string v7, "wfd_dev_info"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    aget-object v6, v3, v8

    invoke-direct {p0, v6}, Lcom/samsung/wfd/WfdInfo;->parseHex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    goto :goto_1

    .line 68
    :cond_3
    aget-object v6, v3, v9

    const-string v7, "wfd_ctrl_port"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 69
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    goto :goto_1

    .line 73
    :cond_4
    aget-object v6, v3, v9

    const-string v7, "wfd_max_tput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 74
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    goto :goto_1

    .line 78
    :cond_5
    aget-object v6, v3, v9

    const-string v7, "wfd_cpled_sink_status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    aget-object v6, v3, v8

    invoke-direct {p0, v6}, Lcom/samsung/wfd/WfdInfo;->parseHex(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    goto :goto_1

    .line 83
    .end local v3           #nameValue:[Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .parameter "hexString"

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WfdInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "device_address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " dev_info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ctrl_port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " max_tput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cpled_sink_status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return-void
.end method
