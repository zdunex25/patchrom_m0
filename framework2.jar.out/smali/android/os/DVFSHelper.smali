.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$PackageInfo;
    }
.end annotation


# static fields
.field private static final BOOST_ACTION_DVFS_ACQUIRE:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_BOOSTER"

.field private static final BOOST_ACTION_FACTORY_CPU_LOCK:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_FACTORY_CPU_LOCK"

.field private static final BOOST_ACTION_LCD_FRAME_RATE:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

.field private static final BOOST_ACTION_RELEASE:Ljava/lang/String; = "com.sec.android.intent.action.DVFS_BOOSTER_RELEASE"

.field private static final BOOST_PERMISSION:Ljava/lang/String; = "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

.field private static final BOOST_TIME_INDEFINITE:I = 0x100

.field public static final BOOST_TYPE_FACTORY_LOCK:I = 0x2

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_MP_DECISION:I = 0x3

.field public static final BOOST_TYPE_NONE:I = 0x0

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_CORE_NUM_MAX:J = 0x10L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_GPU_MAX:J = 0x4L

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mOption:J

.field private mPermissionGranted:Z

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/os/DVFSHelper$PackageInfo;

    const/4 v1, 0x0

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.android.contacts"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/os/DVFSHelper$PackageInfo;

    const-string v2, "com.android.mms"

    invoke-direct {v1, v2, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.sec.android.app.launcher"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.android.phone"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.android.browser"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "option"

    .prologue
    .line 61
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .parameter "type"
    .parameter "option"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 40
    iput v2, p0, Landroid/os/DVFSHelper;->mId:I

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 42
    iput-boolean v2, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 69
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 74
    const-string v0, "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 77
    :cond_1
    if-eqz p2, :cond_2

    .line 78
    iput-object p2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 82
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 83
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1
.end method

.method private getRandomNum()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private prepareIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    .line 171
    iget v1, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 172
    const-string v1, "DVFSHelper"

    const-string v2, "prepareIntent:: BOOST_TYPE_TOUCH"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v0, boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-wide v1, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v3, 0x2

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "CPU"

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :cond_0
    iget-wide v1, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v3, 0x4

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "GPU"

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_1
    iget-wide v1, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v3, 0x8

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "BUS"

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_2
    iget-wide v1, p0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v3, 0x10

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 187
    const-string v1, "CPU_CORE_NUM"

    const-string v2, "MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_3
    const-string v1, "PACKAGE"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "ID"

    iget v2, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_4
    :goto_0
    return-object v0

    .line 193
    :cond_5
    iget v1, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 194
    const-string v1, "DVFSHelper"

    const-string v2, "prepareIntent:: BOOST_TYPE_FACTORY_LOCK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.DVFS_FACTORY_CPU_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 201
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_6
    iget v1, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 202
    const-string v1, "DVFSHelper"

    const-string v2, "prepareIntent:: BOOST_TYPE_LCD_FRAME_RATE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    .restart local v0       #boostIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v1, "PACKAGE"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v1, "ID"

    iget v2, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v1, "RATE"

    const-string v2, "60"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 211
    .end local v0           #boostIntent:Landroid/content/Intent;
    :cond_7
    iget v1, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 212
    const-string v1, "DVFSHelper"

    const-string v2, "prepareIntent:: BOOST_TYPE_MP_DECISION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 3

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "DVFSHelper"

    const-string v1, "acquire::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v0, p0, Landroid/os/DVFSHelper;->mId:I

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/os/DVFSHelper;->release()V

    .line 100
    :cond_1
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 101
    invoke-direct {p0}, Landroid/os/DVFSHelper;->prepareIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 102
    iget v0, p0, Landroid/os/DVFSHelper;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 104
    const-string v0, "DVFSHelper"

    const-string v1, "acquire:: putting -1 for LCD frame rate request."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "DURATION"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public acquire(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire:: timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v0, p0, Landroid/os/DVFSHelper;->mId:I

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/os/DVFSHelper;->release()V

    .line 129
    :cond_1
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 130
    invoke-direct {p0}, Landroid/os/DVFSHelper;->prepareIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 133
    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    .line 134
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "DURATION"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 163
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v0, "DVFSHelper"

    const-string v1, "release::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Landroid/os/DVFSHelper;->mId:I

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.DVFS_BOOSTER_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "PACKAGE"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    const-string v1, "ID"

    iget v2, p0, Landroid/os/DVFSHelper;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    goto :goto_0
.end method
