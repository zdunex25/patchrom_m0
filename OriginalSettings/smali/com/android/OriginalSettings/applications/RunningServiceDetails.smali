.class public Lcom/android/OriginalSettings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/OriginalSettings/applications/RunningState;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 497
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 425
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/OriginalSettings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$1;-><init>(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 491
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/OriginalSettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 493
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 494
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 495
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter "comp"

    .prologue
    .line 480
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    .line 482
    .local v0, ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    .end local v0           #ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 480
    .restart local v0       #ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v0           #ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 361
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 362
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 361
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 366
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 368
    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 373
    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 376
    :cond_2
    iput v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    .line 378
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_8

    .line 379
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 380
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 387
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V

    .line 390
    :cond_4
    const/4 v0, -0x1

    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 391
    if-gez v0, :cond_5

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    .line 393
    .local v1, pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :goto_3
    iget v2, v1, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_6

    .line 390
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 391
    .end local v1           #pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 397
    .restart local v1       #pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :cond_6
    if-gez v0, :cond_7

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_5

    .line 400
    .end local v1           #pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :cond_8
    return-void
.end method

.method addProcessDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .parameter "pi"
    .parameter "isMain"

    .prologue
    const/4 v12, 0x0

    .line 300
    iget v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v9, :cond_0

    .line 301
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400cd

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 303
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v10, 0x7f0905f2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 306
    :cond_0
    iget v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 308
    new-instance v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V

    .line 309
    .local v2, detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0400c7

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 311
    .local v5, root:Landroid/view/View;
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 312
    iput-object v5, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 313
    new-instance v9, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 314
    iget-object v9, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    .line 316
    const v9, 0x7f0b0236

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 317
    .local v1, description:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 318
    const v9, 0x7f0905f9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 357
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    return-void

    .line 320
    :cond_2
    const/4 v8, 0x0

    .line 321
    .local v8, textid:I
    const/4 v3, 0x0

    .line 322
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 323
    .local v6, rpi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 326
    .local v0, comp:Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 352
    :cond_3
    :goto_1
    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 328
    :pswitch_0
    const v8, 0x7f0905fb

    .line 329
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 333
    .local v4, prov:Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/OriginalSettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 340
    .end local v4           #prov:Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0905fa

    .line 341
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 343
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 345
    .local v7, serv:Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/OriginalSettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 347
    .end local v7           #serv:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 335
    :catch_1
    move-exception v9

    goto :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addServiceDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V
    .locals 12
    .parameter "si"
    .parameter "mi"

    .prologue
    .line 216
    iget v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v8, :cond_0

    .line 217
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400cd

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 219
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v9, 0x7f0905f1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    :cond_0
    iget v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    .line 224
    if-eqz p1, :cond_6

    move-object v0, p1

    .line 226
    .local v0, bi:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;
    :goto_0
    new-instance v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V

    .line 227
    .local v3, detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400c8

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 229
    .local v6, root:Landroid/view/View;
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    iput-object v6, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 231
    iput-object p1, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    .line 232
    new-instance v8, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v8, v6}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 233
    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v8

    iput-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    .line 235
    if-eqz p1, :cond_1

    iget-object v8, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_1

    .line 236
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v9, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 240
    :cond_1
    const v8, 0x7f0b0236

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    .local v2, description:Landroid/widget/TextView;
    if-eqz p1, :cond_7

    iget-object v8, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v8, v8, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v8, :cond_7

    .line 242
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v11, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    const v8, 0x7f0b0193

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 265
    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v9, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_b

    const v8, 0x7f0905f4

    :goto_2
    invoke-virtual {v10, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const-string v8, "com.wssyncmldm"

    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "com.sec.android.fotaclient"

    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 272
    :cond_2
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, sales_code:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 274
    const-string v8, "ril.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 276
    :cond_3
    const-string v8, "TMB"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "ATT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 277
    :cond_4
    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    .end local v7           #sales_code:Ljava/lang/String;
    :cond_5
    const v8, 0x7f0b0192

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 282
    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v9, 0x10404d7

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 285
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "send_action_app_error"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 287
    .local v4, enabled:I
    if-eqz v4, :cond_d

    if-eqz p1, :cond_d

    .line 288
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v9, v10}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 291
    iget-object v9, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    :goto_4
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    return-void

    .end local v0           #bi:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;
    .end local v2           #description:Landroid/widget/TextView;
    .end local v3           #detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    .end local v4           #enabled:I
    .end local v6           #root:Landroid/view/View;
    :cond_6
    move-object v0, p2

    .line 224
    goto/16 :goto_0

    .line 246
    .restart local v0       #bi:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;
    .restart local v2       #description:Landroid/widget/TextView;
    .restart local v3       #detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6       #root:Landroid/view/View;
    :cond_7
    iget-boolean v8, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v8, :cond_8

    .line 247
    const v8, 0x7f0905f7

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 248
    :cond_8
    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_9

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 252
    .local v1, clientr:Landroid/content/res/Resources;
    iget-object v8, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0905f8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 255
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_1

    .line 258
    :cond_9
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz p1, :cond_a

    const v8, 0x7f0905f5

    :goto_5
    invoke-virtual {v9, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    const v8, 0x7f0905f6

    goto :goto_5

    .line 266
    :cond_b
    const v8, 0x7f0905f3

    goto/16 :goto_2

    .line 291
    .restart local v4       #enabled:I
    :cond_c
    const/4 v8, 0x0

    goto :goto_3

    .line 293
    :cond_d
    iget-object v8, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 544
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 545
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 546
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/applications/RunningState;->resume(Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningState;->waitForData()V

    .line 555
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 557
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, item:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 197
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 199
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    .line 200
    .local v2, mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    iget-object v4, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    move-object v1, v2

    .line 208
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_3

    .line 209
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    .line 210
    const/4 v4, 0x1

    .line 212
    :goto_2
    return v4

    .line 195
    .end local v3           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 198
    .restart local v0       #i:I
    .restart local v2       #mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    .restart local v3       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mUid:I

    .line 441
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 444
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 445
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 447
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    .line 448
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 452
    const v1, 0x7f0400c6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 454
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 455
    const v1, 0x7f0b0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 456
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 457
    new-instance v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 461
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->ensureData()V

    .line 463
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 470
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningState;->pause()V

    .line 471
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 584
    :goto_0
    return-void

    .line 571
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 573
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 576
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 580
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 581
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 476
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->ensureData()V

    .line 477
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .parameter "dataChanged"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 p1, 0x1

    .line 406
    :cond_0
    if-eqz p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    .line 420
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addDetailViews()V

    .line 422
    :cond_1
    :goto_1
    return-void

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0905f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 563
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    return-void
.end method
