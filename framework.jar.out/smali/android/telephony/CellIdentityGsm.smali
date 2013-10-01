.class public final Landroid/telephony/CellIdentityGsm;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityGsm"


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPsc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Landroid/telephony/CellIdentityGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 48
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 49
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 51
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    .line 52
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"
    .parameter "psc"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 65
    iput p2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 66
    iput p3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 67
    iput p4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 68
    iput p5, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityGsm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityGsm;)V
    .locals 1
    .parameter "cid"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    .line 73
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    .line 74
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    .line 75
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    .line 76
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mPsc:I

    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    .line 77
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 207
    const-string v0, "CellIdentityGsm"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityGsm;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/telephony/CellIdentityGsm;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentityGsm;

    move-object v2, v0

    .line 135
    .local v2, o:Landroid/telephony/CellIdentityGsm;
    iget v4, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    iget v5, v2, Landroid/telephony/CellIdentityGsm;->mMcc:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    iget v5, v2, Landroid/telephony/CellIdentityGsm;->mMnc:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    iget v5, v2, Landroid/telephony/CellIdentityGsm;->mLac:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    iget v5, v2, Landroid/telephony/CellIdentityGsm;->mCid:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    iget v5, v2, Landroid/telephony/CellIdentityGsm;->mPsc:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 144
    .end local v2           #o:Landroid/telephony/CellIdentityGsm;
    :cond_0
    :goto_0
    return v3

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 125
    const/16 v0, 0x1f

    .line 126
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GsmCellIdentitiy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, " mPsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 171
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return-void
.end method
