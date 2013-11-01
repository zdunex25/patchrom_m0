.class Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1017
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Save effect profile, current page = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$14;
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$14;

    move-result-object v4

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->access$1(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v4

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I
    invoke-static {v4}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$9(Lcom/vipercn/viper4android/activity/ViPER4Android;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 1019
    .local v1, szPreferenceName:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "com.vipercn.viper4android.headset"

    aput-object v3, v1, v2

    .line 1020
    const-string v2, "com.vipercn.viper4android.speaker"

    aput-object v2, v1, v6

    .line 1021
    const-string v2, "com.vipercn.viper4android.bluetooth"

    aput-object v2, v1, v5

    .line 1022
    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$14;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$14;

    move-result-object v2

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->access$1(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v2

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$9(Lcom/vipercn/viper4android/activity/ViPER4Android;)I

    move-result v0

    .line 1023
    .local v0, nIndex:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1024
    :cond_0
    if-le v0, v5, :cond_1

    const/4 v0, 0x2

    .line 1025
    :cond_1
    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$14;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$14;

    move-result-object v2

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->access$1(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v2

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->szSaveProfileNameGlobal:Ljava/lang/String;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$12(Lcom/vipercn/viper4android/activity/ViPER4Android;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ViPER4Android/Profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$14;
    invoke-static {v5}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$14;

    move-result-object v5

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v5}, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->access$1(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v5

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/vipercn/viper4android/activity/Utils;->SaveProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1026
    iget-object v2, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$14;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$14;

    move-result-object v2

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->access$1(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v2

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1$1;->this$2:Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->this$1:Lcom/vipercn/viper4android/activity/ViPER4Android$14;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$14$1;)Lcom/vipercn/viper4android/activity/ViPER4Android$14;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android$14;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android$14;->access$1(Lcom/vipercn/viper4android/activity/ViPER4Android$14;)Lcom/vipercn/viper4android/activity/ViPER4Android;

    move-result-object v3

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1027
    return-void
.end method
