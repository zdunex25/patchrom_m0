.class Lcom/sec/android/app/fm/DeleteFileActivity$6;
.super Landroid/widget/CursorAdapter;
.source "DeleteFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/DeleteFileActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "v"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 390
    const v6, 0x7f07007d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 391
    .local v5, name:Landroid/widget/TextView;
    const-string v6, "title"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v6, 0x7f07007e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 394
    .local v1, date:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    const-string v7, "date_modified"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/DeleteFileActivity;->getDateFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const v6, 0x7f07007f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 397
    .local v2, duration:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    const-string v7, "duration"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/fm/DeleteFileActivity;->getTimeFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const v6, 0x7f070080

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 401
    .local v0, checkBox:Landroid/widget/CheckBox;
    const-string v6, "_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 402
    .local v3, id:J
    const-string v6, "_data"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 404
    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    #getter for: Lcom/sec/android/app/fm/DeleteFileActivity;->mSeletedItems:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/sec/android/app/fm/DeleteFileActivity;->access$100(Lcom/sec/android/app/fm/DeleteFileActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 406
    iget-object v6, p0, Lcom/sec/android/app/fm/DeleteFileActivity$6;->this$0:Lcom/sec/android/app/fm/DeleteFileActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/fm/DeleteFileActivity;->invalidateOptionsMenu()V

    .line 407
    return-void

    .line 404
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 411
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 412
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000f

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 413
    .local v2, v:Landroid/view/View;
    const v3, 0x7f070080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 414
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 415
    return-object v2
.end method
