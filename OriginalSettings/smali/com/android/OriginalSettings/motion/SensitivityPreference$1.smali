.class Lcom/android/OriginalSettings/motion/SensitivityPreference$1;
.super Ljava/lang/Object;
.source "SensitivityPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/motion/SensitivityPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/motion/SensitivityPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/motion/SensitivityPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/OriginalSettings/motion/SensitivityPreference$1;->this$0:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "witch"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/SensitivityPreference$1;->this$0:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    const/4 v1, -0x3

    #setter for: Lcom/android/OriginalSettings/motion/SensitivityPreference;->mWhichButtonClicked:I
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->access$002(Lcom/android/OriginalSettings/motion/SensitivityPreference;I)I

    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/SensitivityPreference$1;->this$0:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/SensitivityPreference$1;->this$0:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    #getter for: Lcom/android/OriginalSettings/motion/SensitivityPreference;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->access$100(Lcom/android/OriginalSettings/motion/SensitivityPreference;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/motion/SensitivityPreference$1;->this$0:Lcom/android/OriginalSettings/motion/SensitivityPreference;

    #getter for: Lcom/android/OriginalSettings/motion/SensitivityPreference;->mCurrentMotion:I
    invoke-static {v2}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->access$200(Lcom/android/OriginalSettings/motion/SensitivityPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/motion/SensitivityPreference;->startSensitivityTest(II)V

    .line 57
    return-void
.end method
