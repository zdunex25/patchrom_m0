.class Lcom/golgorz/hoveringcontrols/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/high16 v4, 0x7000

    const/16 v13, 0x57

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v11}, Lcom/golgorz/hoveringcontrols/MyService;->e(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-boolean v0, v0, Lcom/golgorz/hoveringcontrols/MyService;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "screenoffInfo"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->v(Lcom/golgorz/hoveringcontrols/MyService;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "vibrate"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/MyService;->o(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "autoBrowser"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->w(Lcom/golgorz/hoveringcontrols/MyService;)V

    goto :goto_0

    :cond_3
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cameralauncher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PicFolder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fstop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autoGallery"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PicFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v12}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v11}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vlc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spotify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "winamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mxtech.videoplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxmpz.audioplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_7
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "musicControls"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v8, v9

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v10, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    move-wide v3, v1

    move v5, v11

    move v6, v13

    move v7, v11

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0, v10, v9}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v10, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    move-wide v3, v1

    move v5, v12

    move v6, v13

    move v7, v11

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0, v10, v9}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_8

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v8, v0

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x57

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x57

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vlc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spotify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "winamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mxtech.videoplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxmpz.audioplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_c
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "musicControls"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_2
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v8, v9

    :cond_d
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.music.musicservicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "command"

    const-string v4, "next"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v3, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    move-wide v3, v1

    move v5, v11

    move v6, v13

    move v7, v11

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0, v8, v9}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    move-wide v3, v1

    move v5, v12

    move v6, v13

    move v7, v11

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0, v8, v9}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_d

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v5}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v8, v0

    goto :goto_2

    :cond_f
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x57

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x57

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->t(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pauseCamera"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Single hover normal"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "target"

    invoke-virtual {v0, v1, v11}, Lcom/golgorz/hoveringcontrols/MyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "singleActive"

    invoke-interface {v1, v0, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "slideonceactivity"

    const-string v2, "empty"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "slideonce"

    const-string v3, "empty"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "empty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0, v3}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "slideoncename"

    const-string v4, "Not Set"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "slideonce"

    const-string v3, "empty"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v2, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "slideoncename"

    const-string v4, "Not Set"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_13
    const-string v0, "slideonce"

    const-string v2, "empty"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GolgorzPreviousAPP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->u(Lcom/golgorz/hoveringcontrols/MyService;)V

    :try_start_4
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/golgorz/hoveringcontrols/MyService;->a(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v1}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Could not open previous app"

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_14
    const-string v0, "slideonce"

    const-string v2, "empty"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "el raro:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "slideonce"

    const-string v4, "empty"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "slideonce"

    const-string v3, "empty"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v9

    :goto_4
    :try_start_7
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x7000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "slideonce"

    const-string v4, "empty"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0, v2}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "launcher?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "pkinfo error"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    :cond_15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "single active is empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->x(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "carousel"

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "carousel open:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->x(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->y(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_8
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->x(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/MyService;->y(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Opening "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->z(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->y(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_6
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->y(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->y(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->x(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v11}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;I)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v9

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/n;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "no app found, plz report to developer"

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "carrousel is empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
