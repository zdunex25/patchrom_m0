.class Lcom/android/updater/ListFilesActivity$5$1;
.super Ljava/lang/Object;
.source "ListFilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ListFilesActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/updater/ListFilesActivity$5;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$selectedOpts:[Z


# direct methods
.method constructor <init>(Lcom/android/updater/ListFilesActivity$5;Ljava/io/File;[ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/ListFilesActivity$5$1;->this$1:Lcom/android/updater/ListFilesActivity$5;

    iput-object p2, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$selectedOpts:[Z

    iput-object p4, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$ctx:Landroid/content/Context;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 246
    :try_start_0
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 249
    .local v3, p:Ljava/lang/Process;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 250
    .local v2, os:Ljava/io/DataOutputStream;
    const-string v5, "rm -f /cache/recovery/command\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 251
    const-string v5, "rm -f /cache/recovery/extendedcommand\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 257
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sony"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$selectedOpts:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 259
    const-string v5, "echo \'format(\"/data\");\' >> /cache/recovery/extendedcommand\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$selectedOpts:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_1

    .line 262
    const-string v5, "echo \'format(\"/cache\");\' >> /cache/recovery/extendedcommand\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 265
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "echo \'install_zip(\"/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/updater/Utils;->getRcvrySdPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/OTA-Updater/download/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\");\' >> /cache/recovery/extendedcommand\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 277
    :goto_0
    const-string v5, "sync\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/android/updater/Utils;->getRebootCmd()Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, rebootCmd:Ljava/lang/String;
    const-string v5, "$$NULL$$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 281
    const-string v5, ".sh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sh "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 288
    :cond_2
    :goto_1
    const-string v5, "sync\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 289
    const-string v5, "exit\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 291
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 292
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$ctx:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string v6, "recovery"

    invoke-virtual {v5, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 296
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #os:Ljava/io/DataOutputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #rebootCmd:Ljava/lang/String;
    :goto_2
    return-void

    .line 267
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    .restart local v3       #p:Ljava/lang/Process;
    :cond_3
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$selectedOpts:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_4

    .line 268
    const-string v5, "echo \'--wipe_data\' >> /cache/recovery/command\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 270
    :cond_4
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$5$1;->val$selectedOpts:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_5

    .line 271
    const-string v5, "echo \'--wipe_cache\' >> /cache/recovery/command\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 274
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "echo \'--update_package=/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/updater/Utils;->getRcvrySdPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/OTA-Updater/download/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' >> /cache/recovery/command\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 293
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #os:Ljava/io/DataOutputStream;
    .end local v3           #p:Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #rebootCmd:Ljava/lang/String;
    :cond_6
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
