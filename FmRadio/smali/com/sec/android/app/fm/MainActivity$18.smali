.class Lcom/sec/android/app/fm/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 3592
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/high16 v2, -0x4080

    .line 3597
    if-nez p3, :cond_1

    .line 3601
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3602
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 3603
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->removeAllChannel()V

    .line 3605
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 3606
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 3616
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$6700(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3620
    :goto_1
    return-void

    .line 3609
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3610
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 3611
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->clearNonFavChannel()V

    goto :goto_0

    .line 3617
    :catch_0
    move-exception v0

    .line 3618
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->removeDialog(I)V

    goto :goto_1
.end method
