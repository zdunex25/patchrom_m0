.class Lcom/vipercn/viper4android/activity/ViPER4Android$12;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android/activity/ViPER4Android;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vipercn/viper4android/activity/ViPER4Android$12;)Lcom/vipercn/viper4android/activity/ViPER4Android;
    .locals 1
    .parameter

    .prologue
    .line 894
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v11, 0x7f060096

    const/4 v10, 0x2

    .line 898
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/ViPER4Android/Profile/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 899
    .local v6, szProfilePath:Ljava/lang/String;
    const-string v7, "ViPER4Android"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Load effect profile, current page = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$9(Lcom/vipercn/viper4android/activity/ViPER4Android;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    .line 901
    .local v4, szPreferenceName:[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "com.vipercn.viper4android.headset"

    aput-object v8, v4, v7

    .line 902
    const/4 v7, 0x1

    const-string v8, "com.vipercn.viper4android.speaker"

    aput-object v8, v4, v7

    .line 903
    const-string v7, "com.vipercn.viper4android.bluetooth"

    aput-object v7, v4, v10

    .line 904
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mCurrentPage:I
    invoke-static {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$9(Lcom/vipercn/viper4android/activity/ViPER4Android;)I

    move-result v2

    .line 905
    .local v2, nIndex:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 906
    :cond_0
    if-le v2, v10, :cond_1

    const/4 v2, 0x2

    .line 908
    :cond_1
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$10(Lcom/vipercn/viper4android/activity/ViPER4Android;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 909
    .local v0, arrayProfileList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, nPrfIdx:I
    :goto_0
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$10(Lcom/vipercn/viper4android/activity/ViPER4Android;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 912
    aget-object v5, v0, p2

    .line 913
    .local v5, szProfileName:Ljava/lang/String;
    aget-object v7, v4, v2

    iget-object v8, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/vipercn/viper4android/activity/Utils;->LoadProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 915
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 916
    .local v1, mResult:Landroid/app/AlertDialog$Builder;
    const-string v7, "ViPER4Android"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 917
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06008d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 918
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vipercn/viper4android/activity/ViPER4Android$12$1;

    invoke-direct {v8, p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$12$1;-><init>(Lcom/vipercn/viper4android/activity/ViPER4Android$12;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 924
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 934
    :goto_1
    return-void

    .line 910
    .end local v1           #mResult:Landroid/app/AlertDialog$Builder;
    .end local v5           #szProfileName:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mProfileList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$10(Lcom/vipercn/viper4android/activity/ViPER4Android;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v3

    .line 909
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 928
    .restart local v5       #szProfileName:Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mActivityContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$0(Lcom/vipercn/viper4android/activity/ViPER4Android;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 929
    .restart local v1       #mResult:Landroid/app/AlertDialog$Builder;
    const-string v7, "ViPER4Android"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 930
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06008e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 931
    iget-object v7, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$12;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    invoke-virtual {v7}, Lcom/vipercn/viper4android/activity/ViPER4Android;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 932
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
