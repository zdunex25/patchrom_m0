.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 1532
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    const v4, 0x7f0b0297

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1533
    .local v1, aniImg:Landroid/widget/ImageView;
    const v3, 0x7f020327

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1535
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 1536
    .local v2, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1538
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const-string v4, "power"

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1539
    .local v0, PowerMgr:Landroid/os/PowerManager;
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v4, 0xa

    const-string v5, "WfdPickerActivity"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3502(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 1541
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const-wide/32 v4, 0x15f90

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1542
    const-string v3, "WfdPickerActivity"

    const-string v4, "WfdPicker WakeLock...this will be released automatically 90 secs after..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void
.end method
