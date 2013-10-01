.class public Lcom/android/camera/PieController;
.super Ljava/lang/Object;
.source "PieController.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Lcom/android/camera/CameraActivity;

.field protected mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

.field private mOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/IconListPreference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/IconListPreference;",
            "Lcom/android/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/IconListPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected mRenderer:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "CAM_piecontrol"

    sput-object v0, Lcom/android/camera/PieController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ui/PieRenderer;)V
    .locals 1
    .parameter "activity"
    .parameter "pie"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/PieController;->mActivity:Lcom/android/camera/CameraActivity;

    .line 54
    iput-object p2, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    return-void
.end method

.method private varargs override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V
    .locals 5
    .parameter "pref"
    .parameter "keyvalues"

    .prologue
    .line 178
    iget-object v4, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    .line 180
    aget-object v2, p2, v0

    .line 181
    .local v2, key:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v3, p2, v4

    .line 182
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v4, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PieItem;

    .line 185
    .local v1, item:Lcom/android/camera/ui/PieItem;
    if-nez v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/camera/ui/PieItem;->setEnabled(Z)V

    .line 189
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    .line 190
    return-void

    .line 185
    .restart local v1       #item:Lcom/android/camera/ui/PieItem;
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 179
    .end local v1           #item:Lcom/android/camera/ui/PieItem;
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private reloadPreference(Lcom/android/camera/IconListPreference;)V
    .locals 7
    .parameter "pref"

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/PieItem;

    .line 144
    .local v2, item:Lcom/android/camera/ui/PieItem;
    iget-object v4, p0, Lcom/android/camera/PieController;->mOverrides:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 145
    .local v3, overrideValue:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 146
    .local v0, iconIds:[I
    if-eqz v0, :cond_3

    .line 149
    if-nez v3, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, index:I
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PieController;->mActivity:Lcom/android/camera/CameraActivity;

    aget v5, v0, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    goto :goto_0

    .line 152
    .end local v1           #index:I
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 153
    .restart local v1       #index:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 155
    sget-object v4, Lcom/android/camera/PieController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to find override value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_0

    .line 163
    .end local v1           #index:I
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PieController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/PieItem;->setImageResource(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public addItem(Ljava/lang/String;FF)V
    .locals 9
    .parameter "prefKey"
    .parameter "center"
    .parameter "sweep"

    .prologue
    .line 88
    iget-object v8, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v8, p1}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v6

    check-cast v6, Lcom/android/camera/IconListPreference;

    .line 90
    .local v6, pref:Lcom/android/camera/IconListPreference;
    if-nez v6, :cond_1

    .line 128
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v1

    .line 92
    .local v1, iconIds:[I
    const/4 v7, -0x1

    .line 93
    .local v7, resid:I
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getUseSingleIcon()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, index:I
    aget v7, v1, v2

    .line 101
    .end local v2           #index:I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v4

    .line 103
    .local v4, item:Lcom/android/camera/ui/PieItem;
    invoke-virtual {v4, p2, p3}, Lcom/android/camera/ui/PieItem;->setFixedSlice(FF)V

    .line 104
    iget-object v8, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v8, v4}, Lcom/android/camera/ui/PieRenderer;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 105
    iget-object v8, p0, Lcom/android/camera/PieController;->mPreferences:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v8, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v8, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    array-length v5, v8

    .line 108
    .local v5, nOfEntries:I
    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, inner:Lcom/android/camera/ui/PieItem;
    if-eqz v1, :cond_3

    .line 112
    aget v8, v1, v0

    invoke-virtual {p0, v8}, Lcom/android/camera/PieController;->makeItem(I)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    .line 116
    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/camera/ui/PieItem;->addItem(Lcom/android/camera/ui/PieItem;)V

    .line 117
    move v2, v0

    .line 118
    .restart local v2       #index:I
    new-instance v8, Lcom/android/camera/PieController$1;

    invoke-direct {v8, p0, v6, v2}, Lcom/android/camera/PieController$1;-><init>(Lcom/android/camera/PieController;Lcom/android/camera/IconListPreference;I)V

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/PieItem;->setOnClickListener(Lcom/android/camera/ui/PieItem$OnClickListener;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0           #i:I
    .end local v2           #index:I
    .end local v3           #inner:Lcom/android/camera/ui/PieItem;
    .end local v4           #item:Lcom/android/camera/ui/PieItem;
    .end local v5           #nOfEntries:I
    :cond_2
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v7

    goto :goto_0

    .line 114
    .restart local v0       #i:I
    .restart local v3       #inner:Lcom/android/camera/ui/PieItem;
    .restart local v4       #item:Lcom/android/camera/ui/PieItem;
    .restart local v5       #nOfEntries:I
    :cond_3
    invoke-virtual {v6}, Lcom/android/camera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {p0, v8}, Lcom/android/camera/PieController;->makeItem(Ljava/lang/CharSequence;)Lcom/android/camera/ui/PieItem;

    move-result-object v3

    goto :goto_2
.end method

.method public initialize(Lcom/android/camera/PreferenceGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/PieController;->mRenderer:Lcom/android/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/android/camera/ui/PieRenderer;->clearItems()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/camera/PieController;->setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V

    .line 63
    return-void
.end method

.method protected makeItem(I)Lcom/android/camera/ui/PieItem;
    .locals 3
    .parameter "resId"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/camera/PieController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method protected makeItem(Ljava/lang/CharSequence;)Lcom/android/camera/ui/PieItem;
    .locals 3
    .parameter "value"

    .prologue
    .line 83
    new-instance v0, Lcom/android/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/android/camera/PieController;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V

    .line 84
    .local v0, drawable:Lcom/android/camera/drawable/TextDrawable;
    new-instance v1, Lcom/android/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method public onSettingChanged(Lcom/android/camera/ListPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 69
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .parameter "keyvalues"

    .prologue
    .line 169
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 173
    .local v1, pref:Lcom/android/camera/IconListPreference;
    invoke-direct {p0, v1, p1}, Lcom/android/camera/PieController;->override(Lcom/android/camera/IconListPreference;[Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v1           #pref:Lcom/android/camera/IconListPreference;
    :cond_1
    return-void
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v2}, Lcom/android/camera/PreferenceGroup;->reloadValue()V

    .line 136
    iget-object v2, p0, Lcom/android/camera/PieController;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 137
    .local v1, pref:Lcom/android/camera/IconListPreference;
    invoke-direct {p0, v1}, Lcom/android/camera/PieController;->reloadPreference(Lcom/android/camera/IconListPreference;)V

    goto :goto_0

    .line 139
    .end local v1           #pref:Lcom/android/camera/IconListPreference;
    :cond_0
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 73
    .local v0, pref:Lcom/android/camera/ListPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/PieController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    .line 50
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/camera/PreferenceGroup;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/PieController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 132
    return-void
.end method
