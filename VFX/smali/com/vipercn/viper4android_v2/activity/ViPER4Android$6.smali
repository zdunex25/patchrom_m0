.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;
.super Ljava/lang/Object;
.source "ViPER4Android.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 590
    check-cast p2, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$LocalBinder;->getService()Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v3

    .line 591
    .local v3, service:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #setter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v4, v3}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$6(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V

    .line 593
    invoke-virtual {v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getAudioOutputRouting()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, routing:Ljava/lang/String;
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    iget-object v4, v4, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->pagerAdapter:Lcom/vipercn/viper4android_v2/activity/MyAdapter;

    invoke-virtual {v4}, Lcom/vipercn/viper4android_v2/activity/MyAdapter;->getEntries()[Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, entries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 604
    :goto_1
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    invoke-virtual {v4, p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->unbindService(Landroid/content/ServiceConnection;)V

    .line 605
    return-void

    .line 597
    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    iget-object v4, v4, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 600
    iget-object v4, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    iget-object v4, v4, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$6;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    iget-object v5, v5, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_1

    .line 595
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 609
    const-string v0, "ViPER4Android"

    const-string v1, "ViPER4Android service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
