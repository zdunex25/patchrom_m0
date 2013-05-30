.class Lcom/sec/android/app/fm/MainActivity$37;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverSDCard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6273
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x2f

    const/4 v7, 0x0

    .line 6276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6277
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6298
    :cond_0
    :goto_0
    return-void

    .line 6278
    :cond_1
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6279
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/fm/MainActivity;->access$7500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-boolean v5, v5, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v5, :cond_0

    .line 6280
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/fm/MainActivity;->access$7500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 6281
    .local v3, pos:I
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/fm/MainActivity;->access$7500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6282
    .local v2, filePath:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 6283
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6284
    const-string v5, "mounted"

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v6}, Lcom/sec/android/app/fm/MainActivity;->access$7600(Lcom/sec/android/app/fm/MainActivity;)Landroid/os/storage/StorageManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6285
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V
    invoke-static {v5}, Lcom/sec/android/app/fm/MainActivity;->access$7100(Lcom/sec/android/app/fm/MainActivity;)V

    .line 6287
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity$37;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v6, "SettingsPreference"

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 6288
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6289
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6290
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 6293
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6294
    const-string v5, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6295
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6296
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0
.end method
