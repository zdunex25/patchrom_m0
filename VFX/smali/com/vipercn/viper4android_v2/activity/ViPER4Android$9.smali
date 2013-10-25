.class Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;
.super Landroid/app/DialogFragment;
.source "ViPER4Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    .line 775
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "state"

    .prologue
    .line 780
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    if-nez v8, :cond_0

    .line 782
    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 783
    .local v7, v:Landroid/view/View;
    const/high16 v8, 0x7f08

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 784
    .local v6, tv:Landroid/widget/TextView;
    const v8, 0x7f0600aa

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 820
    :goto_0
    return-object v7

    .line 789
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->StartStatusUpdating()V

    .line 790
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 791
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->StopStatusUpdating()V

    .line 793
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, szDrvNEONEnabled:Ljava/lang/String;
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverNEON()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, szDrvEnabled:Ljava/lang/String;
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 797
    :cond_2
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, szDrvUsable:Ljava/lang/String;
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverUsable()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 799
    :cond_3
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, szDrvProcess:Ljava/lang/String;
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverProcess()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06008b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 802
    :cond_4
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060083

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, szDrvEffType:Ljava/lang/String;
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverEffectType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 804
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060084

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 808
    :cond_5
    :goto_1
    const-string v4, ""

    .line 809
    .local v4, szDrvStatus:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0600a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 810
    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 811
    iget-object v10, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v10}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverVersion()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    .line 812
    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    const/4 v9, 0x5

    .line 813
    aput-object v0, v8, v9

    const/4 v9, 0x6

    .line 814
    iget-object v10, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v10}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverSamplingRate()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 815
    iget-object v10, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v10}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverChannels()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 810
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 817
    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 818
    .restart local v7       #v:Landroid/view/View;
    const/high16 v8, 0x7f08

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 819
    .restart local v6       #tv:Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 805
    .end local v4           #szDrvStatus:Ljava/lang/String;
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_6
    iget-object v8, p0, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->this$0:Lcom/vipercn/viper4android_v2/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->mAudioServiceInstance:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
    invoke-static {v8}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android;->access$7(Lcom/vipercn/viper4android_v2/activity/ViPER4Android;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->GetDriverEffectType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 806
    invoke-virtual {p0}, Lcom/vipercn/viper4android_v2/activity/ViPER4Android$9;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060086

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
