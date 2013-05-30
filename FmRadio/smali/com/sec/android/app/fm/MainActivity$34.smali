.class Lcom/sec/android/app/fm/MainActivity$34;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->radioStatusHideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5966
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$34;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 5970
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$34;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0x8

    #calls: Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->access$600(Lcom/sec/android/app/fm/MainActivity;I)V

    .line 5971
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$34;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5973
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$34;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 5975
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 5968
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 5967
    return-void
.end method
