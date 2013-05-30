.class public Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakeTutorialProgressCategory"
.end annotation


# instance fields
.field private mProgress:Z

.field final synthetic this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->this$0:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment;

    .line 340
    invoke-direct {p0, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    .line 341
    const v0, 0x7f0400b2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->setLayoutResource(I)V

    .line 342
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 347
    const v3, 0x7f0b01e8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, textView:Landroid/view/View;
    const v3, 0x7f0b01e7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 351
    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 353
    return-void

    .line 350
    .end local v2           #visibility:I
    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->mProgress:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->notifyChanged()V

    .line 363
    return-void
.end method
