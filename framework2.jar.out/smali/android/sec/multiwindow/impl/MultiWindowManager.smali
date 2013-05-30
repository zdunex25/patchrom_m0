.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# static fields
.field private static A:Landroid/graphics/Rect; = null

.field private static B:Landroid/graphics/Rect; = null

.field private static C:Landroid/graphics/Rect; = null

.field private static D:Landroid/graphics/Rect; = null

.field private static E:Landroid/graphics/Rect; = null

.field private static F:Landroid/graphics/Rect; = null

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sIsEnabled:Z

.field private static sIsPhone:Z

.field private static sQueried:Z

.field private static sQueriedType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 16
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 17
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 18
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "splitZone"

    .prologue
    .line 102
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 105
    .local v0, result:Landroid/graphics/Rect;
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 107
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 109
    :cond_0
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 111
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 113
    :cond_1
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 115
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 117
    :cond_2
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 119
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 122
    :cond_3
    return-object v0
.end method

.method public static findCurrentWindowZone(III)I
    .locals 16
    .parameter "currentLaunchMode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 126
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 129
    const/4 v12, 0x2

    new-array v6, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    .line 134
    .local v6, split:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v7, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    .line 140
    .local v7, split3L:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v8, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0x18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    .line 146
    .local v8, split3R:[Landroid/util/Pair;
    const/4 v12, 0x4

    new-array v9, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x3

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    .line 153
    .local v9, split4:[Landroid/util/Pair;
    const/4 v11, 0x0

    .line 155
    .local v11, zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p0, :sswitch_data_0

    .line 174
    :goto_0
    :sswitch_0
    move-object v2, v11

    .local v2, arr$:[Landroid/util/Pair;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v10, v2, v3

    .line 175
    .local v10, zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    .line 176
    .local v5, rect:Landroid/graphics/Rect;
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 177
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 181
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_2
    return v12

    .line 161
    .end local v2           #arr$:[Landroid/util/Pair;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :sswitch_1
    move-object v11, v6

    .line 162
    goto :goto_0

    .line 164
    :sswitch_2
    move-object v11, v7

    .line 165
    goto :goto_0

    .line 167
    :sswitch_3
    move-object v11, v8

    .line 168
    goto :goto_0

    .line 170
    :sswitch_4
    move-object v11, v9

    goto :goto_0

    .line 174
    .restart local v2       #arr$:[Landroid/util/Pair;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    .restart local v10       #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static isArrangable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 231
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangeMode(IZZZ)Z
    .locals 6
    .parameter "windowMode"
    .parameter "bFrontOfTask"
    .parameter "bResumed"
    .parameter "bIncludePinup"

    .prologue
    const/high16 v5, 0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 57
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 59
    .local v1, options:I
    const/high16 v4, 0x200

    if-eq v0, v4, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPhone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    if-eqz p2, :cond_0

    if-eqz p3, :cond_2

    and-int v4, v1, v5

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 65
    goto :goto_0

    .line 68
    :cond_3
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_4

    and-int v4, v1, v5

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    .line 69
    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_1

    .line 21
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 27
    :cond_0
    if-eqz v0, :cond_2

    .line 28
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 34
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    .line 31
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_0
.end method

.method public static isFullSize(I)Z
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 226
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMinimized(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 221
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 208
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 204
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    if-nez v1, :cond_1

    .line 39
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    :cond_0
    if-eqz v0, :cond_2

    .line 46
    const-string v1, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 52
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    return v1

    .line 49
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.phone.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    goto :goto_0
.end method

.method public static isPinup(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 216
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 212
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mode(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 196
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    return v0
.end method

.method private static option(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 200
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    return v0
.end method

.method private static updateWindowRects()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 78
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 79
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 80
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 82
    .local v1, iDeviceHeight:I
    if-le v2, v1, :cond_0

    .line 83
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 84
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v2, 0x2

    invoke-direct {v3, v6, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 85
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v4, v6, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 86
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v4, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    .line 94
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    sget-object v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    .line 95
    sget-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    sget-object v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 97
    new-instance v3, Landroid/graphics/Rect;

    sget-object v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    .line 98
    sget-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    sget-object v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 99
    return-void

    .line 88
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 89
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v1, 0x2

    div-int/lit8 v5, v2, 0x2

    invoke-direct {v3, v6, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 90
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v4, v6, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 91
    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v1, 0x2

    invoke-direct {v3, v4, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    goto :goto_0
.end method
