.class Lde/cstudio/changecarrier/ChangeCarrierActivity$4;
.super Ljava/lang/Object;
.source "ChangeCarrierActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/cstudio/changecarrier/ChangeCarrierActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

.field private final synthetic val$extern_backup:Ljava/io/File;

.field private final synthetic val$intern_backup:Ljava/io/File;


# direct methods
.method constructor <init>(Lde/cstudio/changecarrier/ChangeCarrierActivity;Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    iput-object p2, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;->val$intern_backup:Ljava/io/File;

    iput-object p3, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;->val$extern_backup:Ljava/io/File;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;->val$intern_backup:Ljava/io/File;

    iget-object v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;->val$extern_backup:Ljava/io/File;

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    invoke-static {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$5(Ljava/io/File;Ljava/io/File;)V

    .line 252
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$4;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const v1, 0x7f060007

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V
    invoke-static {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$2(Lde/cstudio/changecarrier/ChangeCarrierActivity;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method
