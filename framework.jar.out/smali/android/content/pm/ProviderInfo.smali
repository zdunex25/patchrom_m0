.class public final Landroid/content/pm/ProviderInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SINGLE_USER:I = 0x40000000


# instance fields
.field public authority:Ljava/lang/String;

.field public flags:I

.field public grantUriPermissions:Z

.field public initOrder:I

.field public isSyncable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public multiprocess:Z

.field public pathPermissions:[Landroid/content/pm/PathPermission;

.field public readPermission:Ljava/lang/String;

.field public uriPermissionPatterns:[Landroid/os/PatternMatcher;

.field public writePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Landroid/content/pm/ProviderInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 33
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 48
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 58
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 66
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 71
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 75
    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 89
    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 96
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .parameter "orig"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 33
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 48
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 58
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 66
    iput-object v1, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 71
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 75
    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 89
    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 96
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 104
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 107
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 108
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 109
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 110
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 111
    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 112
    iget v0, p1, Landroid/content/pm/ProviderInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 113
    iget-boolean v0, p1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 33
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 48
    iput-boolean v2, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 58
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 66
    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 71
    iput-boolean v2, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 75
    iput v2, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 89
    iput v2, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 96
    iput-boolean v2, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 155
    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/PatternMatcher;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 156
    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PathPermission;

    iput-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 161
    return-void

    :cond_0
    move v0, v2

    .line 154
    goto :goto_0

    :cond_1
    move v0, v2

    .line 157
    goto :goto_1

    :cond_2
    move v1, v2

    .line 160
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ProviderInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentProviderInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "parcelableFlags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 128
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean v0, p0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void

    :cond_0
    move v0, v2

    .line 125
    goto :goto_0

    :cond_1
    move v0, v2

    .line 128
    goto :goto_1

    :cond_2
    move v1, v2

    .line 131
    goto :goto_2
.end method
