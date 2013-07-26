.class Lde/cstudio/changecarrier/ChangeCarrierActivity$3;
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
    iput-object p1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    iput-object p2, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->val$extern_backup:Ljava/io/File;

    iput-object p3, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->val$intern_backup:Ljava/io/File;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "selectedItem"

    .prologue
    .line 181
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "/system"

    const-string v1, "RW"

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    :try_start_0
    const-string v0, "chmod 777 /system/etc/spn-conf.xml"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 194
    :goto_0
    const-string v0, "chmod 444 /system/etc/spn-conf.xml"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    const-string v0, "/system"

    const-string v1, "RO"

    invoke-static {v0, v1}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const v1, 0x7f060005

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V
    invoke-static {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$2(Lde/cstudio/changecarrier/ChangeCarrierActivity;I)V

    .line 200
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->getCurrentCarrier()Ljava/lang/String;
    invoke-static {v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$3(Lde/cstudio/changecarrier/ChangeCarrierActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->RebootDialog()V
    invoke-static {v0}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$4(Lde/cstudio/changecarrier/ChangeCarrierActivity;)V

    .line 205
    :goto_2
    return-void

    .line 188
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->val$extern_backup:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">/system/etc/spn-conf.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_1

    .line 191
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cat "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->val$intern_backup:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">/system/etc/spn-conf.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lde/cstudio/changecarrier/ChangeCarrierActivity$3;->this$0:Lde/cstudio/changecarrier/ChangeCarrierActivity;

    const v1, 0x7f06001b

    #calls: Lde/cstudio/changecarrier/ChangeCarrierActivity;->Toasty(I)V
    invoke-static {v0, v1}, Lde/cstudio/changecarrier/ChangeCarrierActivity;->access$2(Lde/cstudio/changecarrier/ChangeCarrierActivity;I)V

    goto :goto_2

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
