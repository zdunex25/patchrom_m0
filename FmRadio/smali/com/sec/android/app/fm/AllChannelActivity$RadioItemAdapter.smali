.class Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/AllChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/fm/data/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/fm/AllChannelActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 871
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/fm/data/Channel;>;"
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    .line 872
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 873
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 876
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 883
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 884
    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Lcom/sec/android/app/fm/data/Channel;
    .locals 2
    .parameter "position"

    .prologue
    .line 892
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 893
    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    monitor-exit v1

    return-object v0

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->getItem(I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "arg0"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 902
    sget-object v12, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v12, v12, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 903
    .local v2, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez p2, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f030002

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 906
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/sec/android/app/fm/AllChannelActivity;->setChanFreqWidth(Landroid/view/View;)V

    .line 908
    const v12, 0x7f070009

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 911
    .local v7, imgFavIcon:Landroid/widget/ImageView;
    new-instance v12, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;-><init>(Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;I)V

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    const v12, 0x7f070007

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 965
    .local v11, txtChannelName:Landroid/widget/TextView;
    const v12, 0x7f070008

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 968
    .local v8, imgSpkIcon:Landroid/widget/ImageView;
    const v12, 0x7f070006

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 972
    .local v10, txtChannelFreq:Landroid/widget/TextView;
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v12

    const/16 v13, 0x32

    if-ne v12, v13, :cond_1

    .line 974
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MHz"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%.2f"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MHz "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, desc:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 977
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 978
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 989
    :goto_0
    iget-object v12, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    iget-boolean v12, v2, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v12, :cond_2

    .line 993
    const v12, 0x7f0200d3

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1001
    :goto_1
    :try_start_0
    sget-object v12, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v12

    iget v13, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    .line 1008
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1010
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_2
    return-object p2

    .line 980
    .end local v3           #desc:Ljava/lang/String;
    :cond_1
    iget v12, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    const/high16 v13, 0x4120

    mul-float/2addr v12, v13

    float-to-long v5, v12

    .line 981
    .local v5, freq:J
    long-to-float v12, v5

    const/high16 v13, 0x4120

    div-float v9, v12, v13

    .line 982
    .local v9, mFreqMHz:F
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MHz"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " MHz "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 984
    .restart local v3       #desc:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 985
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 986
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 995
    .end local v5           #freq:J
    .end local v9           #mFreqMHz:F
    :cond_2
    const v12, 0x7f0200d2

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1020
    :cond_3
    const/16 v12, 0x8

    :try_start_1
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1021
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1025
    :catch_0
    move-exception v4

    .line 1027
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1028
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 1036
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/sec/android/app/fm/AllChannelActivity;->access$700(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/app/fm/AllChannelActivity;->access$700(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/AllChannelActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1040
    :cond_0
    return-void
.end method
