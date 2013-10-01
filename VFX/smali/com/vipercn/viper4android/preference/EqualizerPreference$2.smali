.class Lcom/vipercn/viper4android/preference/EqualizerPreference$2;
.super Ljava/lang/Object;
.source "EqualizerPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/preference/EqualizerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/preference/EqualizerPreference;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/preference/EqualizerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference$2;->this$0:Lcom/vipercn/viper4android/preference/EqualizerPreference;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 86
    .local v3, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 88
    .local v4, y:F
    iget-object v5, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference$2;->this$0:Lcom/vipercn/viper4android/preference/EqualizerPreference;

    iget-object v5, v5, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    invoke-virtual {v5, v3}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->findClosest(F)I

    move-result v0

    .line 90
    .local v0, band:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 91
    .local v2, wy:I
    int-to-float v5, v2

    div-float v5, v4, v5

    sget v6, Lcom/vipercn/viper4android/preference/EqualizerSurface;->MIN_DB:I

    sget v7, Lcom/vipercn/viper4android/preference/EqualizerSurface;->MAX_DB:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sget v6, Lcom/vipercn/viper4android/preference/EqualizerSurface;->MIN_DB:I

    int-to-float v6, v6

    sub-float v1, v5, v6

    .line 92
    .local v1, level:F
    sget v5, Lcom/vipercn/viper4android/preference/EqualizerSurface;->MIN_DB:I

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    .line 94
    sget v5, Lcom/vipercn/viper4android/preference/EqualizerSurface;->MIN_DB:I

    int-to-float v1, v5

    .line 96
    :cond_0
    sget v5, Lcom/vipercn/viper4android/preference/EqualizerSurface;->MAX_DB:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1

    .line 98
    sget v5, Lcom/vipercn/viper4android/preference/EqualizerSurface;->MAX_DB:I

    int-to-float v1, v5

    .line 101
    :cond_1
    iget-object v5, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference$2;->this$0:Lcom/vipercn/viper4android/preference/EqualizerPreference;

    iget-object v5, v5, Lcom/vipercn/viper4android/preference/EqualizerPreference;->mDialogEqualizer:Lcom/vipercn/viper4android/preference/EqualizerSurface;

    invoke-virtual {v5, v0, v1}, Lcom/vipercn/viper4android/preference/EqualizerSurface;->setBand(IF)V

    .line 102
    iget-object v5, p0, Lcom/vipercn/viper4android/preference/EqualizerPreference$2;->this$0:Lcom/vipercn/viper4android/preference/EqualizerPreference;

    invoke-virtual {v5}, Lcom/vipercn/viper4android/preference/EqualizerPreference;->updateDspFromDialogEqualizer()V

    .line 103
    const/4 v5, 0x1

    return v5
.end method
