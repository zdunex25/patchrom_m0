.class public Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "DormantModeCustomListDel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;
    }
.end annotation


# static fields
.field private static mItem_done:Landroid/view/MenuItem;

.field private static mlistView:Landroid/widget/ListView;

.field private static selected_id:I


# instance fields
.field private mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->selected_id:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->selected_id:I

    return p0
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 260
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const v1, 0x7f02008d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 265
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public customlistdelete()V
    .locals 9

    .prologue
    .line 275
    sget-object v7, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 277
    .local v5, selectedItem:[J
    array-length v7, v5

    if-eqz v7, :cond_1

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v6, selection:Ljava/lang/StringBuffer;
    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 285
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-wide v7, v5, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 287
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 291
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 293
    :cond_0
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v4, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "dormant"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "custom_list"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 300
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "sec_custom_dormant_contact"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 301
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 302
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 318
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 307
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v2       #i:I
    .restart local v4       #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #selection:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 310
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 312
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #e:Landroid/content/OperationApplicationException;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #i:I
    :cond_2
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x1020002

    const/4 v4, -0x1

    .line 48
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 51
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 52
    new-instance v2, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;

    invoke-direct {v2}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;-><init>()V

    .line 53
    .local v2, list:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 56
    .end local v2           #list:Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const-string v3, "selected_id"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->selected_id:I

    .line 59
    const-string v3, "selected_id"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 198
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 199
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 200
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f12

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    .line 202
    sget-object v1, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const v2, 0x7f09079c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 203
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090125

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 205
    iput-object p1, p0, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->mMenu:Landroid/view/Menu;

    .line 207
    invoke-static {}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 208
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 247
    :goto_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 236
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->finish()V

    goto :goto_1

    .line 239
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->customlistdelete()V

    .line 240
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->finish()V

    goto :goto_1

    .line 243
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->setResult(I)V

    .line 244
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->finish()V

    goto :goto_0

    .line 233
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b03a2 -> :sswitch_2
        0x7f0b03a3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 214
    invoke-virtual {p0}, Lcom/android/OriginalSettings/dormantmode/DormantModeCustomListDel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 216
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x28a

    if-gt v3, v4, :cond_0

    .line 218
    const v3, 0x7f0b03a3

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 219
    .local v2, doneMenuItem:Landroid/view/MenuItem;
    const v3, 0x7f0b03a2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 220
    .local v0, cancelMenuItem:Landroid/view/MenuItem;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    .line 221
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 222
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 228
    .end local v0           #cancelMenuItem:Landroid/view/MenuItem;
    .end local v2           #doneMenuItem:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return v5

    .line 223
    .restart local v0       #cancelMenuItem:Landroid/view/MenuItem;
    .restart local v2       #doneMenuItem:Landroid/view/MenuItem;
    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 224
    const v3, 0x7f02008b

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 225
    const v3, 0x7f02008d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
