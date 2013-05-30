.class public Lcom/sec/android/app/fm/RecordedFileListActivity;
.super Landroid/app/Activity;
.source "RecordedFileListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSelectedFilePath:Ljava/lang/String;


# instance fields
.field protected mAdapter:Landroid/widget/CursorAdapter;

.field private mBackKey:Z

.field private mCurrentSelectedId:J

.field protected mHandler:Landroid/os/Handler;

.field protected mListView:Landroid/widget/ListView;

.field private mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mNormalListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSavedSelectedId:J

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    .line 61
    iput-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RecordedFileListActivity$1;-><init>(Lcom/sec/android/app/fm/RecordedFileListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mBackKey:Z

    .line 84
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RecordedFileListActivity$2;-><init>(Lcom/sec/android/app/fm/RecordedFileListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mNormalListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RecordedFileListActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/RecordedFileListActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RecordedFileListActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J

    return-wide v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mSelectedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/RecordedFileListActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static getFileName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 215
    const/4 v3, 0x0

    .line 216
    .local v3, selection:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v6, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    const/4 v8, 0x0

    .line 221
    .local v8, title:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 224
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 226
    .local v9, titleIndex:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 231
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #titleIndex:I
    :cond_0
    return-object v8
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "initList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mListView:Landroid/widget/ListView;

    .line 155
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->setEmptyView()V

    .line 159
    return-void
.end method

.method private setEmptyView()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 427
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/RecordedFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 428
    .local v1, layout:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 430
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, emptyView:Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 433
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 436
    return-void
.end method


# virtual methods
.method protected getCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 97
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "getCursor()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 100
    .local v5, orderBy:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v0, "(_data LIKE \'%.3ga\' or _data LIKE \'%.amr\')"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (mime_type LIKE \'audio/3gpp\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/amr\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or mime_type LIKE \'audio/mp4\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and (_size != \'0\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 117
    const-string v0, "date_modified"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "   Cursor opened"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public getDateFormatString(J)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 129
    const-string v0, ""

    .line 131
    .local v0, dateString:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 132
    .local v1, shortDateFormat:Ljava/text/DateFormat;
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public getTimeFormatString(J)Ljava/lang/String;
    .locals 12
    .parameter "ms"

    .prologue
    .line 139
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 140
    .local v6, totalSeconds:J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 141
    .local v4, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 142
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 144
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 145
    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    :goto_0
    return-object v8

    :cond_0
    const-string v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getfilepath(J)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "_data"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 238
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mSelectedFilePath:Ljava/lang/String;

    .line 243
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mBackKey:Z

    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 536
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 423
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->setEmptyView()V

    .line 424
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 277
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->showDialog(I)V

    goto :goto_0

    .line 280
    :pswitch_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->showDialog(I)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 163
    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->setContentView(I)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    sget-object v1, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate savedInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "selected_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 177
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mToast:Landroid/widget/Toast;

    .line 179
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->initList()V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->setAdapter()V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->setOnItemClickListener()V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/RecordedFileListActivity$3;

    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/fm/RecordedFileListActivity$3;-><init>(Lcom/sec/android/app/fm/RecordedFileListActivity;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x0

    .line 254
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-wide v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v4, v5}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, filename:Ljava/lang/String;
    iget-wide v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v4, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    .line 262
    if-nez v2, :cond_0

    .line 263
    sget-object v4, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCreateContextMenu: Can`t load file."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v2           #filename:Ljava/lang/String;
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 267
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 268
    const/4 v4, 0x3

    const v5, 0x7f0a00a6

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 269
    const/4 v4, 0x4

    const v5, 0x7f0a0025

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 292
    sget-object v2, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreateDialog()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    packed-switch p1, :pswitch_data_0

    .line 383
    :goto_0
    return-object v1

    .line 295
    :pswitch_0
    new-instance v1, Lcom/sec/android/app/fm/ui/RenameFileDialog;

    new-instance v2, Lcom/sec/android/app/fm/RecordedFileListActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RecordedFileListActivity$4;-><init>(Lcom/sec/android/app/fm/RecordedFileListActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/fm/ui/RenameFileDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 359
    .local v1, dialog:Lcom/sec/android/app/fm/ui/RenameFileDialog;
    goto :goto_0

    .line 361
    .end local v1           #dialog:Lcom/sec/android/app/fm/ui/RenameFileDialog;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00a6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00b8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0020

    new-instance v4, Lcom/sec/android/app/fm/RecordedFileListActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/fm/RecordedFileListActivity$5;-><init>(Lcom/sec/android/app/fm/RecordedFileListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0021

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 407
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "   Cursor closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 418
    return-void
.end method

.method protected onMediaScannerFinished()V
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaScannerFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->invalidateOptionsMenu()V

    .line 442
    return-void
.end method

.method protected onMediaScannerStarted()V
    .locals 2

    .prologue
    .line 445
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaScannerStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->invalidateOptionsMenu()V

    .line 447
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 451
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 469
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 454
    :sswitch_0
    iput-boolean v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mBackKey:Z

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 459
    :sswitch_1
    iput-boolean v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mBackKey:Z

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RenameFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    :sswitch_2
    iput-boolean v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mBackKey:Z

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->finish()V

    goto :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 390
    packed-switch p1, :pswitch_data_0

    .line 403
    .end local p2
    :goto_0
    return-void

    .line 392
    .restart local p2
    :pswitch_0
    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    invoke-static {p0, v2, v3}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, filename:Ljava/lang/String;
    check-cast p2, Lcom/sec/android/app/fm/ui/RenameFileDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v0           #filename:Ljava/lang/String;
    .restart local p2
    :pswitch_1
    const v2, 0x7f0a00b8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, message:Ljava/lang/String;
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 474
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 477
    const v0, 0x7f0a00a6

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020138

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 479
    const v0, 0x7f0a0025

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02013c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 482
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    const-wide/16 v4, -0x1

    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    sget-object v2, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v3, "onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    iget-wide v2, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mCurrentSelectedId:J

    .line 210
    .local v0, id:J
    :goto_0
    const-string v2, "selected_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    .end local v0           #id:J
    :cond_1
    return-void

    .line 209
    :cond_2
    iget-wide v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mSavedSelectedId:J

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mBackKey:Z

    if-nez v0, :cond_1

    .line 488
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 489
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 490
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mBackKey:Z

    .line 492
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 493
    return-void
.end method

.method protected setAdapter()V
    .locals 3

    .prologue
    .line 496
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "setAdapter()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v0, Lcom/sec/android/app/fm/RecordedFileListActivity$6;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/android/app/fm/RecordedFileListActivity$6;-><init>(Lcom/sec/android/app/fm/RecordedFileListActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    .line 519
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 520
    return-void
.end method

.method protected setOnItemClickListener()V
    .locals 2

    .prologue
    .line 523
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "setOnItemClickListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mNormalListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RecordedFileListActivity;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 525
    return-void
.end method

.method protected setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 528
    sget-object v0, Lcom/sec/android/app/fm/RecordedFileListActivity;->TAG:Ljava/lang/String;

    const-string v1, "setOnItemClickListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 530
    return-void
.end method
