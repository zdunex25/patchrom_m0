.class public abstract Lcom/android/server/IntentResolverOld;
.super Ljava/lang/Object;
.source "IntentResolverOld.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolverOld$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field final mActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field final mBaseTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TF;>;"
        }
    .end annotation
.end field

.field final mSchemeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field final mTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field final mTypedActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field

.field final mWildTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 581
    new-instance v0, Lcom/android/server/IntentResolverOld$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolverOld$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolverOld;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolverOld;->mFilters:Ljava/util/HashSet;

    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    .line 606
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    .line 616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolverOld;->mSchemeToFilter:Ljava/util/HashMap;

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolverOld;->mActionToFilter:Ljava/util/HashMap;

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolverOld;->mTypedActionToFilter:Ljava/util/HashMap;

    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 17
    .parameter "intent"
    .parameter
    .parameter "debug"
    .parameter "defaultOnly"
    .parameter "resolvedType"
    .parameter "scheme"
    .parameter
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TF;>;",
            "Ljava/util/List",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p2, categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, src:Ljava/util/List;,"Ljava/util/List<TF;>;"
    .local p8, dest:Ljava/util/List;,"Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 512
    .local v6, data:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    .line 514
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v10

    .line 516
    .local v10, excludingStopped:Z
    if-eqz p7, :cond_2

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v9

    .line 517
    .local v9, N:I
    :goto_0
    const/4 v11, 0x0

    .line 519
    .local v11, hasNonDefaults:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_a

    .line 520
    move-object/from16 v0, p7

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 522
    .local v2, filter:Landroid/content/IntentFilter;,"TF;"
    if-eqz p3, :cond_0

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Matching against filter "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolverOld;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 525
    if-eqz p3, :cond_1

    .line 526
    const-string v4, "IntentResolver"

    const-string v5, "  Filter\'s target is stopped; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 516
    .end local v2           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v9           #N:I
    .end local v11           #hasNonDefaults:Z
    .end local v12           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 532
    .restart local v2       #filter:Landroid/content/IntentFilter;,"TF;"
    .restart local v9       #N:I
    .restart local v11       #hasNonDefaults:Z
    .restart local v12       #i:I
    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/IntentResolverOld;->packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 533
    if-eqz p3, :cond_1

    .line 534
    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter is not from package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 540
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Lcom/android/server/IntentResolverOld;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 541
    if-eqz p3, :cond_1

    .line 542
    const-string v4, "IntentResolver"

    const-string v5, "  Filter\'s target already added"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 547
    :cond_5
    const-string v8, "IntentResolver"

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v13

    .line 548
    .local v13, match:I
    if-ltz v13, :cond_9

    .line 549
    if-eqz p3, :cond_6

    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter matched!  match=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_6
    if-eqz p4, :cond_7

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 552
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v2, v13, v1}, Lcom/android/server/IntentResolverOld;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v14

    .line 553
    .local v14, oneResult:Ljava/lang/Object;,"TR;"
    if-eqz v14, :cond_1

    .line 554
    move-object/from16 v0, p8

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 557
    .end local v14           #oneResult:Ljava/lang/Object;,"TR;"
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 560
    :cond_9
    if-eqz p3, :cond_1

    .line 562
    packed-switch v13, :pswitch_data_0

    .line 567
    const-string v16, "unknown reason"

    .line 569
    .local v16, reason:Ljava/lang/String;
    :goto_3
    const-string v4, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Filter did not match: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 563
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_0
    const-string v16, "action"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 564
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_1
    const-string v16, "category"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 565
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_2
    const-string v16, "data"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 566
    .end local v16           #reason:Ljava/lang/String;
    :pswitch_3
    const-string v16, "type"

    .restart local v16       #reason:Ljava/lang/String;
    goto :goto_3

    .line 574
    .end local v2           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v13           #match:I
    .end local v16           #reason:Ljava/lang/String;
    :cond_a
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b

    if-eqz v11, :cond_b

    .line 575
    const-string v4, "IntentResolver"

    const-string v5, "resolveIntent failed: found match, but none with Intent.CATEGORY_DEFAULT"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_b
    return-void

    .line 562
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 501
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 502
    const/4 v1, 0x0

    .line 504
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, dest:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    if-nez p2, :cond_1

    .line 447
    const/4 v2, 0x0

    .line 463
    :cond_0
    return v2

    .line 450
    :cond_1
    const/4 v2, 0x0

    .line 451
    .local v2, num:I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, name:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 455
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 456
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_2

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-virtual {p3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v6, 0x0

    .line 360
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 361
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    move v4, v6

    .line 405
    :cond_0
    return v4

    .line 365
    :cond_1
    const/4 v4, 0x0

    .line 366
    .local v4, num:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    .local v3, name:Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 370
    move-object v1, v3

    .line 371
    .local v1, baseName:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 372
    .local v5, slashpos:I
    if-lez v5, :cond_4

    .line 373
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 378
    :goto_1
    iget-object v7, p0, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 379
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_2

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    iget-object v7, p0, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    if-lez v5, :cond_5

    .line 387
    iget-object v7, p0, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 388
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_3

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    iget-object v7, p0, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 395
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    :cond_5
    iget-object v7, p0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 396
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-nez v0, :cond_6

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    iget-object v7, p0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TF;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TF;>;"
    const/4 v2, 0x0

    .line 485
    if-eqz p1, :cond_2

    .line 486
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 487
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 488
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 489
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 490
    add-int/lit8 v1, v1, -0x1

    .line 491
    add-int/lit8 v0, v0, -0x1

    .line 487
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    .line 496
    .end local v0           #N:I
    .end local v1           #idx:I
    :cond_2
    return v2
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, dest:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    if-nez p2, :cond_1

    .line 469
    const/4 v1, 0x0

    .line 481
    :cond_0
    return v1

    .line 472
    :cond_1
    const/4 v1, 0x0

    .line 473
    .local v1, num:I
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    .local v0, name:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 477
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/android/server/IntentResolverOld;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v6, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 410
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    move v3, v6

    .line 441
    :cond_0
    return v3

    .line 414
    :cond_1
    const/4 v3, 0x0

    .line 415
    .local v3, num:I
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    .local v2, name:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 419
    move-object v0, v2

    .line 420
    .local v0, baseName:Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 421
    .local v4, slashpos:I
    if-lez v4, :cond_4

    .line 422
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_1
    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/android/server/IntentResolverOld;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 428
    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_3
    if-lez v4, :cond_5

    .line 432
    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/android/server/IntentResolverOld;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 433
    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 424
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 436
    :cond_5
    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, v5, p1}, Lcom/android/server/IntentResolverOld;->remove_all_objects(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 437
    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    iget-object v2, p0, Lcom/android/server/IntentResolverOld;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolverOld;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolverOld;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, numS:I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolverOld;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, numT:I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolverOld;->mActionToFilter:Ljava/util/HashMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolverOld;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 65
    :cond_0
    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolverOld;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolverOld;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 69
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "out"
    .parameter "title"
    .parameter "prefix"
    .parameter "packageName"
    .parameter "printFilter"

    .prologue
    .line 135
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, innerPrefix:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, sepPrefix:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, curPrefix:Ljava/lang/String;
    const-string v3, "Full MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolverOld;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    move-object v2, v8

    .line 142
    :cond_0
    const-string v3, "Base MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolverOld;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    move-object v2, v8

    .line 146
    :cond_1
    const-string v3, "Wild MIME Types:"

    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolverOld;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    move-object v2, v8

    .line 150
    :cond_2
    const-string v3, "Schemes:"

    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mSchemeToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolverOld;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    move-object v2, v8

    .line 154
    :cond_3
    const-string v3, "Non-Data Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mActionToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolverOld;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    move-object v2, v8

    .line 158
    :cond_4
    const-string v3, "MIME Typed Actions:"

    iget-object v5, p0, Lcom/android/server/IntentResolverOld;->mTypedActionToFilter:Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/IntentResolverOld;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    move-object v2, v8

    .line 162
    :cond_5
    if-ne v2, v8, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "out"
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p3, filter:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 14
    .parameter "out"
    .parameter "titlePrefix"
    .parameter "title"
    .parameter "prefix"
    .parameter
    .parameter "packageName"
    .parameter "printFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TF;>;>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, eprefix:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, fprefix:Ljava/lang/String;
    const/4 v10, 0x0

    .line 102
    .local v10, printedSomething:Z
    const/4 v11, 0x0

    .line 103
    .local v11, printer:Landroid/util/Printer;
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 105
    .local v2, a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 106
    .local v1, N:I
    const/4 v9, 0x0

    .line 107
    .local v9, printedHeader:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 108
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentFilter;

    .line 109
    .local v5, filter:Landroid/content/IntentFilter;,"TF;"
    if-eqz p6, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolverOld;->packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 107
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 112
    :cond_2
    if-eqz p3, :cond_3

    .line 113
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const/16 p3, 0x0

    .line 116
    :cond_3
    if-nez v9, :cond_4

    .line 117
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const/4 v9, 0x1

    .line 120
    :cond_4
    const/4 v10, 0x1

    .line 121
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/server/IntentResolverOld;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 122
    if-eqz p7, :cond_1

    .line 123
    if-nez v11, :cond_5

    .line 124
    new-instance v11, Landroid/util/PrintWriterPrinter;

    .end local v11           #printer:Landroid/util/Printer;
    invoke-direct {v11, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 126
    .restart local v11       #printer:Landroid/util/Printer;
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v1           #N:I
    .end local v2           #a:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<TF;>;>;"
    .end local v5           #filter:Landroid/content/IntentFilter;,"TF;"
    .end local v7           #i:I
    .end local v9           #printedHeader:Z
    :cond_6
    return v10
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolverOld$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolverOld;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolverOld$IteratorWrapper;-><init>(Lcom/android/server/IntentResolverOld;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolverOld;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter "match"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, filter:Landroid/content/IntentFilter;,"TF;"
    return-object p1
.end method

.method protected abstract packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 41
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, scheme:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v10, finalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    const/4 v5, 0x1

    .line 231
    .local v5, debug:Z
    :goto_0
    if-eqz v5, :cond_0

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving type "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " scheme "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " of intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    const/4 v9, 0x0

    .line 236
    .local v9, firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    const/16 v18, 0x0

    .line 237
    .local v18, secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    const/16 v26, 0x0

    .line 238
    .local v26, thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    const/16 v34, 0x0

    .line 242
    .local v34, schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz p2, :cond_4

    .line 243
    const/16 v2, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v40

    .line 244
    .local v40, slashpos:I
    if-lez v40, :cond_4

    .line 245
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 246
    .local v37, baseType:Ljava/lang/String;
    const-string v2, "*"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 247
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v40, 0x2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v40, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_c

    .line 251
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 252
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_2

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v18, Ljava/util/ArrayList;

    .line 254
    .restart local v18       #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_3

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v26, Ljava/util/ArrayList;

    .line 265
    .restart local v26       #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_4

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Third type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v37           #baseType:Ljava/lang/String;
    .end local v40           #slashpos:I
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34           #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v34, Ljava/util/ArrayList;

    .line 281
    .restart local v34       #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_5

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheme list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_5
    if-nez p2, :cond_6

    if-nez v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 289
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_6

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolverOld;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v4

    .line 293
    .local v4, categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v11, p4

    .line 294
    invoke-direct/range {v2 .. v11}, Lcom/android/server/IntentResolverOld;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 297
    :cond_7
    if-eqz v18, :cond_8

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move v14, v5

    move/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, p4

    .line 298
    invoke-direct/range {v11 .. v20}, Lcom/android/server/IntentResolverOld;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 301
    :cond_8
    if-eqz v26, :cond_9

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v28, p4

    .line 302
    invoke-direct/range {v19 .. v28}, Lcom/android/server/IntentResolverOld;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 305
    :cond_9
    if-eqz v34, :cond_a

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, p3

    move-object/from16 v32, p2

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    move/from16 v36, p4

    .line 306
    invoke-direct/range {v27 .. v36}, Lcom/android/server/IntentResolverOld;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 309
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolverOld;->sortResults(Ljava/util/List;)V

    .line 311
    if-eqz v5, :cond_f

    .line 312
    const-string v2, "IntentResolver"

    const-string v3, "Final result list:"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    .line 314
    .local v39, r:Ljava/lang/Object;,"TR;"
    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 228
    .end local v4           #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v5           #debug:Z
    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v18           #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v26           #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v34           #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .end local v38           #i$:Ljava/util/Iterator;
    .end local v39           #r:Ljava/lang/Object;,"TR;"
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 257
    .restart local v5       #debug:Z
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v18       #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v26       #thirdTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v34       #schemeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    .restart local v37       #baseType:Ljava/lang/String;
    .restart local v40       #slashpos:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mBaseTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 258
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_d

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mWildTypeToFilter:Ljava/util/HashMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v18, Ljava/util/ArrayList;

    .line 260
    .restart local v18       #secondTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_3

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 266
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolverOld;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 271
    .restart local v9       #firstTypeCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TF;>;"
    if-eqz v5, :cond_4

    const-string v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Typed Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 317
    .end local v37           #baseType:Ljava/lang/String;
    .end local v40           #slashpos:I
    .restart local v4       #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    :cond_f
    return-object v10
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 13
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TF;>;>;I)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p4, listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<TF;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, resultList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 211
    .local v4, debug:Z
    :goto_0
    invoke-static {p1}, Lcom/android/server/IntentResolverOld;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 212
    .local v3, categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, scheme:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 214
    .local v11, N:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 215
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object v6, p2

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolverOld;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 214
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 208
    .end local v3           #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v4           #debug:Z
    .end local v7           #scheme:Ljava/lang/String;
    .end local v11           #N:I
    .end local v12           #i:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 218
    .restart local v3       #categories:Landroid/util/FastImmutableArraySet;,"Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .restart local v4       #debug:Z
    .restart local v7       #scheme:Ljava/lang/String;
    .restart local v11       #N:I
    .restart local v12       #i:I
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolverOld;->sortResults(Ljava/util/List;)V

    .line 219
    return-object v9
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolverOld;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/IntentResolverOld;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, f:Landroid/content/IntentFilter;,"TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolverOld;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v4, "      Scheme: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolverOld;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, numS:I
    const-string v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolverOld;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, numT:I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolverOld;->mActionToFilter:Ljava/util/HashMap;

    const-string v4, "      Action: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolverOld;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 90
    :cond_0
    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/IntentResolverOld;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v4, "      TypedAction: "

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolverOld;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 94
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, this:Lcom/android/server/IntentResolverOld;,"Lcom/android/server/IntentResolverOld<TF;TR;>;"
    .local p1, results:Ljava/util/List;,"Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolverOld;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    return-void
.end method
