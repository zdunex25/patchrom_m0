.class public Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/net/UidDetailProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "insetSide"

    .prologue
    .line 1721
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1718
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1722
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 1723
    iput p2, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1724
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 19
    .parameter "stats"
    .parameter "restrictedAppIds"

    .prologue
    .line 1730
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1732
    new-instance v12, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    const/16 v13, 0x3e8

    invoke-direct {v12, v13}, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1733
    .local v12, systemItem:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1735
    .local v9, knownUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/OriginalSettings/DataUsageSummary$AppItem;>;"
    const/4 v4, 0x0

    .line 1736
    .local v4, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v11

    .line 1737
    .local v11, size:I
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v11, :cond_5

    .line 1738
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 1740
    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v13}, Landroid/os/UserId;->isApp(I)Z

    move-result v7

    .line 1741
    .local v7, isApp:Z
    if-eqz v7, :cond_3

    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v13}, Landroid/os/UserId;->getAppId(I)I

    move-result v2

    .line 1742
    .local v2, appId:I
    :goto_2
    if-nez v7, :cond_0

    const/4 v13, -0x4

    if-eq v2, v13, :cond_0

    const/4 v13, -0x5

    if-ne v2, v13, :cond_4

    .line 1743
    :cond_0
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .line 1744
    .local v8, item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    if-nez v8, :cond_1

    .line 1745
    new-instance v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    invoke-direct {v8, v2}, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1746
    .restart local v8       #item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    invoke-virtual {v9, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_1
    iget-wide v13, v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    iget-wide v15, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    .line 1751
    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v8, v13}, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->addUid(I)V

    .line 1737
    .end local v8           #item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1736
    .end local v2           #appId:I
    .end local v5           #i:I
    .end local v7           #isApp:Z
    .end local v11           #size:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 1741
    .restart local v5       #i:I
    .restart local v7       #isApp:Z
    .restart local v11       #size:I
    :cond_3
    iget v2, v4, Landroid/net/NetworkStats$Entry;->uid:I

    goto :goto_2

    .line 1753
    .restart local v2       #appId:I
    :cond_4
    iget-wide v13, v12, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    iget-wide v15, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v12, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    .line 1754
    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v12, v13}, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->addUid(I)V

    goto :goto_3

    .line 1758
    .end local v2           #appId:I
    .end local v7           #isApp:Z
    :cond_5
    move-object/from16 v3, p2

    .local v3, arr$:[I
    array-length v10, v3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_4
    if-ge v6, v10, :cond_7

    aget v2, v3, v6

    .line 1759
    .restart local v2       #appId:I
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .line 1760
    .restart local v8       #item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    if-nez v8, :cond_6

    .line 1761
    new-instance v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    invoke-direct {v8, v2}, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1762
    .restart local v8       #item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    const-wide/16 v13, -0x1

    iput-wide v13, v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    .line 1763
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_6
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->restricted:Z

    .line 1758
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1768
    .end local v2           #appId:I
    .end local v8           #item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    :cond_7
    iget-wide v13, v12, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_8

    .line 1769
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1772
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget-wide v13, v13, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    :goto_5
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1775
    return-void

    .line 1773
    :cond_9
    const-wide/16 v13, 0x0

    goto :goto_5
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->appId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 1794
    if-nez p2, :cond_0

    .line 1795
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040041

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1798
    iget v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_0

    .line 1799
    iget v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1803
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1805
    .local v0, context:Landroid/content/Context;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1806
    .local v4, text1:Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1810
    .local v3, progress:Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .line 1811
    .local v1, item:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/OriginalSettings/net/UidDetailProvider;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 1813
    iget-boolean v5, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v5, :cond_2

    iget-wide v5, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    .line 1814
    const v5, 0x7f0907de

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1815
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1821
    :goto_0
    iget-wide v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 1822
    .local v2, percentTotal:I
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1824
    return-object p2

    .line 1817
    .end local v2           #percentTotal:I
    :cond_2
    iget-wide v5, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1818
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
