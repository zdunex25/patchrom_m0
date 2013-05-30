.class public Lcom/samsung/bluetoothle/BluetoothLEClientChar;
.super Ljava/lang/Object;
.source "BluetoothLEClientChar.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/bluetoothle/BluetoothLEClientChar;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientChar"


# instance fields
.field private mCharPath:Ljava/lang/String;

.field private mCharUUID:Ljava/lang/String;

.field private mClientDesc:[B

.field private mDescription:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar$1;

    invoke-direct {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar$1;-><init>()V

    sput-object v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "charPath"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private LogD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 167
    const-string v0, "BluetoothLEClientChar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getCharPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCharPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCharUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCharUUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCharVaule()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v2, "getCharVaule "

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    array-length v0, v2

    .line 77
    .local v0, len:I
    new-array v1, v0, [B

    .line 78
    .local v1, rValue:[B
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .end local v0           #len:I
    .end local v1           #rValue:[B
    :goto_0
    return-object v1

    .line 82
    :cond_0
    const-string v2, "the value is not initialized"

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClientConfigDesc()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    const-string v2, "getClientConfigDesc   : "

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    array-length v0, v2

    .line 101
    .local v0, len:I
    new-array v1, v0, [B

    .line 102
    .local v1, rValue:[B
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .end local v0           #len:I
    .end local v1           #rValue:[B
    :goto_0
    return-object v1

    .line 106
    :cond_0
    const-string v2, "the value is not initialized"

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setCharPath(Ljava/lang/String;)V
    .locals 2
    .parameter "charPath"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCharPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setCharValue([B)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCharValue of  char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 89
    array-length v0, p1

    .line 90
    .local v0, len:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    .line 91
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    .line 92
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    return-void
.end method

.method public setClientConfigDesc([B)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClientConfigDes of  char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 113
    array-length v0, p1

    .line 114
    .local v0, len:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    .line 115
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    .line 116
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-void
.end method

.method setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 122
    const-string v2, "Value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    .line 125
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    aput-byte v4, v2, v4

    .line 135
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty Value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    .end local v1           #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check size of string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 129
    :try_start_0
    const-string v2, "UTF8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothLEClientChar"

    const-string v3, "## Exception in conversion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, "Name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    iput-object p2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mName:Ljava/lang/String;

    .line 159
    :cond_3
    :goto_2
    return-void

    .line 139
    :cond_4
    const-string v2, "UUID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 140
    iput-object p2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    goto :goto_2

    .line 141
    :cond_5
    const-string v2, "ClientDescriptor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 142
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 143
    :cond_6
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    .line 144
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    aput-byte v4, v2, v4

    .line 154
    :goto_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty mClientDesc :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 146
    .end local v1           #i:I
    :cond_7
    const-string v2, "BluetoothLEClientChar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check size of string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_1
    const-string v2, "UTF8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 149
    :catch_1
    move-exception v0

    .line 150
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "BluetoothLEClientChar"

    const-string v3, "## Exception in conversion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    const-string v2, "Description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    iput-object p2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mDescription:Ljava/lang/String;

    goto :goto_2
.end method

.method public setcharUUID(Ljava/lang/String;)V
    .locals 0
    .parameter "uuid"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 187
    return-void
.end method
