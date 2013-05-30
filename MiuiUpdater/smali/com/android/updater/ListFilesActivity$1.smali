.class Lcom/android/updater/ListFilesActivity$1;
.super Ljava/lang/Object;
.source "ListFilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ListFilesActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ListFilesActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/ListFilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/ListFilesActivity$1;->this$0:Lcom/android/updater/ListFilesActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    const-wide v0, 0x9a7ec800L

    .line 98
    .local v0, maxAge:J
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/android/updater/ListFilesActivity$1;->this$0:Lcom/android/updater/ListFilesActivity;

    #calls: Lcom/android/updater/ListFilesActivity;->pruneFiles(J)V
    invoke-static {v2, v0, v1}, Lcom/android/updater/ListFilesActivity;->access$0(Lcom/android/updater/ListFilesActivity;J)V

    .line 116
    iget-object v2, p0, Lcom/android/updater/ListFilesActivity$1;->this$0:Lcom/android/updater/ListFilesActivity;

    sget-object v3, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    #calls: Lcom/android/updater/ListFilesActivity;->listFiles(Ljava/io/File;)V
    invoke-static {v2, v3}, Lcom/android/updater/ListFilesActivity;->access$1(Lcom/android/updater/ListFilesActivity;Ljava/io/File;)V

    .line 117
    return-void

    .line 100
    :pswitch_0
    const-wide/32 v0, 0x240c8400

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    const-wide/32 v0, 0x48190800

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    const-wide v0, 0x9a7ec800L

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    const-wide v0, 0x1cf7c5800L

    .line 110
    goto :goto_0

    .line 112
    :pswitch_4
    const-wide v0, 0x39ef8b000L

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
