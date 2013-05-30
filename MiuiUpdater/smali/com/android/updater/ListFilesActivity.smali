.class public Lcom/android/updater/ListFilesActivity;
.super Landroid/app/ListActivity;
.source "ListFilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final DL_PATH_LEN:I


# instance fields
.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/updater/Config;->DL_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/updater/ListFilesActivity;->DL_PATH_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/ListFilesActivity;->fileList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/updater/ListFilesActivity;->pathList:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/android/updater/ListFilesActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/updater/ListFilesActivity;->pruneFiles(J)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/updater/ListFilesActivity;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/updater/ListFilesActivity;->listFiles(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/updater/ListFilesActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/updater/ListFilesActivity;->pathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected static installFileDialog(Landroid/content/Context;Ljava/io/File;)V
    .locals 8
    .parameter "ctx"
    .parameter "file"

    .prologue
    const/4 v5, 0x1

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 212
    .local v2, r:Landroid/content/res/Resources;
    const v4, 0x7f050001

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, installOpts:[Ljava/lang/String;
    array-length v4, v1

    new-array v3, v4, [Z

    .line 214
    .local v3, selectedOpts:[Z
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aput-boolean v5, v3, v4

    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f06000f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-static {}, Lcom/android/updater/Utils;->getNoflash()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    const v4, 0x7f060012

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 221
    const v4, 0x104000a

    new-instance v5, Lcom/android/updater/ListFilesActivity$3;

    invoke-direct {v5}, Lcom/android/updater/ListFilesActivity$3;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 315
    return-void

    .line 228
    :cond_0
    new-instance v4, Lcom/android/updater/ListFilesActivity$4;

    invoke-direct {v4, v3}, Lcom/android/updater/ListFilesActivity$4;-><init>([Z)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    const v4, 0x7f060010

    new-instance v5, Lcom/android/updater/ListFilesActivity$5;

    invoke-direct {v5, p0, p1, v3}, Lcom/android/updater/ListFilesActivity$5;-><init>(Landroid/content/Context;Ljava/io/File;[Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    const v4, 0x7f06000d

    new-instance v5, Lcom/android/updater/ListFilesActivity$6;

    invoke-direct {v5}, Lcom/android/updater/ListFilesActivity$6;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private listFiles(Ljava/io/File;)V
    .locals 7
    .parameter "dir"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/android/updater/ListFilesActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v2, p0, Lcom/android/updater/ListFilesActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/updater/ListFilesActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 53
    :cond_1
    aget-object v0, v1, v2

    .line 54
    .local v0, file:Ljava/io/File;
    iget-object v4, p0, Lcom/android/updater/ListFilesActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/updater/ListFilesActivity;->DL_PATH_LEN:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v4, p0, Lcom/android/updater/ListFilesActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private processItem(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 143
    const/high16 v1, 0x7f05

    new-instance v2, Lcom/android/updater/ListFilesActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/android/updater/ListFilesActivity$2;-><init>(Lcom/android/updater/ListFilesActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void
.end method

.method private pruneFiles(J)V
    .locals 12
    .parameter "maxAge"

    .prologue
    const/4 v6, 0x0

    .line 318
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/updater/Config;->DL_PATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 321
    .local v2, files:[Ljava/io/File;
    const/4 v4, 0x1

    .line 322
    .local v4, success:Z
    array-length v7, v2

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 329
    if-eqz v4, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/updater/ListFilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f060025

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 334
    :goto_1
    return-void

    .line 322
    :cond_0
    aget-object v1, v2, v5

    .line 323
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 324
    .local v3, lastmodified:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v4, 0x0

    .line 322
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 332
    .end local v1           #f:Ljava/io/File;
    .end local v3           #lastmodified:Ljava/lang/Long;
    :cond_2
    invoke-virtual {p0}, Lcom/android/updater/ListFilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f060026

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget-object v1, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, extState:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    :cond_1
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f06002d

    :goto_0
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 68
    invoke-virtual {p0}, Lcom/android/updater/ListFilesActivity;->finish()V

    .line 71
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    const/high16 v2, 0x7f03

    const v3, 0x7f090001

    iget-object v4, p0, Lcom/android/updater/ListFilesActivity;->fileList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/android/updater/ListFilesActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    .line 72
    iget-object v1, p0, Lcom/android/updater/ListFilesActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/android/updater/ListFilesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    sget-object v1, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/updater/ListFilesActivity;->listFiles(Ljava/io/File;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/updater/ListFilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/updater/ListFilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    return-void

    .line 67
    :cond_3
    const v1, 0x7f06002e

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/updater/ListFilesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 82
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/updater/ListFilesActivity;->processItem(I)V

    .line 132
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/updater/ListFilesActivity;->processItem(I)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    return v3

    .line 90
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 93
    const v1, 0x7f050002

    new-instance v2, Lcom/android/updater/ListFilesActivity$1;

    invoke-direct {v2, p0}, Lcom/android/updater/ListFilesActivity$1;-><init>(Lcom/android/updater/ListFilesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 123
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    sget-object v1, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/updater/ListFilesActivity;->listFiles(Ljava/io/File;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x7f090002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
