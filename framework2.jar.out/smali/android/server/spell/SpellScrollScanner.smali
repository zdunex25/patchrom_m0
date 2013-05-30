.class public Landroid/server/spell/SpellScrollScanner;
.super Ljava/lang/Object;
.source "SpellScrollScanner.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SpellManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInformationHash:I

.field private mProhibitedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellScrollMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    .line 68
    iput-object p1, p0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Landroid/server/spell/SpellScrollScanner;->buildProhibitedPackageList()V

    .line 71
    return-void
.end method

.method private buildProhibitedPackageList()V
    .locals 7

    .prologue
    .line 138
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.stk"

    aput-object v6, v3, v5

    .line 143
    .local v3, list:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 144
    .local v4, pkgName:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getInformationHash()I
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 5
    .parameter "text"

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v4, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SpellScroll;

    .line 123
    .local v1, info:Landroid/app/SpellScroll;
    invoke-virtual {v1, p1}, Landroid/app/SpellScroll;->getMatchedInstantSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v1}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v3

    .line 127
    .local v3, result:Landroid/app/SpellScroll;
    invoke-virtual {v1, v2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    .line 129
    monitor-exit p0

    .line 134
    .end local v1           #info:Landroid/app/SpellScroll;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #result:Landroid/app/SpellScroll;
    :goto_0
    return-object v3

    .line 132
    :cond_1
    monitor-exit p0

    .line 134
    const/4 v3, 0x0

    goto :goto_0

    .line 132
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public declared-synchronized getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;
    .locals 2
    .parameter "id"

    .prologue
    .line 409
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 3
    .parameter "spellScrollName"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, result:Landroid/app/SpellScroll;
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/SpellScroll;

    move-object v1, v0

    .line 102
    monitor-exit p0

    .line 105
    :cond_0
    return-object v1

    .line 102
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized getSpellScrollList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpellScrollNames(I)Ljava/util/List;
    .locals 4
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SpellScroll;

    .line 390
    .local v2, scroll:Landroid/app/SpellScroll;
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getPriority()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 391
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 388
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #scroll:Landroid/app/SpellScroll;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 395
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    const/4 v1, 0x0

    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SpellScroll;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .local v0, info:Landroid/app/SpellScroll;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 403
    .end local v0           #info:Landroid/app/SpellScroll;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isValidSpellScroll(Ljava/lang/String;)Z
    .locals 1
    .parameter "spellScrollName"

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scanSpellScrolls()V
    .locals 36

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 173
    .local v22, pm:Landroid/content/pm/PackageManager;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v18, newSpellScrollList:Ljava/util/List;,"Ljava/util/List<Landroid/app/SpellScroll;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v19, newSpellScrollMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/app/SpellScroll;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v17, newSpellPackageMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/app/SpellScroll;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v16, newSpellIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lorg/apache/http/message/BasicNameValuePair;>;"
    const/16 v23, 0x280

    .line 181
    .local v23, queryFlag:I
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.SPELL"

    invoke-direct/range {v32 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v33, 0x280

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 184
    .local v4, activitySpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.SPELL"

    invoke-direct/range {v32 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v33, 0x280

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v27

    .line 187
    .local v27, serviceSpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.SPELL"

    invoke-direct/range {v32 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v33, 0x280

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    .line 190
    .local v25, receiverSpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v32, 0x0

    aput-object v4, v29, v32

    const/16 v32, 0x1

    aput-object v27, v29, v32

    const/16 v32, 0x2

    aput-object v25, v29, v32

    .line 196
    .local v29, spellListArray:[Ljava/util/List;
    move-object/from16 v5, v29

    .local v5, arr$:[Ljava/util/List;
    array-length v14, v5

    .local v14, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_0
    if-ge v9, v14, :cond_d

    aget-object v15, v5, v9

    .line 198
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v10, info:Landroid/content/pm/ResolveInfo;
    const/4 v13, 0x0

    .line 201
    .local v13, itemInfo:Landroid/content/pm/PackageItemInfo;
    const/4 v6, 0x0

    .line 203
    .local v6, defaultCastAction:I
    const/4 v12, 0x1

    .line 205
    .local v12, isDisabled:Z
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    if-eqz v32, :cond_6

    .line 206
    if-ne v15, v4, :cond_4

    .line 207
    const/4 v6, 0x0

    .line 212
    :goto_2
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v32, v0

    if-nez v32, :cond_5

    const/4 v12, 0x1

    .line 221
    :cond_1
    :goto_3
    if-eqz v13, :cond_8

    iget-object v0, v13, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 223
    .local v20, packageName:Ljava/lang/String;
    :goto_4
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 228
    :cond_2
    const/16 v30, 0x0

    .line 231
    .local v30, spellScroll:Landroid/app/SpellScroll;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v13, v6, v12}, Landroid/app/SpellScroll;->getMetaData(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;IZ)Landroid/app/SpellScroll;

    move-result-object v30

    .line 233
    sget-boolean v32, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v32, :cond_3

    .line 234
    const-string v32, "SpellManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SpellScroll META_DATA found in ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 238
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/SpellScroll;

    .line 240
    .local v31, stored:Landroid/app/SpellScroll;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 241
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 258
    .end local v31           #stored:Landroid/app/SpellScroll;
    :catch_0
    move-exception v7

    .line 259
    .local v7, e:Ljava/lang/Exception;
    const-string v32, "SpellManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SpellScroll parsing failed in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 209
    .end local v7           #e:Ljava/lang/Exception;
    .end local v20           #packageName:Ljava/lang/String;
    .end local v30           #spellScroll:Landroid/app/SpellScroll;
    :cond_4
    const/4 v6, 0x2

    goto/16 :goto_2

    .line 213
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 214
    :cond_6
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 215
    const/4 v6, 0x1

    .line 216
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 217
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v32, v0

    if-nez v32, :cond_7

    const/4 v12, 0x1

    :goto_5
    goto/16 :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    .line 221
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 246
    .restart local v20       #packageName:Ljava/lang/String;
    .restart local v30       #spellScroll:Landroid/app/SpellScroll;
    .restart local v31       #stored:Landroid/app/SpellScroll;
    :cond_9
    :try_start_1
    sget-boolean v32, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v32, :cond_a

    .line 247
    const-string v32, "SpellManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]<=>["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_a
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 254
    .end local v31           #stored:Landroid/app/SpellScroll;
    :cond_b
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 196
    .end local v6           #defaultCastAction:I
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v12           #isDisabled:Z
    .end local v13           #itemInfo:Landroid/content/pm/PackageItemInfo;
    .end local v20           #packageName:Ljava/lang/String;
    .end local v30           #spellScroll:Landroid/app/SpellScroll;
    :cond_c
    add-int/lit8 v8, v9, 0x1

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_0

    .line 266
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_d
    new-instance v24, Landroid/content/Intent;

    const-string v32, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v24, queryIntent:Landroid/content/Intent;
    const-string v32, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/16 v32, 0x200

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 271
    .local v3, activityPesudoSpellList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_16

    .line 273
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 275
    .restart local v10       #info:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 277
    .local v13, itemInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v13, :cond_e

    .line 281
    iget-object v0, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v32, v0

    if-nez v32, :cond_10

    const/4 v12, 0x1

    .line 282
    .restart local v12       #isDisabled:Z
    :goto_7
    iget-object v0, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 284
    .restart local v20       #packageName:Ljava/lang/String;
    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mProhibitedPackages:Ljava/util/Set;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 291
    :cond_f
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 292
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/SpellScroll;

    .line 294
    .local v26, scroll:Landroid/app/SpellScroll;
    if-eqz v12, :cond_e

    .line 295
    invoke-virtual/range {v26 .. v26}, Landroid/app/SpellScroll;->setDisabled()V

    goto :goto_6

    .line 281
    .end local v12           #isDisabled:Z
    .end local v20           #packageName:Ljava/lang/String;
    .end local v26           #scroll:Landroid/app/SpellScroll;
    :cond_10
    const/4 v12, 0x0

    goto :goto_7

    .line 300
    .restart local v12       #isDisabled:Z
    .restart local v20       #packageName:Ljava/lang/String;
    :cond_11
    const/16 v30, 0x0

    .line 303
    .restart local v30       #spellScroll:Landroid/app/SpellScroll;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/spell/SpellScrollScanner;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v13, v12}, Landroid/app/SpellScroll;->createPseudoSpellScroll(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Z)Landroid/app/SpellScroll;

    move-result-object v30

    .line 305
    sget-boolean v32, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v32, :cond_12

    .line 306
    const-string v32, "SpellManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Pseudo SpellScroll has been created for ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_12
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 310
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/SpellScroll;

    .line 312
    .restart local v31       #stored:Landroid/app/SpellScroll;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->isMergable(Landroid/app/SpellScroll;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 313
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/SpellScroll;->merge(Landroid/app/SpellScroll;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 330
    .end local v31           #stored:Landroid/app/SpellScroll;
    :catch_1
    move-exception v7

    .line 331
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v32, "SpellManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Pseudo SpellScroll creation failed in "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 318
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v31       #stored:Landroid/app/SpellScroll;
    :cond_13
    :try_start_3
    sget-boolean v32, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v32, :cond_14

    .line 319
    const-string v32, "SpellManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SpellScroll is not mergable!!! it will be ignored!! ["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]<=>["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 326
    .end local v31           #stored:Landroid/app/SpellScroll;
    :cond_15
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .line 337
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/content/pm/ResolveInfo;
    .end local v12           #isDisabled:Z
    .end local v13           #itemInfo:Landroid/content/pm/ActivityInfo;
    .end local v20           #packageName:Ljava/lang/String;
    .end local v30           #spellScroll:Landroid/app/SpellScroll;
    :cond_16
    const/4 v11, 0x0

    .line 339
    .local v11, infoHash:I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_17
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/SpellScroll;

    .line 340
    .restart local v30       #spellScroll:Landroid/app/SpellScroll;
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->hashCode()I

    move-result v32

    xor-int v11, v11, v32

    .line 342
    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_18
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/SpellScroll$Spell;

    .line 344
    .local v28, spell:Landroid/app/SpellScroll$Spell;
    invoke-virtual/range {v28 .. v28}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_19

    .line 345
    invoke-virtual/range {v28 .. v28}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    new-instance v33, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 348
    :cond_19
    sget-boolean v32, Landroid/server/spell/SpellScrollScanner;->DEBUG:Z

    if-eqz v32, :cond_18

    .line 349
    invoke-virtual/range {v28 .. v28}, Landroid/app/SpellScroll$Spell;->getId()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/http/message/BasicNameValuePair;

    .line 351
    .local v21, pair:Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v21, :cond_18

    .line 352
    const-string v32, "SpellManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Duplicated spell id found!!! "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v30 .. v30}, Landroid/app/SpellScroll;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v28 .. v28}, Landroid/app/SpellScroll$Spell;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " <=> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 361
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v21           #pair:Lorg/apache/http/message/BasicNameValuePair;
    .end local v28           #spell:Landroid/app/SpellScroll$Spell;
    .end local v30           #spellScroll:Landroid/app/SpellScroll;
    :cond_1a
    monitor-enter p0

    .line 362
    :try_start_4
    move-object/from16 v0, p0

    iput v11, v0, Landroid/server/spell/SpellScrollScanner;->mInformationHash:I

    .line 363
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollList:Ljava/util/List;

    .line 364
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellScrollMap:Ljava/util/Map;

    .line 365
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/server/spell/SpellScrollScanner;->mSpellIdMap:Ljava/util/Map;

    .line 366
    monitor-exit p0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v32

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v32
.end method
