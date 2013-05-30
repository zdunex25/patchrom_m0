.class public Landroid/app/SpellScroll$SpellEffect;
.super Landroid/app/ExtraAttr$Owner;
.source "SpellScroll.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SpellScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellEffect"
.end annotation


# static fields
.field public static final EXTRA_ATTR_KEY_INTENT_FLAGS:Ljava/lang/String; = "flags"

.field public static final EXTRA_ATTR_KEY_INTENT_TYPE:Ljava/lang/String; = "type"

.field private static sIntentFlagTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1374
    const/4 v0, 0x0

    sput-object v0, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 1379
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    .line 1380
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1382
    invoke-direct {p0}, Landroid/app/ExtraAttr$Owner;-><init>()V

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    .line 1383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 1384
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/SpellScroll$SpellEffect;->setIntent(Landroid/content/Intent;)V

    .line 1386
    :cond_0
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 1387
    return-void
.end method

.method private compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "varName"
    .parameter "varValue"

    .prologue
    .line 1522
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1526
    :cond_0
    return-object p1
.end method

.method private static declared-synchronized convertIntentFlags(Ljava/lang/String;)I
    .locals 8
    .parameter "text"

    .prologue
    .line 1473
    const-class v5, Landroid/app/SpellScroll$SpellEffect;

    monitor-enter v5

    if-nez p0, :cond_1

    .line 1474
    const/4 v0, 0x0

    .line 1518
    :cond_0
    monitor-exit v5

    return v0

    .line 1477
    :cond_1
    const/4 v0, 0x0

    .line 1479
    .local v0, result:I
    :try_start_0
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    if-nez v4, :cond_2

    .line 1481
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    .line 1483
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_HISTORY"

    const/high16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_SINGLE_TOP"

    const/high16 v7, 0x2000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NEW_TASK"

    const/high16 v7, 0x1000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_MULTIPLE_TASK"

    const/high16 v7, 0x800

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_TOP"

    const/high16 v7, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_FORWARD_RESULT"

    const/high16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_PREVIOUS_IS_TOP"

    const/high16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS"

    const/high16 v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_BROUGHT_TO_FRONT"

    const/high16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_RESET_TASK_IF_NEEDED"

    const/high16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY"

    const/high16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET"

    const/high16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_USER_ACTION"

    const/high16 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_REORDER_TO_FRONT"

    const/high16 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_NO_ANIMATION"

    const/high16 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_CLEAR_TASK"

    const v7, 0x8000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    const-string v6, "FLAG_ACTIVITY_TASK_ON_HOME"

    const/16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v1, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1507
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1509
    .local v2, token:Ljava/lang/String;
    sget-object v4, Landroid/app/SpellScroll$SpellEffect;->sIntentFlagTable:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1511
    .local v3, value:Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 1512
    const-string v4, "SpellScroll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown flag found in \'flags\': ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1473
    .end local v1           #st:Ljava/util/StringTokenizer;
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1514
    .restart local v1       #st:Ljava/util/StringTokenizer;
    .restart local v2       #token:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public compile(Ljava/util/List;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 17
    .parameter
    .parameter "userInput"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Ingredient;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1530
    .local p1, compileSpec:Ljava/util/List;,"Ljava/util/List<Landroid/app/SpellScroll$Ingredient;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-nez v14, :cond_0

    .line 1531
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No intent information in this spelleffect["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1534
    :cond_0
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1536
    .local v1, compiled:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentFlags()I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1539
    invoke-virtual/range {p0 .. p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    :cond_1
    if-nez p2, :cond_3

    .line 1611
    :cond_2
    :goto_0
    return-object v1

    .line 1546
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/SpellScroll$Ingredient;

    .line 1547
    .local v12, spec:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1549
    .local v13, userInputValue:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1551
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1553
    .local v10, source:Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 1554
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v13}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1558
    :cond_5
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1560
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1568
    .end local v10           #source:Ljava/lang/String;
    .end local v12           #spec:Landroid/app/SpellScroll$Ingredient;
    .end local v13           #userInputValue:Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1569
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1570
    .local v11, sourceExtras:Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1572
    .local v3, compiledExtras:Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1574
    .local v5, extraKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6           #i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1575
    .local v4, extKey:Ljava/lang/String;
    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1577
    .local v9, rawExtraValue:Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 1579
    const/4 v8, 0x0

    .line 1581
    .local v8, isSingleArray:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/SpellScroll$Ingredient;

    .line 1583
    .restart local v12       #spec:Landroid/app/SpellScroll$Ingredient;
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1584
    .restart local v13       #userInputValue:Ljava/lang/String;
    move-object v2, v9

    .line 1586
    .local v2, compiledExtraValue:Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 1587
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1592
    :cond_9
    :goto_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 1593
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->isSingleArray()Z

    move-result v8

    .line 1595
    move-object v9, v2

    goto :goto_3

    .line 1588
    :cond_a
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 1589
    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Landroid/app/SpellScroll$Ingredient;->getDefaultValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Landroid/app/SpellScroll$SpellEffect;->compileDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1599
    .end local v2           #compiledExtraValue:Ljava/lang/String;
    .end local v12           #spec:Landroid/app/SpellScroll$Ingredient;
    .end local v13           #userInputValue:Ljava/lang/String;
    :cond_b
    if-eqz v8, :cond_c

    .line 1600
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-virtual {v3, v4, v14}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 1603
    :cond_c
    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1608
    .end local v4           #extKey:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isSingleArray:Z
    .end local v9           #rawExtraValue:Ljava/lang/String;
    :cond_d
    invoke-virtual {v1, v3}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getIntentFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      mExtraAttrs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/SpellScroll$SpellEffect;->getExtraAttrsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    :cond_0
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "otherObj"

    .prologue
    const/4 v1, 0x0

    .line 1406
    instance-of v2, p1, Landroid/app/SpellScroll$SpellEffect;

    if-nez v2, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 1410
    check-cast v0, Landroid/app/SpellScroll$SpellEffect;

    .line 1412
    .local v0, other:Landroid/app/SpellScroll$SpellEffect;
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    :cond_4
    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    :cond_5
    invoke-super {p0, v0}, Landroid/app/ExtraAttr$Owner;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIntentFlags()I
    .locals 2

    .prologue
    .line 1468
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SpellScroll$SpellEffect;->convertIntentFlags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1391
    invoke-super {p0}, Landroid/app/ExtraAttr$Owner;->hashCode()I

    move-result v0

    .line 1393
    .local v0, result:I
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1396
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1397
    iget-object v1, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1401
    :cond_0
    return v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1446
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    .line 1447
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1435
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1436
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    :goto_0
    iget-object v0, p0, Landroid/app/ExtraAttr$Owner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1443
    return-void

    .line 1438
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1439
    iget-object v0, p0, Landroid/app/SpellScroll$SpellEffect;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
