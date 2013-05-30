.class public Lcom/miui/osb/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private final MENU_ABOUT:I

.field private final MENU_HELP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/osb/MainActivity;->MENU_ABOUT:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/osb/MainActivity;->MENU_HELP:I

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/miui/osb/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/miui/osb/MainActivity;->terminateApp()V

    return-void
.end method

.method private terminateApp()V
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quadrant Booster INFO: TERMINATING APP!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Bye Bye!"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->finish()V

    .line 273
    return-void
.end method

.method private warningQuitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 251
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 256
    const v1, 0x104000a

    .line 257
    new-instance v2, Lcom/miui/osb/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/osb/MainActivity$1;-><init>(Lcom/miui/osb/MainActivity;)V

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public checkCurrentStatus()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public crLogE(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V
    .locals 3
    .parameter "comRes"
    .parameter "msg"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Quadrant Booster ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    const-string v2, "\n | [stdout]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    iget-object v2, p1, Lcom/miui/osb/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    const-string v2, "\n | [stderr]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    iget-object v2, p1, Lcom/miui/osb/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method public crLogI(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V
    .locals 3
    .parameter "comRes"
    .parameter "msg"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Quadrant Booster INFO: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    const-string v2, "\n | [stdout]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    iget-object v2, p1, Lcom/miui/osb/ShellCommand$CommandResult;->stdout:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string v2, "\n | [stderr]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    iget-object v2, p1, Lcom/miui/osb/ShellCommand$CommandResult;->stderr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public createShowMenuAbout()V
    .locals 5

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "About Dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, ""

    .line 69
    .local v0, adErr:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/miui/osb/AboutDialog;->create(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 70
    .local v1, buildAbout:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #buildAbout:Landroid/app/AlertDialog;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 73
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public createShowMenuAboutView(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "About Dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, ""

    .line 83
    .local v0, adErr:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/miui/osb/AboutDialog;->create(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v1

    .line 84
    .local v1, buildAbout:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #buildAbout:Landroid/app/AlertDialog;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 87
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public createShowMenuHelp()V
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Help Dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v2, ""

    .line 97
    .local v2, helpErr:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/miui/osb/HelpDialog;->create(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 98
    .local v0, buildHelp:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0           #buildHelp:Landroid/app/AlertDialog;
    :goto_0
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 102
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public disableMSC(Landroid/view/View;)V
    .locals 11
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, chk_1:Z
    const/4 v1, 0x0

    .line 182
    .local v1, chk_2:Z
    const-string v6, "echo \'\' > /data/local.prop"

    .line 183
    .local v6, cmd_p1:Ljava/lang/String;
    const-string v7, "reboot"

    .line 188
    .local v7, cmd_p2:Ljava/lang/String;
    new-instance v4, Lcom/miui/osb/ShellCommand;

    invoke-direct {v4}, Lcom/miui/osb/ShellCommand;-><init>()V

    .line 189
    .local v4, cmdCheckQuadAdv:Lcom/miui/osb/ShellCommand;
    iget-object v8, v4, Lcom/miui/osb/ShellCommand;->su:Lcom/miui/osb/ShellCommand$SH;

    invoke-virtual {v8, v6}, Lcom/miui/osb/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/miui/osb/ShellCommand$CommandResult;

    move-result-object v5

    .line 190
    .local v5, cmdCheckQuadAdvRes:Lcom/miui/osb/ShellCommand$CommandResult;
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 191
    const-string v9, "disabling MSC mode"

    .line 190
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v5}, Lcom/miui/osb/ShellCommand$CommandResult;->success()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 193
    const-string v8, "SUCCESS"

    invoke-virtual {p0, v5, v8}, Lcom/miui/osb/MainActivity;->crLogI(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    .line 199
    :goto_0
    new-instance v2, Lcom/miui/osb/ShellCommand;

    invoke-direct {v2}, Lcom/miui/osb/ShellCommand;-><init>()V

    .line 200
    .local v2, cmdCheckQuadAda:Lcom/miui/osb/ShellCommand;
    iget-object v8, v2, Lcom/miui/osb/ShellCommand;->su:Lcom/miui/osb/ShellCommand$SH;

    invoke-virtual {v8, v7}, Lcom/miui/osb/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/miui/osb/ShellCommand$CommandResult;

    move-result-object v3

    .line 201
    .local v3, cmdCheckQuadAdaRes:Lcom/miui/osb/ShellCommand$CommandResult;
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 202
    const-string v9, "disabling MSC mode"

    .line 201
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v5}, Lcom/miui/osb/ShellCommand$CommandResult;->success()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 204
    const-string v8, "SUCCESS"

    invoke-virtual {p0, v3, v8}, Lcom/miui/osb/MainActivity;->crLogI(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x1

    .line 212
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Disabled"

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 219
    :goto_2
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->checkCurrentStatus()V

    .line 220
    return-void

    .line 196
    .end local v2           #cmdCheckQuadAda:Lcom/miui/osb/ShellCommand;
    .end local v3           #cmdCheckQuadAdaRes:Lcom/miui/osb/ShellCommand$CommandResult;
    :cond_0
    const-string v8, "FAILED"

    invoke-virtual {p0, v5, v8}, Lcom/miui/osb/MainActivity;->crLogE(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .restart local v2       #cmdCheckQuadAda:Lcom/miui/osb/ShellCommand;
    .restart local v3       #cmdCheckQuadAdaRes:Lcom/miui/osb/ShellCommand$CommandResult;
    :cond_1
    const-string v8, "FAILED"

    invoke-virtual {p0, v3, v8}, Lcom/miui/osb/MainActivity;->crLogE(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "FAILED!!!"

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public enableMSC(Landroid/view/View;)V
    .locals 11
    .parameter "view"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, chk_1:Z
    const/4 v1, 0x0

    .line 137
    .local v1, chk_2:Z
    const-string v6, "echo \'qemu.hw.mainkeys=0\' > /data/local.prop"

    .line 138
    .local v6, cmd_p1:Ljava/lang/String;
    const-string v7, "reboot"

    .line 143
    .local v7, cmd_p2:Ljava/lang/String;
    new-instance v2, Lcom/miui/osb/ShellCommand;

    invoke-direct {v2}, Lcom/miui/osb/ShellCommand;-><init>()V

    .line 144
    .local v2, cmdCheckQuadAdv:Lcom/miui/osb/ShellCommand;
    iget-object v8, v2, Lcom/miui/osb/ShellCommand;->su:Lcom/miui/osb/ShellCommand$SH;

    invoke-virtual {v8, v6}, Lcom/miui/osb/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/miui/osb/ShellCommand$CommandResult;

    move-result-object v3

    .line 145
    .local v3, cmdCheckQuadAdvRes:Lcom/miui/osb/ShellCommand$CommandResult;
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 146
    const-string v9, "Disabling USB"

    .line 145
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v3}, Lcom/miui/osb/ShellCommand$CommandResult;->success()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    const-string v8, "SUCCESS"

    invoke-virtual {p0, v3, v8}, Lcom/miui/osb/MainActivity;->crLogI(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    .line 155
    :goto_0
    new-instance v4, Lcom/miui/osb/ShellCommand;

    invoke-direct {v4}, Lcom/miui/osb/ShellCommand;-><init>()V

    .line 156
    .local v4, cmdCheckQuadStd:Lcom/miui/osb/ShellCommand;
    iget-object v8, v4, Lcom/miui/osb/ShellCommand;->su:Lcom/miui/osb/ShellCommand$SH;

    invoke-virtual {v8, v7}, Lcom/miui/osb/ShellCommand$SH;->runWaitFor(Ljava/lang/String;)Lcom/miui/osb/ShellCommand$CommandResult;

    move-result-object v5

    .line 157
    .local v5, cmdCheckQuadStdRes:Lcom/miui/osb/ShellCommand$CommandResult;
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 158
    const-string v9, "enabling MSC mode"

    .line 157
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v5}, Lcom/miui/osb/ShellCommand$CommandResult;->success()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 160
    const-string v8, "SUCCESS"

    invoke-virtual {p0, v5, v8}, Lcom/miui/osb/MainActivity;->crLogI(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x1

    .line 167
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Enabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 171
    :cond_0
    return-void

    .line 151
    .end local v4           #cmdCheckQuadStd:Lcom/miui/osb/ShellCommand;
    .end local v5           #cmdCheckQuadStdRes:Lcom/miui/osb/ShellCommand$CommandResult;
    :cond_1
    const-string v8, "FAILED"

    invoke-virtual {p0, v3, v8}, Lcom/miui/osb/MainActivity;->crLogE(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .restart local v4       #cmdCheckQuadStd:Lcom/miui/osb/ShellCommand;
    .restart local v5       #cmdCheckQuadStdRes:Lcom/miui/osb/ShellCommand$CommandResult;
    :cond_2
    const-string v8, "FAILED"

    invoke-virtual {p0, v5, v8}, Lcom/miui/osb/MainActivity;->crLogE(Lcom/miui/osb/ShellCommand$CommandResult;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/miui/osb/MainActivity;->setContentView(I)V

    .line 125
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->createShowMenuAbout()V

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/osb/MainActivity;->createShowMenuHelp()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
