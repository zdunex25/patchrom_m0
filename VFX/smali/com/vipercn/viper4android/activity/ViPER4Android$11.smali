.class Lcom/vipercn/viper4android/activity/ViPER4Android$11;
.super Landroid/app/DialogFragment;
.source "ViPER4Android.java"


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
    iput-object p1, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    .line 781
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "state"

    .prologue
    .line 786
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    if-nez v9, :cond_0

    .line 788
    const/high16 v9, 0x7f03

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 789
    .local v8, v:Landroid/view/View;
    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 790
    .local v7, tv:Landroid/widget/TextView;
    const v9, 0x7f0600a6

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 837
    :goto_0
    return-object v8

    .line 795
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #v:Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->StartStatusUpdating()V

    .line 798
    const-wide/16 v9, 0x1f4

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->StopStatusUpdating()V

    .line 810
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060082

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 811
    .local v3, szDrvNEONEnabled:Ljava/lang/String;
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverNEON()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060083

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060082

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, szDrvEnabled:Ljava/lang/String;
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverEnabled()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060083

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060084

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 815
    .local v6, szDrvUsable:Ljava/lang/String;
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverUsable()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060085

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 816
    :cond_3
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060082

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, szDrvProcess:Ljava/lang/String;
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverProcess()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060083

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 819
    :cond_4
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06007c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, szDrvEffType:Ljava/lang/String;
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverEffectType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 821
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06007d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 825
    :cond_5
    :goto_1
    const-string v5, ""

    .line 826
    .local v5, szDrvStatus:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0600a5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 827
    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 828
    iget-object v11, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v11}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverVersion()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    .line 829
    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    const/4 v10, 0x4

    aput-object v4, v9, v10

    const/4 v10, 0x5

    .line 830
    aput-object v1, v9, v10

    const/4 v10, 0x6

    .line 831
    iget-object v11, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v11}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverSamplingRate()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    .line 832
    iget-object v11, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v11}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverChannels()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 827
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 834
    const/high16 v9, 0x7f03

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 835
    .restart local v8       #v:Landroid/view/View;
    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 836
    .restart local v7       #tv:Landroid/widget/TextView;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 800
    .end local v1           #szDrvEffType:Ljava/lang/String;
    .end local v2           #szDrvEnabled:Ljava/lang/String;
    .end local v3           #szDrvNEONEnabled:Ljava/lang/String;
    .end local v4           #szDrvProcess:Ljava/lang/String;
    .end local v5           #szDrvStatus:Ljava/lang/String;
    .end local v6           #szDrvUsable:Ljava/lang/String;
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #v:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->StopStatusUpdating()V

    .line 803
    const/high16 v9, 0x7f03

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 804
    .restart local v8       #v:Landroid/view/View;
    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 805
    .restart local v7       #tv:Landroid/widget/TextView;
    const v9, 0x7f0600a6

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 822
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #v:Landroid/view/View;
    .restart local v1       #szDrvEffType:Ljava/lang/String;
    .restart local v2       #szDrvEnabled:Ljava/lang/String;
    .restart local v3       #szDrvNEONEnabled:Ljava/lang/String;
    .restart local v4       #szDrvProcess:Ljava/lang/String;
    .restart local v6       #szDrvUsable:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->this$0:Lcom/vipercn/viper4android/activity/ViPER4Android;

    #getter for: Lcom/vipercn/viper4android/activity/ViPER4Android;->mHeadsetServiceInstance:Lcom/vipercn/viper4android/service/HeadsetService;
    invoke-static {v9}, Lcom/vipercn/viper4android/activity/ViPER4Android;->access$8(Lcom/vipercn/viper4android/activity/ViPER4Android;)Lcom/vipercn/viper4android/service/HeadsetService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vipercn/viper4android/service/HeadsetService;->GetDriverEffectType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 823
    invoke-virtual {p0}, Lcom/vipercn/viper4android/activity/ViPER4Android$11;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06007f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method
