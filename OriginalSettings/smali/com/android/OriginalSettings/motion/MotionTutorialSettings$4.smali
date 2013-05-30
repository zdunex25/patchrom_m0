.class Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    #calls: Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->access$600(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    #calls: Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->access$700(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    .line 394
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    #calls: Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->access$800(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    #getter for: Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->access$200(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    #calls: Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->startTryActually()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->access$500(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/MotionTutorialSettings$4;->this$0:Lcom/android/OriginalSettings/motion/MotionTutorialSettings;

    #calls: Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/OriginalSettings/motion/MotionTutorialSettings;->access$700(Lcom/android/OriginalSettings/motion/MotionTutorialSettings;)V

    goto :goto_0
.end method
