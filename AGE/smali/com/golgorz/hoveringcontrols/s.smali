.class Lcom/golgorz/hoveringcontrols/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RUNNING NEWRUNABLE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->b(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->e(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->f(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-byte v0, v0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->g(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-boolean v0, v0, Lcom/golgorz/hoveringcontrols/MyService;->a:Z

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget v1, v1, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget v1, v1, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    add-int/lit8 v1, v1, -0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "comando:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "su"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "input keyevent 4"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v4}, Lcom/golgorz/hoveringcontrols/MyService;->b(Lcom/golgorz/hoveringcontrols/MyService;I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v4}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v5}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v1

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-byte v1, v1, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    if-eqz v1, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ONE SLIDERRRR"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "empty"

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "silenceCall"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v5}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->l(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "silenceAlarm"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->b(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v4}, Lcom/golgorz/hoveringcontrols/MyService;->b(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->m(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->n(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v1

    if-ne v1, v3, :cond_d

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-byte v1, v1, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    if-eqz v1, :cond_d

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TWO SLIDERRRRS"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "screenoffUnlock"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->o(Lcom/golgorz/hoveringcontrols/MyService;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->p(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autoBrowser"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->q(Lcom/golgorz/hoveringcontrols/MyService;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cameralauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PicFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fstop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autoGallery"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PicFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v5}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v4}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->r(Lcom/golgorz/hoveringcontrols/MyService;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-byte v0, v0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/s;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "More than 2 slides is for future updates :P"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method