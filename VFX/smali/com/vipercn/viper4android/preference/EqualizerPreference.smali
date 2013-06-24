.class public Lcom/vipercn/viper4android/preference/EqualizerPreference;
.super Landroid/preference/DialogPreference;
.source "EqualizerPreference.java"


# instance fields
.field private final connectionForDialog:Landroid/content/ServiceConnection;

.field protected mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

.field private mHeadsetService:Lcom/vipercn/viper4android/service/HeadsetService;

.field protected mListEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/vipercn/viper4android/preference/EqualizerPreference$1;

    invoke-direct {v0, p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference$1;-><init>(Lcom/vipercn/viper4android/preference/EqualizerPreference;)V

    iput-object v0, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->connectionForDialog:Landroid/content/ServiceConnection;

    .line 44
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->setLayoutResource(I)V

    .line 45
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->setDialogLayoutResource(I)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/preference/EqualizerPreference;Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mHeadsetService:Lcom/vipercn/viper4android/service/HeadsetService;

    return-void
.end method

.method private updateListEqualizerFromValue()V
    .locals 5

    .prologue
    .line 63
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mListEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    if-eqz v3, :cond_0

    .line 66
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, levelsStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    .line 72
    .end local v0           #i:I
    .end local v1           #levelsStr:[Ljava/lang/String;
    :cond_0
    return-void

    .line 69
    .restart local v0       #i:I
    .restart local v1       #levelsStr:[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mListEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->setBand(IF)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 79
    const v1, 0x7f080001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vipercn/viper4android/preference/EqualizerSurface;

    iput-object v1, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    .line 80
    iget-object v1, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    new-instance v2, Lcom/vipercn/viper4android/preference/EqualizerPreference$2;

    invoke-direct {v2, p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference$2;-><init>(Lcom/vipercn/viper4android/preference/EqualizerPreference;)V

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v1, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mListEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    if-eqz v1, :cond_0

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 115
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->connectionForDialog:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 116
    return-void

    .line 111
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    iget-object v2, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mListEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    invoke-virtual {v2, v0}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->getBand(I)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->setBand(IF)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 143
    const v0, 0x7f080001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vipercn/viper4android/preference/EqualizerSurface;

    iput-object v0, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mListEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    .line 144
    invoke-direct {p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->updateListEqualizerFromValue()V

    .line 145
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 9
    .parameter "positiveResult"

    .prologue
    const/high16 v8, 0x4120

    .line 121
    if-eqz p1, :cond_0

    .line 123
    const-string v1, ""

    .line 124
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->persistString(Ljava/lang/String;)Z

    .line 129
    invoke-direct {p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->updateListEqualizerFromValue()V

    .line 132
    .end local v0           #i:I
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mHeadsetService:Lcom/vipercn/viper4android/service/HeadsetService;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mHeadsetService:Lcom/vipercn/viper4android/service/HeadsetService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vipercn/viper4android/service/HeadsetService;->setEqualizerLevels([F)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->connectionForDialog:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    return-void

    .line 126
    .restart local v0       #i:I
    .restart local v1       #value:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    invoke-virtual {v7, v0}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->getBand(I)F

    move-result v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 150
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .end local p2
    .local v0, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->persistString(Ljava/lang/String;)Z

    .line 155
    :cond_0
    return-void

    .line 150
    .end local v0           #value:Ljava/lang/String;
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    goto :goto_0
.end method

.method public refreshFromPreference()V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 160
    return-void
.end method

.method protected updateDspFromDialogEqualizer()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mHeadsetService:Lcom/vipercn/viper4android/service/HeadsetService;

    if-eqz v2, :cond_0

    .line 52
    const/16 v2, 0xa

    new-array v1, v2, [F

    .line 53
    .local v1, levels:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mHeadsetService:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v2, v1}, Lcom/vipercn/viper4android/service/HeadsetService;->setEqualizerLevels([F)V

    .line 59
    .end local v0           #i:I
    .end local v1           #levels:[F
    :cond_0
    return-void

    .line 55
    .restart local v0       #i:I
    .restart local v1       #levels:[F
    :cond_1
    iget-object v2, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    invoke-virtual {v2, v0}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->getBand(I)F

    move-result v2

    aput v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
