.class public Lcom/android/internal/policy/impl/sec/TickerScrollView;
.super Landroid/widget/LinearLayout;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/TickerScrollView$10;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;,
        Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;
    }
.end annotation


# static fields
.field private static final KEY_CALLER_IDENTITY:Ljava/lang/String; = "pendingIntent"


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private final VELOCITY_JUDGEMENT_VALUE:I

.field private final VELOCITY_UNITS:I

.field public mAccountThread:Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;

.field private mContext:Landroid/content/Context;

.field mFacebookArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

.field private mFacebookListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

.field mNewsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

.field private mNewsListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

.field mStockArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;",
            ">;"
        }
    .end annotation
.end field

.field private mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

.field private mStockListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

.field private mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

.field private mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityUnits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->DBG:Z

    .line 53
    const-string v1, "Ticker"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->TAG:Ljava/lang/String;

    .line 59
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->VELOCITY_UNITS:I

    .line 60
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->VELOCITY_JUDGEMENT_VALUE:I

    .line 61
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    .line 62
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    .line 63
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    .line 64
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    .line 65
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    .line 66
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookArrayList:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mAccountThread:Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;

    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 132
    .local v0, density:F
    const/high16 v1, 0x44fa

    div-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityUnits:I

    .line 133
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    .line 134
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :goto_0
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    .line 157
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    :cond_0
    :goto_1
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    .line 180
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    :goto_2
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerScrollView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$1;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$2;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 182
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerScrollView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$3;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerScrollView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$4;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/TickerScrollView;)Lcom/android/internal/policy/impl/sec/TickerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    return-object v0
.end method

.method private createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/FrameLayout;
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    .line 215
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 216
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 217
    .local v3, tempFrameLayout:Landroid/widget/FrameLayout;
    const v4, 0x1090067

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 218
    const v4, 0x102031f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 219
    .local v2, mHelpText:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const v4, 0x1020320

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 221
    .local v1, mHelpButton:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    return-object v3
.end method

.method private createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;
    .locals 6
    .parameter "context"
    .parameter "message"
    .parameter "tickerStatus"

    .prologue
    .line 225
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .local v3, tempFrameLayout:Landroid/widget/FrameLayout;
    const v4, 0x1090067

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 228
    const v4, 0x102031f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 229
    .local v2, mHelpText:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    const v4, 0x1020320

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 231
    .local v1, mHelpButton:Landroid/widget/TextView;
    sget-object v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$10;->$SwitchMap$com$android$internal$policy$impl$sec$TickerUtil$TickerStatus:[I

    invoke-virtual {p3}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 340
    :goto_0
    return-object v3

    .line 233
    :pswitch_0
    const v4, 0x1040687

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 234
    new-instance v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$5;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 264
    :pswitch_1
    const v4, 0x1040688

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 265
    new-instance v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$6;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 297
    :pswitch_2
    const v4, 0x104068e

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 298
    new-instance v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$7;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$7;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 313
    :pswitch_3
    const v4, 0x104068f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 314
    new-instance v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$8;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 326
    :pswitch_4
    const v4, 0x1040689

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 327
    new-instance v4, Lcom/android/internal/policy/impl/sec/TickerScrollView$9;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$9;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 801
    return-void
.end method

.method initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;>;"
    const/4 v9, -0x1

    .line 382
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->removeAllViews()V

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->clear()V

    .line 387
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setGravity(I)V

    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookArrayList:Ljava/util/ArrayList;

    .line 389
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 390
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    iget-object v4, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    .line 391
    .local v4, createdtime:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    iget-object v2, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    .line 392
    .local v2, contents:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    iget-object v3, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    .line 393
    .local v3, fromname:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    iget-object v5, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookPostID:Ljava/lang/String;

    .line 394
    .local v5, postid:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v0, facebookData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    if-nez v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 401
    .end local v0           #facebookData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;
    .end local v2           #contents:Ljava/lang/String;
    .end local v3           #fromname:Ljava/lang/String;
    .end local v4           #createdtime:Ljava/lang/String;
    .end local v5           #postid:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 402
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    const v7, 0x1090065

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p1, v7, v8}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    .line 403
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookListAdapter;

    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookArrayList:Ljava/util/ArrayList;

    .line 406
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    invoke-virtual {p0, v1, v9, v9}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 407
    return-void
.end method

.method initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    const/4 v9, -0x1

    .line 409
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->removeAllViews()V

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->clear()V

    .line 414
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setGravity(I)V

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    .line 416
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 417
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    iget-object v2, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .line 419
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    iget-object v3, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .line 420
    .local v3, credit:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    iget-object v4, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .line 421
    .local v4, publishTime:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    iget-object v5, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    .line 423
    .local v5, URL:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .local v0, newsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    if-nez v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 430
    .end local v0           #newsData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #credit:Ljava/lang/String;
    .end local v4           #publishTime:Ljava/lang/String;
    .end local v5           #URL:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 431
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    const v7, 0x1090069

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p1, v7, v8}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    .line 432
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsListAdapter;

    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    .line 435
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    invoke-virtual {p0, v1, v9, v9}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 436
    return-void
.end method

.method initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    const/4 v11, -0x1

    .line 438
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->removeAllViews()V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->clear()V

    .line 443
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setGravity(I)V

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    .line 445
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_3

    .line 446
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v2, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 447
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v3, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 448
    .local v3, originalPrice:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v4, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 449
    .local v4, changePrice:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v5, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 450
    .local v5, changePercent:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v6, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->url:Ljava/lang/String;

    .line 451
    .local v6, uRL:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v0, stockData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    if-nez v1, :cond_2

    .line 453
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 458
    .end local v0           #stockData:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockData;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #originalPrice:Ljava/lang/String;
    .end local v4           #changePrice:Ljava/lang/String;
    .end local v5           #changePercent:Ljava/lang/String;
    .end local v6           #uRL:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 459
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mContext:Landroid/content/Context;

    const v9, 0x109006b

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v8, v9, v10}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;-><init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerStockListAdapter;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    .line 463
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    invoke-virtual {p0, v1, v11, v11}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 464
    return-void
.end method

.method public moveToPage(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->smoothScrollToPositionFromTop(II)V

    .line 473
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/sec/TickerWidget$TickerType;

    if-ne v0, v1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mFacebookListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 344
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 799
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 350
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 379
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 356
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 358
    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityUnits:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 359
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 360
    .local v1, yVelocity:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->DBG:Z

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yVelocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 364
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 367
    const v2, 0x459c4000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/sec/TickerCallback;->closeTickerSlidingDrawer()V

    .line 370
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "tickerStatus"

    .prologue
    const/4 v1, -0x1

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->removeAllViews()V

    .line 790
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setGravity(I)V

    .line 791
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 792
    return-void
.end method

.method setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v1, -0x1

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->removeAllViews()V

    .line 785
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->setGravity(I)V

    .line 786
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/sec/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 787
    return-void
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 795
    return-void
.end method
