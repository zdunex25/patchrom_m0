.class public Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;
.super Landroid/preference/ListPreference;
.source "SummariedListPreferenceDDC.java"


# instance fields
.field private mDDCMMData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "set"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    .line 19
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/DDCDatabase;->queryManufacturerAndModel(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    .line 20
    iget-object v0, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 8
    .parameter "builder"

    .prologue
    const/4 v7, 0x0

    .line 26
    :try_start_0
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 27
    .local v1, entriesArray:[Ljava/lang/String;
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 28
    .local v4, valuesArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 29
    .local v3, index:I
    iget-object v5, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->setEntries([Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0, v4}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 36
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 42
    .end local v1           #entriesArray:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #valuesArray:[Ljava/lang/String;
    :goto_1
    return-void

    .line 29
    .restart local v1       #entriesArray:[Ljava/lang/String;
    .restart local v3       #index:I
    .restart local v4       #valuesArray:[Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v3

    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    .end local v1           #entriesArray:[Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #index:I
    .end local v4           #valuesArray:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->setEntries([Ljava/lang/CharSequence;)V

    .line 39
    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 40
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    goto :goto_1
.end method

.method public refreshFromPreference()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->mDDCMMData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 50
    .local v0, szSummary:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    .end local v0           #szSummary:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android_v2/preference/SummariedListPreferenceDDC;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
