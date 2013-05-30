.class Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    #getter for: Lcom/android/OriginalSettings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;
    invoke-static {v0}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->access$000(Lcom/android/OriginalSettings/guide/BtSettingsGuider;)Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/OriginalSettings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    iget-object v0, v0, Lcom/android/OriginalSettings/guide/GuiderBase;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    iget-object v1, p0, Lcom/android/OriginalSettings/guide/BtSettingsGuider$2;->this$0:Lcom/android/OriginalSettings/guide/BtSettingsGuider;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/sec/android/touchwiz/widget/TwHelpDialog;Landroid/app/Activity;)V

    .line 372
    :cond_0
    return-void
.end method
